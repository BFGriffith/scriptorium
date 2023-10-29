#!/bin/bash
# ./repono.sh
# automate routine backups to a git repository
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢
# Libre ©️opyLeft: released under GNU Affero General Public License, version 3
# https://www.gnu.org/licenses/agpl-3.0.en.html
# ❨⟧⊠⊠⊠⊠⊠⟦❩≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡≡⪢

USER=git config --get user.name#USER='username'
# ⬐hardcode to routinely backup files to a specific repository
REPO_PATH=$1:-"/home/'${USER}'/path/to/repo"}
COMMIT_TIMESTAMP=`date +'%Y-%m-%d %H:%M:%S %Z'`
DATELOG=`date +'%Y-%m-%d-%H-%M-%S'`
LOG="/tmp/${DATELOG}.txt"

GIT=`which git`
NOTIFY=`which notify-send`

# proceed only if “REPO_PATH” is a valid git repository
# if [ ! -d ${REPO}/.git ]; then
if ! git -C $REPO rev-parse --is-inside-work-tree &>/dev/null; then
  echo "${REPO} is not a valid git repository! Aborting…" >> ${LOG}
  exit 1
else
  echo "${REPO} is a valid git repository! Proceeding…" >> ${LOG}
fi

# interactively prompt for source directory
read -p "Enter source directory PATH (relative or absolute): " SOURCE_DIR
# confirm source directory and repository PATHs
read -p "Source directory: $SOURCE_DIR,\x0a Repository path: $REPO_PATH. Confirm (Y/N)? " CONFIRM

# prompt before copying files from source directory to repository directory
if [ "$CONFIRM" == "Y" ] || [ "$CONFIRM" == "y" ]; then
    cp -r "$SOURCE_DIR"/* "$REPO_PATH"
    # add all files and commit with current date and time
    cd $REPO_PATH
    ${GIT} add --all . >> ${LOG}
    git commit -m "Automated commit by ${USER} on ${DATELOG}" >> ${LOG}
    # write commit message to log file
    "Committing at ${COMMIT_TIMESTAMP}" >> ${LOG}
    # force push changes to remote master branch
    ${GIT} push -f origin master >> ${LOG}
else
    echo "Operation cancelled."
    exit 1
fi

