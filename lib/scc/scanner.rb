# frozen_string_literal: true

require 'English'
require_relative 'scanner_result'
require_relative 'executable'

module SCC
  # Scanner
  class Scanner
    # raises SCC::ExecutableNotFoundException if some problem happened
    # at SCC binary detection
    def initialize(source_code_dir = '.')
      scc = Executable.new source_code_dir
      scc.execute do |program_output|
        @results = ScannerResult.parse program_output
      end
    end

    def languages
      @results.map(&:language)
    end
  end
end
