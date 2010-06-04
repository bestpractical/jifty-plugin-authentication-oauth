use inc::Module::Install;

name       'Jifty-Plugin-Authentication-OAuth';
all_from   'lib/Jifty/Plugin/Authentication/OAuth.pm';
repository 'http://github.com/bestpractical/jifty-plugin-authentication-oauth';

requires('Jifty');
requires('Net::OAuth');

WriteAll;

