BEGIN {
    wage_sum = 0
    employee_count = 0
}

NR != 1 {
    wage_sum += $3
    employee_count++
}

END {
    printf("Avg wage is %.2f\n", wage_sum / employee_count)
}
