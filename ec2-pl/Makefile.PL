use inc::Module::Install;

name 'Amazon-EC2';
version '2009.07.15';
author 'Amazon AWS';
perl_version '5.8.5';
license 'Apache License 2.0';
 
requires 'Carp';
requires 'Cwd';
requires 'Crypt::SSLeay';
requires 'Digest::SHA';
requires 'File::Basename';
requires 'File::LibXSLT';
requires 'LWP::UserAgent';
requires 'Test::More' => '0.92';
requires 'Time::HiRes';
requires 'URI';
requires 'URI::Escape';
requires 'XML::LibXML';
requires 'XML::Simple';
 
WriteAll;
