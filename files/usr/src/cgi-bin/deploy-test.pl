#!/usr/bin/perl
use strict;
use CGI;

my $h = new CGI;

print $h->header;
print $h->start_html( -title   => 'Test script' );

print $h->h1("Perl deployment test");
print $h->p("cgi-bin handler");
print $h->p("Test id [".time().".$$.".int(rand(999999))."]");
print $h->end_html;





