#$Id$
print "1..1\n";
$test = 1;

use HTTP::SimpleLinkChecker;

my $code = &HTTP::SimpleLinkChecker::check_link(
	'http://www.perl.org');

print $code == 200 ? "ok $test" : "not ok $test";

