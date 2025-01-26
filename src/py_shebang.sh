#! /bin/sh
for py in src/**/*.py; do
    [ "$(sed -n '/^#!\/usr\/bin\/env python3/!p;q' "$py")" ] && sed '1i\
#!/usr/bin/env python3
' "$py" >"$py.py" && mv "$py.py" "$py"
done
