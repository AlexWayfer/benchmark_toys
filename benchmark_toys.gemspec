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

	spec.required_ruby_version = '>= 2.5', '< 4'

	source_code_uri = 'https://github.com/AlexWayfer/benchmark_toys'

	spec.homepage = source_code_uri

	spec.metadata['source_code_uri'] = source_code_uri

	spec.metadata['homepage_uri'] = spec.homepage

	spec.metadata['changelog_uri'] =
		'https://github.com/AlexWayfer/benchmark_toys/blob/main/CHANGELOG.md'

	spec.metadata['rubygems_mfa_required'] = 'true'

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.add_runtime_dependency 'benchmark-ips', '~> 2.8'
	spec.add_runtime_dependency 'benchmark-memory', '~> 0.2.0'
	spec.add_runtime_dependency 'example_file', '~> 0.3.1'
	spec.add_runtime_dependency 'toys-core', '~> 0.12.0'

	spec.add_development_dependency 'pry-byebug', '~> 3.9'

	spec.add_development_dependency 'bundler', '~> 2.0'
	spec.add_development_dependency 'gem_toys', '~> 0.11.0'
	spec.add_development_dependency 'toys', '~> 0.12.0'

	spec.add_development_dependency 'bundler-audit', '~> 0.9.0'

	spec.add_development_dependency 'codecov', '~> 0.6.0'
	spec.add_development_dependency 'rspec', '~> 3.9'
	spec.add_development_dependency 'simplecov', '~> 0.21.2'

	spec.add_development_dependency 'rubocop', '~> 1.25.1'
	spec.add_development_dependency 'rubocop-performance', '~> 1.0'
	spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
