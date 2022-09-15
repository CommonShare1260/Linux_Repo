#!/bin/bash

total_ram () {
  local totalram=$(cat /proc/meminfo | grep -i 'memtotal' | grep -o '[[:digit:]]*')
  echo $totalram
}

ram_size=$(total_ram)
echo "Total RAM: $ram_size kB"

avail_ram () {
  local availram=$(cat /proc/meminfo | grep -i 'memavailable' | grep -o '[[:digit:]]*')
  echo $availram
}

ram_avail_size=$(avail_ram)
echo "Available RAM: $ram_avail_size kB"
