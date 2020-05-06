BEGIN { count = 0 }
NR != 1 {
    namestr = sprintf("%s%s", $1, $2)
    if (namestr in names) {
        count++
    }

    names[namestr] = namestr
}
END { printf("There are %d shared names.\n", count) }
