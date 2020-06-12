# frozen_string_literal: true

module BenchmarkToys
	## Define toys for benchmark
	class Template
		include Toys::Template

		on_expand do
			tool :benchmark do
				include :exec, exit_on_nonzero_status: true

				desc 'Benchmark code'

				def run
					require 'example_file'

					ExampleFile.new("#{context_directory}/benchmark/main.example.rb")
						.actualize_regular_file

					sh 'ruby benchmark/main.rb'
				end
			end

			alias_tool :bench, :benchmark
		end
	end
end
