#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
# Since this file is in .git/hooks, modify script_dir
SCRIPT_DIR="$SCRIPT_DIR/../../scripts"

source "$SCRIPT_DIR/utils/common.sh"

echo -e "Exporting PIP Packages to 'requirements.txt'"

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV || fail "Could not activate env"

pip freeze > "$ROOT_DIR/requirements.txt" || fail "Could not output pip packages to 'requirements.txt'"

# Ensure requirements is added to this commit since we may have modified it
git add "$ROOT_DIR/requirements.txt"

echo -e "Packages Successfully Exported\n"