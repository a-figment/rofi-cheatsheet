
# Stores menu entries for rofi-cheatsheet.sh 

# Items copied to clipboard
ITEMS=(
    #PDF
    "qpdf --empty --pages in.pdf m-n -- out.pdf"
    "pdfgrep -i -l -r \"keyword\" ."
    "pdfgrep -i -n \"keyword\" article.pdf"
    #SEARCH
    "grep -v \"keyword\" file"
    "grep -l \"keyword\" *files"
    "find . -iname \"*fname*\""
    #SYSTEM
    "inxi -zv8" 
    "lsblk -f"
    "fdisk -l"
    "ls -d */"
    "du -h * | awk '\$1 ~ /G\$/ &amp;&amp; substr(\$1,0,length(\$1)-1) > M { print \$0 }'"
    "xinput --list-props ID"
    "xinput --set-prop ID 'libinput Accel Speed' -1"
    #CALCULATION
    "paste --delimiter=\" \" in* > out"
    "sed \"${NUM}q;d\" in > out"
    "sed -n '1~2!p' in > out"
    "sed -i -e 's/\s\+/\\\n/g' file"
    "sed -i '/^[[:space:]]*$/d' file"
)

# Item descriptions
DESCRIPTIONS=(
    # PDF 
    "Extract page(s) m to n of in.pdf to out.pdf"
    "Search for keyword, return unique documents only"
    "Search for keyword in article, return page numbers"
    # SEARCH
    "Inverted grep" 
    "Return only filenames which match the keyword"
    "Case insensitive filename search"
    # SYSTEM
    "System specifications" 
    "List block devices (major:minor, UUID, mountpoint)"
    "Partition table" 
    "List directories"
    "List directories larger then M Gb"
    "List the properties of device ID"
    "Example configuration of a devices properties"
    # CALCULATION
    "Concatenate matrices by column"
    "Get the n-th row of a matrix data file"
    "Get odd numbered rows of a matrix data file"
    "Convert spaces to newlines"
    "Remove white spaces"
)
