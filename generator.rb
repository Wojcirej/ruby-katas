#!/usr/bin/env ruby
require './lib/kata_generator'
require './lib/generator_logger'
require 'pry'
kata_name = ARGV.shift
arguments = ARGV
KataGenerator.call(kata_name, GeneratorLogger.new, arguments)
