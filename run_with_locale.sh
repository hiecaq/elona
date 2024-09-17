export GUIX_LOCPATH=/gnu/store/$(ls -F /gnu/store | grep 'elona-locales.*/' | tail -n 1)lib/locale
export LOCPATH=$GUIX_LOCPATH

export LC_COLLATE=$1
export LC_CTYPE=$1

export WINEPREFIX=$(pwd)/prefix

wine elona/elona.exe
