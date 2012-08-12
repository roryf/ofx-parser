# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ofx-parser}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Andrew A. Smith}]
  s.date = %q{2011-06-15}
  s.description = %q{== DESCRIPTION:

ofx-parser is a ruby library to parse a realistic subset of the lengthy OFX 1.x specification.

== FEATURES/PROBLEMS:

* Reads OFX responses - i.e. those downloaded from financial institutions and
  puts it into a usable object graph.
* Supports the 3 main message sets: banking, credit card and investment
  accounts, as well as the required 'sign on' set.
* Knows about SIC codes - if your institution provides them.
  See http://www.eeoc.gov/stats/jobpat/siccodes.html
* Monetary amounts can be retrieved either as a raw string, or in pennies.
* Supports OFX timestamps.}
  s.email = %q{andy@tinnedfruit.org}
  s.extra_rdoc_files = [%q{History.txt}, %q{Manifest.txt}, %q{README.txt}]
  s.files = [%q{History.txt}, %q{Manifest.txt}, %q{README.txt}, %q{Rakefile}, %q{lib/mcc.rb}, %q{lib/ofx-parser.rb}, %q{lib/ofx.rb}, %q{test/fixtures/banking.ofx.sgml}, %q{test/fixtures/creditcard.ofx.sgml}, %q{test/fixtures/list.ofx.sgml}, %q{test/fixtures/malformed_header.ofx.sgml}, %q{test/fixtures/with_spaces.ofx.sgml}, %q{test/test_ofx_parser.rb}, %q{.gemtest}]
  s.homepage = %q{http://ofx-parser.rubyforge.org/}
  s.rdoc_options = [%q{--main}, %q{README.txt}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{ofx-parser}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{ofx-parser is a ruby library for parsing OFX 1.x data.}
  s.test_files = [%q{test/test_ofx_parser.rb}]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0.6"])
      s.add_development_dependency(%q<hoe>, [">= 2.9.4"])
    else
      s.add_dependency(%q<hpricot>, [">= 0.6"])
      s.add_dependency(%q<hoe>, [">= 2.9.4"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0.6"])
    s.add_dependency(%q<hoe>, [">= 2.9.4"])
  end
end
