#$Id$
print "1..2\n";
$test = 1;

use HTTP::SimpleLinkChecker;

my $code = &HTTP::SimpleLinkChecker::check_link(
	'http://groups.google.com/groups?as_uauthors=comdog@panix.com');

print $code == 403 ? "ok $test" : "not ok $test";

my $ua = &HTTP::SimpleLinkChecker::user_agent;
$ua->agent( "Mozilla/4.0 (compatible; MSIE 5.0; Mac_PowerPC)" );

$code = &HTTP::SimpleLinkChecker::check_link(
	'http://groups.google.com/groups?as_uauthors=comdog@panix.com');

print $code == 200 ? "ok $test" : "not ok $test";


