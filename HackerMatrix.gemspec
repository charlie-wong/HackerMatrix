# frozen_string_literal: true

Gem::Specification.new do |spec|
    spec.name          = "HackerMatrix"
    spec.version       = "0.0.1"
    spec.license       = "MIT"
    spec.authors       = ["Charlie WONG"]
    spec.email         = ["charlie-wong@foxmail.com"]
    spec.summary       = "HackerMatrix is a theme for Jekyll."
    spec.homepage      = "https://gkide.github.io/HackerMatrix"

    spec.files         = `git ls-files -z`.split("\x0").select do |f|
        f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i)
    end

    # https://pages.github.com/versions/
    spec.platform = Gem::Platform::RUBY
    spec.add_runtime_dependency 'jekyll', '~> 3.7'
    spec.add_runtime_dependency 'jemoji', '~> 0.9'
    spec.add_runtime_dependency 'jekyll-feed', '~> 0.9'
    spec.add_runtime_dependency 'jekyll-sitemap', '~> 1.2'
    spec.add_runtime_dependency 'jekyll-seo-tag', '~> 2.4'
    spec.add_runtime_dependency 'jekyll-mentions', '~> 1.3'
    spec.add_runtime_dependency 'jekyll-github-metadata', '~> 2.9'
	
    spec.add_development_dependency "rake", "~> 12.0"
    spec.add_development_dependency "bundler", "~> 1.16"
    spec.add_development_dependency 'rubocop', '~> 0.50'
    spec.add_development_dependency 'html-proofer', '~> 3.0'
    spec.add_development_dependency 'w3c_validators', '~> 1.3'
end
