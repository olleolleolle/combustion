# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = "combustion"
  s.version     = "1.1.0"
  s.authors     = ["Pat Allan"]
  s.email       = ["pat@freelancing-gods.com"]
  s.homepage    = "https://github.com/pat/combustion"
  s.summary     = "Elegant Rails Engine Testing"
  s.description = "Test your Rails Engines without needing a full Rails app"
  s.license     = "MIT"

  s.rubyforge_project = "combustion"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- exe/*`.split("\n").map do |file|
    File.basename(file)
  end
  s.bindir        = "exe"
  s.require_paths = ["lib"]

  s.add_runtime_dependency "activesupport", ">= 3.0.0"
  s.add_runtime_dependency "railties", ">= 3.0.0"
  s.add_runtime_dependency "thor",  ">= 0.14.6"

  s.add_development_dependency "appraisal", "~> 2.1.0"
  s.add_development_dependency "mysql2"
  s.add_development_dependency "pg"
  s.add_development_dependency "rails"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rubocop", "~> 0.68.0"
  s.add_development_dependency "sqlite3"
end
