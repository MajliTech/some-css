#!/bin/bash
#            Some CSS: https://github.com/MajliTech/some-css            #
#                     Copyright (C) 2024 MajliTech                      #
#                                                                       #
# This program is free software: you can redistribute it and/or modify  #
# it under the terms of the GNU General Public License as published by  #
#   the Free Software Foundation, either version 3 of the License, or   #
#                  (at your option) any later version.                  #
#    This program is distributed in the hope that it will be useful,    #
#    but WITHOUT ANY WARRANTY; without even the implied warranty of     #
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the     #
#             GNU General Public License for more details.              #
#   You should have received a copy of the GNU General Public License   #
# along with this program.  If not, see <https://www.gnu.org/licenses/>.#
license_header=$(
cat <<- "EOF"
/*            Some CSS: https://github.com/MajliTech/some-css            */
/*                     Copyright (C) 2024 (author)                      */
/*                                                                       */
/* This program is free software: you can redistribute it and/or modify  */
/* it under the terms of the GNU General Public License as published by  */
/*   the Free Software Foundation, either version 3 of the License, or   */
/*                  (at your option) any later version.                  */
/*    This program is distributed in the hope that it will be useful,    */
/*    but WITHOUT ANY WARRANTY; without even the implied warranty of     */
/*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the     */
/*             GNU General Public License for more details.              */
/*   You should have received a copy of the GNU General Public License   */
/* along with this program.  If not, see <https://www.gnu.org/licenses/>.*/
EOF
)
echo "some-css minify 	Copyright (C) 2024 MajliTech
This Bash script comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under certain conditions;
check the LICENSE file or https://www.gnu.org/licenses/
"
mkdir -p min-css
for file in css/*.css; do
  filename=$(basename "$file" .css)
  minified_css="\n\n$(minify $file)"
  author=$(grep -RoP 'Copyright \(C\) 2024 (\K[^ ]+)' "$file" | sed 's/^[0-9]*://')
  header_authored=$(echo "$license_header" | sed "s/(author)/$author/")
  printf "$header_authored$minified_css" > min-css/$filename.min.css
  echo "MINIFIED: '$file' > 'min-css/$filename.min.css'"
done
