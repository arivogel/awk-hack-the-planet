BEGIN {
    earliest_year = 200000
    earliest_month = 12
    earliest_day = 31
}
NR != 1 {
    split($7,time,"/");
    if (time[1] < earliest_year) {
        earliest_year = time[1]
        earliest_month = time[2]
        earliest_day = time[3]
    }
    else if (time[1] == earliest_year &&
         time[2] < earliest_month) {
        earliest_year = time[1]
        earliest_month = time[2]
        earliest_day = time[3]
    }
    else if (time[1] == earliest_year &&
         time[2] == earliest_month &&
         time[3] < earliest_day) {
        earliest_year = time[1]
        earliest_month = time[2]
        earliest_day = time[3]
    }
}

END {
    printf("Earliest hired employee hired on %s/%s/%s\n", earliest_year, earliest_month, earliest_day)
}
