#!perl

package testit;

use warnings;
use strict;

use lib '.';

use Prog 1.220;
use Test::More tests=>3;


sub printenv {
 for (keys %ENV){
  print qq($_ ==> $ENV{$_}) ;
 }
 print "\n";
}


sub main {
 my $p = Prog->new;
 my $me = 'test_it.pl';

 $p->run(444);
 ok($p->{state} eq 'running'
  && $p->{speed} eq 444
 , 'Testing Prog_run');

 print "$me:Walk now!\n";

 $p->walk(111);
 ok($p->{state} eq 'walking'
  && $p->{speed} eq 111
 , 'Testing Prog_walk');

 ok($p->getdepversion eq '0.09', 'Testing Prog_getdepversion');

 print "$me:exiting _test_it_main\n";

}


main;
printenv;
1;

