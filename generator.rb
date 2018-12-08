#!/usr/bin/env ruby
require './lib/kata_generator'
require './lib/generator_logger'
KataGenerator.call(ARGV[0], GeneratorLogger.new)
