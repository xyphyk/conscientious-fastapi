#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
source "$SCRIPT_DIR/utils/common.sh"

echo -e "\nAdding Git Pre-Commit Hook"

# Check if '.git' folder exists
[ -d "$ROOT_DIR/.git" ] || fail "'.git' directory not found in root folder"
ln -sf "$ROOT_DIR/scripts/pre-commit.sh" "$ROOT_DIR/.git/hooks/pre-commit"

echo -e "\nSetting Up Python Env"

# Create new env
conda create --name $CONDA_ENV python=$PYTHON_VERSION -y || fail "Could not create env"

# Activate created env
eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV || fail "Could not activate env"

# Install packages to new env
pip install -r requirements.txt || fail "Could not install packages to env"

echo -e "\nConscientious Setup Complete"