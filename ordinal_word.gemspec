# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ordinal_word"
  spec.version       = '1.0.0'
  spec.author        = "Alexey Kharkin"
  spec.email         = ["alexey.kharkin@gmail.com"]
  spec.summary       = %q{ Converts a number in range 1-99 (e.g. 1) to ordinal word (e.g. first). }
  spec.description   = %q{ Converts a number in range 1-99 (e.g. 1) to ordinal word (e.g. first) in Ruby. }
  spec.license       = "MIT"

  spec.files         = ['lib/ordinal_word.rb']
  spec.test_files    = ['tests/test_ordinal_word.rb']
  spec.require_paths = ["lib"]
end