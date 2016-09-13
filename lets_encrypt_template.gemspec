# coding: utf-8
require_relative 'lib/lets_encrypt_template/version'

Gem::Specification.new do |spec|
  spec.name          = 'lets_encrypt_template'
  spec.version       = LetsEncryptTemplate::VERSION
  spec.authors       = ['Jesse Bowes']
  spec.email         = ['jessebs@gmail.com']

  spec.summary       = 'Setup a new domain on a server using letsencrypt.'
  spec.homepage      = 'https://github.com/jessebs/lets_encrypt_template'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'erubis', '~> 2.7'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
end
