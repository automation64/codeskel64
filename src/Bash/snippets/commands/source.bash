# Load external bash script
source "${BASH_SOURCE[0]%/*}/LIBRARY_NAME" || { echo "Error: unable to load LIBRARY_NAME" && exit 1; }

# Alternative using readlink
source "$(readlink -f "${BASH_SOURCE[0]%/*}")/LIBRARY_NAME" || { echo "Error: unable to load LIBRARY_NAME" && exit 1; }

# Pure bash alternative
source "$(cd -- "${BASH_SOURCE[0]%/*}" && pwd)/LIBRARY_NAME" || { echo "Error: unable to load LIBRARY_NAME" && exit 1; }
