## SCC Ruby
This project provides a simple wrapper to use the [scc] program at ruby code.

# Requirements
* ruby 2.7
* scc binary version 2.12.0. Go to the [scc releases] project page and download it.

# Instalation
First download the scc binary and then place it at /usr/local/bin(unix-like) or other folder
from you S.O. that is in PATH system environment variable.

# Usage

```ruby
require 'scc'

scc_scanner = SCC::Scanner.new 'my-source-code-dir'
scc_scanner.languages.each { |l| puts l}
```

[scc]: <https://github.com/boyter/scc>
[scc releases]: <https://github.com/boyter/scc/releases>