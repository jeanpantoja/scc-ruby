## SCC Ruby
This project provides a simple wrapper to use the [scc] program at ruby code.

# Requirements
* ruby 2.7
* scc binary version 2.12.0. Go to the [scc releases] project page and download it.

# Instalation
First download the scc binary and then place it at /usr/local/bin(unix-like) or other folder
from you S.O. that is in PATH system environment variable.

To install the scc gem just place the current line at your Gemfile and __edit the value
of tag argument__.
```
gem 'scc', git: 'https://github.com/jeanpantoja/scc-ruby.git', tag: 'desired-version-tag'
```
# Usage

```ruby
require 'scc'

scc_scanner = SCC::Scanner.new 'my-source-code-dir'
scc_scanner.languages.each { |l| puts l}
```

[scc]: <https://github.com/boyter/scc>
[scc releases]: <https://github.com/boyter/scc/releases>