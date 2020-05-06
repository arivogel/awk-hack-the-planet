BEGIN {
    highest_paid = ""
    max_sal = 0
}

$3 ~ /[0-9]+.*/ && $3 >= max_sal {
    highest_paid = $0
    max_sal = $3
}

END { printf("%s\n", highest_paid) }

