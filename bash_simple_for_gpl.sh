#!/bin/bash
#
# {one line to give the program's name and a brief idea of what it does.}
# Copyright (C) 2018  Robert Pilstål
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program. If not, see <http://www.gnu.org/licenses/>.
set -e;

# Number of settings options
NUMSETTINGS=1;
# If you require a target list, of minimum 1, otherwise NUMSETTINGS
let NUMREQUIRED=${NUMSETTINGS}+1;
# Start of list
let LISTSTART=${NUMSETTINGS}+1;

# Set default values
if [ -z ${ENV1} ]; then
  ENV1=default;
fi

# I/O-check and help text
if [ $# -lt ${NUMREQUIRED} ]; then
  echo "USAGE: [ENV1=${ENV1}] $0 <opt1> <target1> [<target2> [...]]";
  echo "";
  echo " OPTIONS:";
  echo "  opt1 - description...               ... no longer than this!";
  echo "  target2 - description...            ... no longer than this!";
  echo "";
  echo " ENVIRONMENT:";
  echo "  ENV1 - description...               ... no longer than this!";
  echo "";
  echo " EXAMPLES:";
  echo "  # Run on three files, with ENV1=1";
  echo "  ENV1=1 $0 file1 file2 file3 > output.txt";
  echo "";
  echo "$(basename $0 .sh)  Copyright (C) 2018  Robert Pilstål;"
  echo "This program comes with ABSOLUTELY NO WARRANTY.";
  echo "This is free software, and you are welcome to redistribute it";
  echo "under certain conditions; see supplied General Public License.";
  exit 0;
fi;

# Parse settings
opt1=$1;
targetlist=${@:$LISTSTART};

# Loop over arguments
for target in ${targetlist}; do
  # Do your deed
  echo ${target};
done;
