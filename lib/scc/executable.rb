# frozen_string_literal: true

require 'English'
require_relative 'executable_not_found_exception'

module SCC
  # Executable
  class Executable
    def initialize(source_code_dir = '.')
      unless found?
        raise(
          ExecutableNotFoundException,
          "Check if the SCC executable[#{bin_name}] is in system PATH environment variable"
        )
      end

      @source_code_dir = source_code_dir
    end

    # &:execute
    # raises SCC::ExecutableNotFoundException if some problem happened
    # at SCC binary detection
    def execute
      # TODO: raise exception on execution error
      output = `#{bin_name} --no-complexity --no-cocomo -f cloc-yaml #{@source_code_dir}`
      yield output
      output
    end

    private

    def bin_name
      'scc'
    end

    def found?
      `#{bin_name} --version`
      $CHILD_STATUS.success?
    rescue Errno::ENOENT
      false
    end
  end
end
