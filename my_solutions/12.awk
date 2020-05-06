BEGIN { 
    max_hours = 0
    worker = ""
}
$4 ~ /[0-9]+.*/ && $4 > max_hours {
    max_hours = $4
    worker = sprintf("%s, %s", $2, $1)
}

END {
    printf("%s\n", worker)
}
