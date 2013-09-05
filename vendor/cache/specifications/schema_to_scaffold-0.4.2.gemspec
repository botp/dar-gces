# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "schema_to_scaffold"
  s.version = "0.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jo\u{e3}o Soares", "Humberto Pinto"]
  s.date = "2013-05-22"
  s.description = "  Command line app which parses a schema.rb file obtained from your rails repo or by running rake:schema:dump\n"
  s.email = ["jsoaresgeral@gmail.com", "hlsp999@gmail.com"]
  s.executables = ["scaffold"]
  s.files = ["bin/scaffold"]
  s.homepage = "http://github.com/frenesim/schema_to_scaffold"
  s.licenses = ["MIT"]
  s.post_install_message = "Thanks for installing!"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "Generate rails scaffold script from a schema.rb file."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.2.1"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.2.1"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.2.1"])
  end
end
