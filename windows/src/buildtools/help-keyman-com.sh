#!/bin/bash

#
# Prevents 'clear' on exit of mingw64 bash shell
#
SHLVL=0

#
# Allows us to check for existence of subfolders in help/
#
shopt -s nullglob

#
# In this script we update the git repo and copy the Keyman Desktop
# documentation over. This should be run after a full build.
#

#
# These are passed via environment:
#
# HELP_KEYMAN_COM = the home of the help.keyman.com repository
# MAJOR_VERSION = 10.0, 11.0, etc
#
# That repo must have push to origin configured and logged in
#

if [ -z ${HELP_KEYMAN_COM+x} ]; then
  >&2 echo "Not uploading documentation: must set HELP_KEYMAN_COM in environment."
  exit 1
fi

if [ -z ${MAJOR_VERSION+x} ]; then
  >&2 echo "Not uploading documentation: must set MAJOR_VERSION in environment."
  exit 1
fi

if [ ! -d "$HELP_KEYMAN_COM/products/desktop/$MAJOR_VERSION/docs" ]; then
  >&2 echo "HELP_KEYMAN_COM path ($HELP_KEYMAN_COM) does not appear to be valid."
  exit 1
fi

#
# Environment
#

KEYMANROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/.."

# . "$KEYBOARDROOT/servervars.sh"
# . "$KEYBOARDROOT/resources/util.sh"

echo "Uploading Keyman Desktop documentation to help.keyman.com"

#
# Uploading Keyman Desktop documentation
#

##
## Upload documentation updates to help.keyman.com
##
function upload_keyman_desktop_help {
    
  #
  # Note: release/packages which contain multiple keyboards should also have the keyboards
  # as separate entries in the release/ folder. This means we may have a combined package
  # help file as well as a per-keyboard help file. It is acceptable in this situation to 
  # make the combined help file link to the per-keyboard help files.
  #
    
  #
  # Copy all files in that folder, according to the current 
  # version of the keyboard, to help.keyman.com/keyboard/<id>/<version>/
  #
  
  local helppath=$KEYMANROOT/../bin/help/php/desktop
  
  #
  # Look for help source folder.
  #
  
  if [[ ! -d "$helppath" ]]; then
    echo "${t_yel}Warning: The source path $helppath does not exist${t_end}"
    return 0
  fi
  
  local dstpath="$HELP_KEYMAN_COM/products/desktop/$MAJOR_VERSION/docs"

  if [[ ! -d "$dstpath" ]]; then
    echo "${t_yel}Warning: The destination path $dstpath does not exist${t_end}"
    return 0
  fi
  
  rm -rf "$dstpath/*"
  cp -r "$helppath"/* "$dstpath/"
}

#
# Commit and push to the help.keyman.com repo
#

function commit_and_push {
  echo "Committing and pushing updated Keyman Desktop documentation"
  
  pushd $HELP_KEYMAN_COM
  git config user.name "Keyman Build Server"
  git config user.email "keyman-server@users.noreply.github.com"
  git add products/desktop/$MAJOR_VERSION/docs || return 1
  git diff --cached --no-ext-diff --quiet --exit-code && {
    # if no changes then don't do anything.
    echo "No changes to commit"
    popd
    return 0
  }
  
  echo "changes added to cache...>>>"
  git commit -m "Keyman Desktop help deployment (automatic)" || return 1
  git push origin master || return 1
  popd
  
  echo "Push to help.keyman.com complete"
  
  return 0
}

#
# Main
#

upload_keyman_desktop_help || exit 1
commit_and_push || exit 1
