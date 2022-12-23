# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "cnab240/bancoabc/version"

Gem::Specification.new do |s|
  s.name        = "cnab240_bancoabc"
  s.version     = CNAB240::BancoABC::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Danilo Carolino"]
  s.email       = ["danilo.carolino@qflash.com.br"]
  s.homepage    = "https://github.com/Quasar-Flash/cnab240_bancoabc"
  s.summary     = "CNAB240 BancoABC lib"
  s.description = "CNAB240 BancoABC layout library"
  s.required_ruby_version = ">= 2.7"
  s.files = Dir["{lib}/**/*"] + ["LICENSE", "Rakefile", "README.md", "CHANGELOG.md"]
  s.license = "MIT"

  s.metadata["changelog_uri"] = "https://github.com/Quasar-Flash/cnab240_bancoabc/blob/master/CHANGELOG.md"
  s.metadata["source_code_uri"] = "https://github.com/Quasar-Flash/cnab240_bancoabc"
  s.metadata["bug_tracker_uri"] = "https://github.com/Quasar-Flash/cnab240_bancoabc/issues"

  s.add_development_dependency "bundler", "~> 2.3", ">= 2.3.0"
  s.add_development_dependency "pry", "~> 0.14.1"
  s.add_development_dependency "rake", "~> 13.0.6", ">= 10.0.0"
  s.add_development_dependency "rspec", "~> 3.12.0"
  s.add_development_dependency "rubocop", "~> 1.41.1"
  s.add_development_dependency "rubocop-i18n", "~> 3.0.0"
  s.add_development_dependency "rubocop-packaging", "~> 0.5.1"
  s.add_development_dependency "rubocop-performance", "~> 1.15.0"
  s.add_development_dependency "rubocop-rake", "~> 0.6.0"
  s.add_development_dependency "rubocop-rspec", "~> 2.16.0"
  s.add_development_dependency "simplecov", "~> 0.21.2"
  s.metadata["rubygems_mfa_required"] = "true"
end
