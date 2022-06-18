ROOT_DIR="$SCRIPT_DIR/.."

function fail {
    printf 'FAILED: %s\n' "$1" >&2 ## Send message to stderr.
    exit "${2-1}" ## Return a code specified by $2, or 1 by default.
}

set -o allexport
source "$ROOT_DIR/conscientious.cfg"
set +o allexport