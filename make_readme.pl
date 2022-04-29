use strict;
use warnings;

my @files = <*.png>;

open (my $out_fh, ">", "README.md") or die $!;

print $out_fh "\#\# Seaborn palettes (n = 60)\n\n";

foreach my $png (sort @files) {
    my $name = $png;
    $name =~ s/\.png//;
    print $out_fh "$name\n![$name]($png)\n\n";
}