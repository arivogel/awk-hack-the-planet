BEGIN { num_spanners = 0 }
$6 ~ /^MechanicalEngineer$/ { num_spanners += 1 }
END { printf "%s mechanical engineers\n", num_spanners}
