lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "modern-resume-theme/version"

Gem::Specification.new do |spec|
  spec.name          = "modern-resume-theme"
  spec.version       = ModernResumeTheme::VERSION
  spec.authors       = ["James Grant"]
  spec.email         = ["sprog31@gmail.com"]

  spec.summary       = "A modern simple static resume template and theme. Powered by Jekyll and GitHub pages."
  spec.homepage      = "https://github.com/sproogen/modern-resume-theme"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.required_ruby_version = '>= 3.0' # Allow newer Ruby

  # Replace github-pages with individual jekyll plugins:
  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "webrick", "~> 1.8" # Required for Jekyll 4.x+

  spec.add_development_dependency "html-proofer", "~> 5.0" # Updated version
end
