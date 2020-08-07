# frozen_string_literal: true

files = Dir.glob(
  File.join('lib', 'scc', '*.rb')
)

files << 'lib/scc.rb'

Gem::Specification.new do |s|
  s.name = 'scc'
  s.version = '0.0.1'
  s.date = '2020-08-06'
  s.summary = 'scc is a simple gem to call scc golang program from ruby'
  s.files = files
  s.require_paths = ['lib']
  s.author = 'Jean Carlos Sales Pantoja'
end
