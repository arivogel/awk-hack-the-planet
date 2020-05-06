NR != 1 {
    printf("%s\t", NR - 1)
}

{
for (i = 3; i <= NF; i++)
    printf("%s\t", $i)
printf("\n")
}
