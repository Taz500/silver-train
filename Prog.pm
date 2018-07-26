
package Prog;

use strict;
use warnings;

use Cookie::Baker 0.09;

our $VERSION=1.220;


sub new {
 my ($c) = @_;
 my $i = {runner=>'dog', speed=>220, state=>''};
 return bless $i, $c;
}

sub run {
 my ($self, $s)=@_;
 if(!$s){
  die "run:Error, speed 0 or not defined";
 }
 $self->{speed}=$s;
 $self->{state}='running';
}

sub walk {
 my ($self, $s)=@_;
 if(!$s){
  die "walk:Error, speed 0 or not defined";
 }
 $self->{speed}=$s;
 $self->{state}='walking';
}


sub getdepversion {
 return $Cookie::Baker::VERSION;
}


1;

