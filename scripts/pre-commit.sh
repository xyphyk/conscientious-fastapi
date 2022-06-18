#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
source "$SCRIPT_DIR/utils/common.sh"

echo -e "Exporting PIP Packages to 'requirements.txt'"

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV || fail "Could not activate env"

pip freeze > requirements.txt || fail "Could not output pip packages to 'requirements.txt'"
echo -e "Packages Successfully Exported\n"