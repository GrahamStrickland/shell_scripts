#! /bin/sh
for hs in src/**/*.hs; do
    [ "$(sed -n '/^module LPFP where/!p;q' "$hs")" ] && sed '1i\
module LPFP where
' "$hs" >"$hs.hs" && mv "$hs.hs" "$hs"
done
