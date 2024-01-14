# frozen_string_literal: true

require_relative 'lib/benchmark_toys/version'

Gem::Specification.new do |spec|
	spec.name          = 'benchmark_toys'
	spec.version       = BenchmarkToys::VERSION
	spec.authors       = ['Alexander Popov']
	spec.email         = ['alex.wayfer@gmail.com']

	spec.summary       = 'Toys template for benchmarks.'
	spec.description   = <<~DESC
		Toys template for benchmarks.
	DESC
	spec.license = 'MIT'

	github_uri = "https://github.com/AlexWayfer/#{spec.name}"

	spec.homepage = github_uri

	spec.metadata = {
		'bug_tracker_uri' => "#{github_uri}/issues",
		'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
		'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
		'homepage_uri' => spec.homepage,
		'rubygems_mfa_required' => 'true',
		'source_code_uri' => github_uri,
		'wiki_uri' => "#{github_uri}/wiki"
	}

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 2.7', '< 4'

	spec.add_runtime_dependency 'benchmark-ips', '~> 2.8'
	spec.add_runtime_dependency 'benchmark-memory', '~> 0.2.0'
	spec.add_runtime_dependency 'example_file', '~> 0.5.0'
	spec.add_runtime_dependency 'toys-core', '~> 0.15.3'
end
