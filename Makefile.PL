# -*- perl -*-
# copied in ./inc
# use inc::Module::Install;

perl_version    5.008001;

name		'perl-ldap';
module_name	'Prog';
abstract	'Some trivial Project';

check_nmake;

requires	'Cookie::Baker' => 0.09;

test_requires	'Test::More';


auto_install_now;

WriteAll	sign => 1;
