# -*- encoding: utf-8 -*-
# stub: rspec-expectations 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-expectations".freeze
  s.version = "2.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Chelimsky".freeze, "Chad Humphries".freeze]
  s.date = "2011-10-16"
  s.description = "rspec expectations (should[_not] and matchers)".freeze
  s.email = "dchelimsky@gmail.com;chad.humphries@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/rspec/rspec-expectations".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "rspec-expectations-2.7.0".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.1.2"])
    else
      s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.1.2"])
    end
  else
    s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.1.2"])
  end
end
