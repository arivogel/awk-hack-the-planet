BEGIN {
    num_locations = 0
    loc_list
}

!($5 in loc_list) && $5 != "Office" {
    loc_list[$5] = $5
    num_locations++
    print $5
}

END {
    printf("%d offices exist.\n", num_locations)
}
