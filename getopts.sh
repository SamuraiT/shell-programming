#! /bin/sh
echo $*

FLAG=FALSE
VALUE=
OPT=
echo $#
while getopts fv: OPT
do
  echo opt: $OPT
  echo optid: $OPTIND
  case $OPT in
    f) FLAG=TRUE
      ;;
    v) VALUE=$OPTARG
      ;;
    \?) echo "Usage: $0 [-f] [-v value]" 1>&2
      exit 1
      ;;
  esac
done
shift `expr $OPTIND - 1`

echo the value: $1
