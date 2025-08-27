for hs in src/*.hs; do
    echo $hs
    vim -c 'execute "silent !echo " . &fileencoding | q' $hs
done
for hs in src/**/*.hs; do
    echo $hs
    vim -c 'execute "silent !echo " . &fileencoding | q' $hs
done
