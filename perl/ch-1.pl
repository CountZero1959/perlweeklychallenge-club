#!/usr/env/perl
# Task 1 Challenge -1 Solution by CountZero1959
# -1
use Modern::Perl qw/2019/;
use constant::tiny;
use constant DEBUG => 0;

my $column = 'A';
my %convert_to_excel;
my %convert_from_excel;
for ( 1 .. 16_384 ) {
    $convert_to_excel{$_} = $column;
    $convert_from_excel{ $column++ } = $_;
}
if (DEBUG) {
    print "$_->$convert_to_excel{$_} "
      for sort { $a <=> $b } keys %convert_to_excel;
    say '';
    print "$_->$convert_from_excel{$_} "
      for sort { $convert_from_excel{$a} <=> $convert_from_excel{$b} }
      keys %convert_from_excel;
}

while (<DATA>) {
    chomp;
    if (/^\d+$/) { say "Input Number: $_\nOutput: $convert_to_excel{$_}\n" }
    elsif (/^\D+$/) {
        say "Input Column Name: $_\nOutput: $convert_from_excel{$_}\n";
    }
    else { say "'$_' confused me.\n" }
}

__DATA__
28
AD
D3
