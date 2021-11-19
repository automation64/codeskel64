#!/bin/bash

cd "$APLATFORM64_BUILD" || exit
/usr/bin/rm -f serdigital64-*gz

cd "$APLATFORM64_ROOT" || exit

for collection in $(cd "$APLATFORM64_COLLECTIONS" || exit; ls; ); do
	ansible-galaxy collection build "$APLATFORM64_COLLECTIONS/$collection"
done

/usr/bin/mv serdigital64-*-*.tar.gz "$APLATFORM64_BUILD"

cd "$APLATFORM64_BUILD" || exit 1

for collection in serdigital64-*-*.tar.gz; do
	/usr/bin/mv -f "$collection" "${collection%-*}.tar.gz"
done