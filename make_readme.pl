use strict;
use warnings;

my @files = <images/*.png>;

open (my $out_fh, ">", "README.md") or die $!;

print $out_fh "\#\# Seaborn palettes (n = 60)\n\n";

foreach my $png (sort { "\L$a" cmp "\L$b" }  @files) {
    my $name = $png;
    $name =~ s/\.png//;
    $name =~ s/images\///;
    print $out_fh "$name\n![$name]($png)\n\n";
}