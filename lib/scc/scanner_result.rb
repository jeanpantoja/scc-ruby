# frozen_string_literal: true

require 'yaml'

module SCC
  # ScannerResult
  class ScannerResult
    attr_reader :language

    def initialize(language)
      @language = language
    end

    def self.parse(text)
      text ||= '{}'

      scan_results = []
      scan_report = YAML.safe_load(text)
      scan_report.delete 'header'
      scan_report.delete 'SUM'

      scan_report.each do |_, technology_metrics|
        name = technology_metrics['name']
        scan_results << new(name) unless name.nil?
      end

      scan_results
    end
  end
end
