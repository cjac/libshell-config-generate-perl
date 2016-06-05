requires "Shell::Guess" => "0.02";
requires "perl" => "5.008001";

on 'test' => sub {
  requires "Test::More" => "0.94";
  requires "perl" => "5.008001";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "perl" => "5.008001";
};

on 'develop' => sub {
  requires "Test::CPAN::Changes" => "0";
  requires "Test::EOL" => "0";
  requires "Test::Fixme" => "0.07";
  requires "Test::More" => "0.94";
  requires "Test::NoTabs" => "0";
  requires "Test::Pod" => "0";
  requires "Test::Pod::Coverage" => "0";
  requires "Test::Pod::Spelling::CommonMistakes" => "0";
  requires "Test::Spelling" => "0";
  requires "Test::Strict" => "0";
  requires "YAML" => "0";
};

on 'develop' => sub {
  recommends "YAML::XS" => "0";
};
