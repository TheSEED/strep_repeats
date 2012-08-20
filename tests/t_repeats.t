use Test::More;
use Test::Cmd;
use strict;
use Data::Dumper;
use File::Slurp;

my $test = Test::Cmd->new(prog => "$ENV{KB_TOP}/bin/pneumococcal_repeat_annotation");
ok($test, "created pneumococcal_repeat_annotation test object");

my @pneumo_expected = read_file("contigs.repeats.tab");
my @suis_expected = read_file("contigs.suis.repeats.tab");

$test->run(args => "contigs");
print $test->stderr;
ok($? == 0, "run pneumo");

my @diffs;

ok($test->diff_exact(scalar $test->stdout, \@pneumo_expected, \@diffs));
if (@diffs)
{
	print @diffs;
}

my $test = Test::Cmd->new(prog => "$ENV{KB_TOP}/bin/suis_repeat_annotation");
ok($test, "created suis_repeat_annotation test object");

$test->run(args => "contigs");
print $test->stderr;
ok($? == 0, "run suis");

my @diffs;

ok($test->diff_exact(scalar $test->stdout, \@suis_expected, \@diffs));
if (@diffs)
{
	print @diffs;
}

done_testing();