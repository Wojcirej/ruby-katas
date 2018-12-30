#!/usr/bin/env ruby
require './lib/kata_generator'
require './lib/kata_spec_file_template_generator'
require './lib/generator_logger'

kata_name = ARGV.shift
arguments = ARGV
spec_file_template_generator = KataSpecFileTemplateGenerator.new(kata_name, arguments)
KataGenerator.call(kata_name, spec_file_template_generator, GeneratorLogger.new, arguments)
