# shell\_scripts 

Miscellaneous shell scripts

## py\_shebang.sh

Uses sed to find all files in a directory without a shebang `#!/usr/bin/env python3` 
and prepends the shebang line to the file

## hs\_mod.sh

Script to find all Haskell files in the "src" directory and prepend a module
definition to that file. Also outputs the names of all modules to "hs\_mod.txt"
