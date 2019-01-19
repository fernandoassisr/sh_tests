#!/bin/bash
######################################################################
#Copyright (C) 2018  Kris Occhipinti
#https://filmsbykris.com
 
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
 
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
 
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.
######################################################################
 
let start_time="$(date +%s)";
 
function main(){
  echo "Welcome to my timer"
  start_timer
  exit 0
}
 
function start_timer(){
  while [ 1 ]; 
  do
    let current_time="$(date +%s)"
    let seconds=$current_time-$start_time;
 
    echo -en "\r                                        \r"
    printf "Timer: %02d:%02d:%02d:%02d" "$((seconds/86400))" "$((seconds/3600%24))" "$((seconds/60%60))" "$((seconds%60))"
    sleep 1;
  done
}
 
main