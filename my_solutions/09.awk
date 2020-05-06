BEGIN {
    sum = 0
}
$5 == "Seattle" { sum += $3 }
END {
    printf("Seattle office costs $%.2f / hour.\n", sum)
}
