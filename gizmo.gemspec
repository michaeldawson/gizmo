# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gizmo}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luke Cunningham"]
  s.date = %q{2010-11-01}
  s.default_executable = %q{gizmo}
  s.description = %q{gizmo is a simple page model testing framework used and sponsored by 'realestate.com.au'. The aim of the project is to DRY up your testing assertions by abstracting code that defines your page resulting in a consistent, easy to maintain test suit}
  s.email = %q{luke@icaruswings.com}
  s.executables = ["gizmo"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "autotest/discover.rb",
     "bin/gizmo",
     "features/github_example.feature",
     "features/step_definitions/github_example_steps.rb",
     "features/support/env.rb",
     "features/support/pages/page_with_github_repo_details.rb",
     "features/support/pages/page_with_github_search.rb",
     "features/support/pages/page_with_github_search_results.rb",
     "features/support/patches/capybara.rb",
     "gizmo.gemspec",
     "lib/gizmo.rb",
     "lib/gizmo/configuration.rb",
     "lib/gizmo/helpers.rb",
     "lib/gizmo/page.rb",
     "lib/gizmo/page_mixin.rb",
     "lib/gizmo/templates.rb",
     "lib/gizmo/templates/page_mixin.erb",
     "spec/github_site_example_spec.rb",
     "spec/gizmo/configuration_spec.rb",
     "spec/gizmo/helpers_spec.rb",
     "spec/gizmo/page_mixin_spec.rb",
     "spec/gizmo/page_spec.rb",
     "spec/pages/page_with_test_mixin_stuff.rb",
     "spec/rspec.opts",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/icaruswings/gizmo}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{simple page model testing framework}
  s.test_files = [
    "spec/github_site_example_spec.rb",
     "spec/gizmo/configuration_spec.rb",
     "spec/gizmo/helpers_spec.rb",
     "spec/gizmo/page_mixin_spec.rb",
     "spec/gizmo/page_spec.rb",
     "spec/pages/page_with_test_mixin_stuff.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.4.1"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_runtime_dependency(%q<tilt>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<config_newton>, [">= 0.1.1"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<autotest>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<webrat>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.4.1"])
      s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
      s.add_dependency(%q<tilt>, [">= 1.0.1"])
      s.add_dependency(%q<config_newton>, [">= 0.1.1"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<autotest>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<webrat>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.4.1"])
    s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
    s.add_dependency(%q<tilt>, [">= 1.0.1"])
    s.add_dependency(%q<config_newton>, [">= 0.1.1"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<autotest>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<webrat>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
  end
end
