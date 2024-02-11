#!/bin/bash
# /*            Some CSS: https://github.com/MajliTech/some-css            */
# /*                     Copyright (C) 2024 MajliTech                      */
# /*                                                                       */
# /* This program is free software: you can redistribute it and/or modify  */
# /* it under the terms of the GNU General Public License as published by  */
# /*   the Free Software Foundation, either version 3 of the License, or   */
# /*                  (at your option) any later version.                  */
# /*    This program is distributed in the hope that it will be useful,    */
# /*    but WITHOUT ANY WARRANTY; without even the implied warranty of     */
# /*     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the     */
# /*             GNU General Public License for more details.              */
# /*   You should have received a copy of the GNU General Public License   */
# /* along with this program.  If not, see <https://www.gnu.org/licenses/>.*/


mkdir -p min-css
for file in css/*.css; do
  filename=$(basename "$file" .css)
  minified_css = "/*            Some CSS: https://github.com/MajliTech/some-css            */
/*                     Copyright (C) 2024 MajliTech                      */
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
/* along with this program.  If not, see <https://www.gnu.org/licenses/>.*/\n\n$(minify $file)"
  echo "Minified '$file' to 'min-css/$filename.min.css'"
done
