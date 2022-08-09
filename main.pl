$celsius = 30;
$fahrenheit = ($celsius * 9 / 5) + 32;
print "$celsius C is $fahrenheit F.\n";  # 30 C is 86 F.


$celsius = 20;
while ($celsius <= 45) {
    $fahrenheit = ($celsius * 9 / 5) + 32;
    print "$celsius C is $fahrenheit F.\n";
    $celsius = $celsius + 5;
}
# 30 C is 86 F.
# 20 C is 68 F.
# 25 C is 77 F.
# 30 C is 86 F.
# 35 C is 95 F.
# 40 C is 104 F.
# 45 C is 113 F.


if ($replay =~ m/^[0-9]+$/) {
    print "only digits\n";
} else {
    print "not only digits\n";
}


print "Enter a temperature in Celsius:\n";
$celsius = <STDIN>;
chomp($celsius);

if ($celsius =~ m/^[-+]?[0-9]+(\.[0-9]*)?$/) {
# if ($celsius =~ m/^[0-9]+$/) {
    $fahrenheit = ($celsius * 9 / 5) + 32;
    # print "$celsius C is $fahrenheit F\n";
    printf "%.2f C is %.2f F\n", $celsius, $fahrenheit;
} else {
    print "Expecting a number, so I don't understand \"$celsius\"\n";
}


print "Enter a temperature (e.g., 32F, 100C):\n";
$input = <STDIN>;
chomp($input);
if ($input =~ m/^([-+]?[0-9]+)([CF])$/) {
    $InputNum = $1;
    $type = $2;

    if ($type eq "C") {
        $celsius = $InputNum;
        $fahrenheit = ($celsius * 9 / 5) + 32;
    } else {
        $fahrenheit = $InputNum;
        $celsius = ($fahrenheit - 32) * 5 / 9;
    }
    printf "%.2f C is %.2f F\n", $celsius, $fahrenheit;
} else {
    print "Expecting a number followed by \"C\" or \"F\",\n";
    print "so I don't understand \"$input\".\n";
}
