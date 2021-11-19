#!/bin/bash

cd "$APLATFORM64_DIST" || exit
/usr/bin/rm -f serdigital64-*gz

cd "$APLATFORM64_ROOT" || exit

for collection in $(cd "$APLATFORM64_COLLECTIONS" || exit; ls; ); do
	ansible-galaxy collection build "$APLATFORM64_COLLECTIONS/$collection"
done

/usr/bin/mv serdigital64-*-*.tar.gz "$APLATFORM64_DIST"
