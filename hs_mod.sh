#! /bin/sh
for hs in src/**/*.hs; do
    filename=$(basename "$hs")
    module=${filename%.*}
    subdir=$(basename $(dirname "$hs"))
    sed "1 s/^.*$/module $subdir.$module where\n/" "$hs" > "$hs.tmp"  && mv "$hs.tmp" "$hs"
    printf "$subdir.$module, "
done > hs_mod.txt
