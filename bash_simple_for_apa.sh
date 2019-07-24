#!/bin/bash
#
# {one line to give the program's name and a brief idea of what it does.}
# Copyright (C) 2017-2019  Robert Pilstål

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
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
  echo "$(basename $0 .sh)  Copyright (C) 2017-2019  Robert Pilstål;"
  echo "This program comes with ABSOLUTELY NO WARRANTY.";
  echo "This is free software, and you are welcome to redistribute it";
  echo "under certain conditions; See the supplied Apache License,";
  echo "Version 2.0 for the specific language governing permissions";
  echo "and limitations under the License.";
  echo "    http://www.apache.org/licenses/LICENSE-2.0";
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
