BEGIN { count = 0 }
$2 == "Portwood" { count += 1 }
END { printf "%s Portwoods\n", count }
