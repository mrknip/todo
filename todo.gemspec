# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "todobasic"
  spec.version       = '1.0'
  spec.authors       = ["Drew Johnson"]
  spec.email         = ["drew_johnson@hotmail.co.uk"]
  spec.summary       = %q{The most basic of basic to-do lists}
  spec.description   = %q{Longer description}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/list.rb', 'lib/task.rb', 'lib/ui.rb']
  spec.executables   = ['bin/todo']
  spec.test_files    = ['tests/test_todo.rb']
  spec.require_paths = ["lib"]
end