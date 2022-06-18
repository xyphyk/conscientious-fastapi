#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
source "$SCRIPT_DIR/utils/common.sh"

eval "$(conda shell.bash hook)"
conda activate $CONDA_ENV || fail "Could not activate env"

# Export project defined environment variables
set -o allexport
source "$ROOT_DIR/.env" || fail "no '.env' found in root folder"
set +o allexport

echo "$ROOT_DIR/src/main:app"

uvicorn main:app --port $FASTAPI_PORT --app-dir "$ROOT_DIR/src/"