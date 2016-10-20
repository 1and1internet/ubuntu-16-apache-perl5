# perl5 appliance
---
## /html
  Storage for static content. This is also the default directory for serving content. 
  If you wish to have dynamic content served by default then mod_rewrite is the correct way 
  to manage this. 

  EG, in /var/www/html/.htaccess
```
  RewriteEngine On
  RewriteRule ^$                /perl/handler.pl                      [L]
```

## /cgi-bin
  A standard cgi container. All scripts to be invoked should have the executable bit set

## /perl
  A container for perl scripts running the Apache::Registry perl accelerator
  
  [Further details here] (http://perl.apache.org/docs/2.0/api/ModPerl/Registry.html)

  Scripts in this folder do not require a shebang, nor do they require an executable bit set.
  Only perl scripts can be run from this container.
  Perl scripts *are* interpreted differently from the normal cgi method so it is recommended that you read
  the documentation linked to above if you are not familiar with this method of delivery. 
  
## /cpan
  This folder holds the configuration, and source of any additional modules you wish to install from cpan.
    
  List any cpan modules you wish to have installed in cpan/modules.conf, line seperated.
  An automated process will then install those modules on the next reboot. If a module is already installed then no action is taken.
  Details of that installation process are saved in cpan/autobuild.log and cpan/autoinstall.log.
  
  If you encounter any issues with a particular module then please investigate these logs prior to raising a support ticket.
  
  This system has been tested with the following modules to ensure local library support for the majority of standard cpan modules.
  This is NOT an exhaustive list of modules that are supported but a select few popluar modules chosen for test purposes.
  
  * Acme::Bleach
  * Acme::DRM
  * Apache::Htpasswd
  * App::Netdisco
  * Authen::Simple
  * BerkeleyDB
  * CGI::Cookie
  * Chart::Plot
  * Crypt::OpenSSL::X509
  * Crypt::Random
  * Crypt::Rijndael
  * Crypt::SmbHash
  * Data::Dump
  * DateTime
  * DBD::mysql
  * DBI
  * DBIx::Class::ResultSet
  * Excel::Writer::XLSX
  * Expect
  * File::stat
  * GD
  * Getopt::Long
  * HTTP::Parser
  * HTTP::Response
  * IO::Socket::SSL
  * JSON
  * Log::Log4perl
  * LWP::UserAgent
  * Math::GMP
  * Math::Random
  * Mojolicious
  * Moo
  * Net::FTP
  * Net::SMTP
  * Net::SSH::Perl
  * Net::Telnet
  * PDF::API2
  * Search::Elasticsearch
  * Selenium::Remote::Driver
  * Spreadsheet::ParseExcel
  * Spreadsheet::WriteExcel
  * Task::Kensho
  * Term::ANSIColor
  * Term::ReadKey
  * Test::More
  * Text::CSV
  * Time::HiRes
  * WWW::Mechanize
  * WWW::YouTube::Download
  * XML::LibXSLT
  * XML::Parser
  * XML::Simple
  * XML::Writer
  * YAML::Tiny
  
  All required libraries are present for the above. 
  If you encounter an issue with a module due to missing local libraries, please contact support ( providing details from cpan/autobuild.log ) to request the addition of extra local libraries.
  
  All custom modules are compiled into /var/www/cpan/perl5. This directory is automatically added to @INC by apache.
  
