BEGIN { count = 0 }
$6 ~ /.*Engineer.*/ { count++ }
END { printf("There are %d engineers.\n", count) }
