use strict; use warnings;
BEGIN {
  unless(eval q{ use 5.008001; 1}) {
    print "Perl 5.008001 or better required\n";
    exit;
  }
}
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v6.003.
use strict;
use warnings;

use 5.008001;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Portably generate config for any shell",
  "AUTHOR" => "Graham Ollis <plicease\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Shell-Config-Generate",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.008001",
  "NAME" => "Shell::Config::Generate",
  "PREREQ_PM" => {
    "Shell::Guess" => "0.02"
  },
  "TEST_REQUIRES" => {
    "Test::More" => "0.94"
  },
  "VERSION" => "0.25",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Shell::Guess" => "0.02",
  "Test::More" => "0.94"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
