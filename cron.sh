#!/bin/sh

if [ "$#" -ne 6 ] || [ "${1}" = "--help" ]; then
    echo "----------- HELP GUIDE ----------------------------------------------------------------------------"
    echo ""
    echo "Usage: $0 <minute> <hour> <day_of_month> <month> <day_of_week> <script_path>"
    echo ""
    echo "Parameters:"
    echo "<minute>          : minute when the script will run (0-59 or '*')"
    echo "<hour>            : hour when the script will run (0-23 or '*')"
    echo "<day_of_month>    : day of month when the script will run (1-31 or '*')"
    echo "<month>           : month when the script will run (1-12 or '*')"
    echo "<day_of_week>     : day of week when the script will run (0-6 or '*' where 0 or 7 is Sunday)"
    echo "<script_path>     : path to the script to be executed"
    echo ""
    echo "Example: sh $0 15 20 \"*\" \"*\" \"*\" /home/user/scripts/my_script.sh"
    echo ""
    echo "--------------------------------------------------------------------------------------------------"
    exit 1
fi


minuto=$1
hora=$2
diaDoMes=$3
mes=$4
diaDaSemana=$5
caminho=$6

if [ "$minuto" = "*" ]; then
  minuto="*"
fi
if [ "$hora" = "*" ]; then
  hora="*"
fi
if [ "$diaDoMes" = "*" ]; then
  diaDoMes="*"
fi
if [ "$mes" = "*" ]; then
  mes="*"
fi
if [ "$diaDaSemana" = "*" ]; then
  diaDaSemana="*"
fi

echo "$minuto $hora $diaDoMes $mes $diaDaSemana bash $caminho" > /tmp/crontab.tmp
crontab /tmp/crontab.tmp
rm /tmp/crontab.tmp
