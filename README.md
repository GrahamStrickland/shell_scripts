# shell\_scripts 

Miscellaneous shell scripts

## py\_shebang.sh

Uses sed to find all files in a directory without a shebang `#!/usr/bin/env python3` 
and prepends the shebang line to the file

## hs\_mod.sh

Script to find all Haskell files in the "src" directory and prepend a module
definition to that file. Also outputs the names of all modules to "hs\_mod.txt"

## assignment\_setup.sh

Script to setup a LaTeX template and repo for UNISA assignments. Usage:

```bash
sh ./assignment_setup.sh <subject> <assignment_no> <unique_no> <due_date> <num_questions>
```
