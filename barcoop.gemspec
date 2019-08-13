# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'barcoop/version'

Gem::Specification.new do |spec|
  spec.name = 'barcoop'
  spec.version = Barcoop::VERSION
  spec.authors = ['Sergio Medina']
  spec.email = ['sergio.medina@offerista.com']

  spec.summary = "barcoo's rubocop config and cops"
  spec.description = "barcoo's rubocop config and cops"
  spec.homepage = 'https://github.com/barcoo/barcoop'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop', '~> 0.74.0'#
  spec.add_runtime_dependency 'rubocop-rails', '~> 2.3.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
