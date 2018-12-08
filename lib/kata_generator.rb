require 'colorize'
class KataGenerator

  attr_reader :kata_name

  def initialize(kata_name)
    @kata_name = kata_name
  end

  def self.call(kata_name)
    new(kata_name).call
  end

  def call
    create_kata_root_directory
    generate_kata_read_me_file
    create_kata_lib_directory
    generate_kata_definition_file
    create_kata_spec_directory
  end

  private

  def create_kata_root_directory
    Dir.mkdir("katas/#{kata_name}")
    puts("create".colorize(:green))
  end

  def generate_kata_read_me_file
    File.open("katas/#{kata_name}/README.md", "w+") do |f|
      f.write(kata_read_me_template)
    end
  end

  def kata_read_me_template
    read_me = <<EOF
# #{kata_name}

### Description
<!-- Add description of the kata here -->

### Examples
<!-- Add examples/test cases here -->

### Link to kata on codewars.com
EOF
  return read_me
  end

  def create_kata_lib_directory
    Dir.mkdir("katas/#{kata_name}/lib")
  end

  def generate_kata_definition_file
    File.open("katas/#{kata_name}/lib/#{kata_name}.rb", "w+") do |f|
      f.write(kata_definition_file_template)
    end
  end

  def kata_definition_file_template
    kata_file_template = <<EOF
def #{kata_name}
  #TODO write your definition of method here...
end
EOF
  end

  def generate_kata_spec_file
    File.open("spec/katas/#{kata_name}_spec.rb", "w+") do |file|
      file.write(kata_spec_file_template)
    end
  end

  def kata_spec_file_template
    spec_file = <<EOF
require './katas/#{kata_name}/lib/#{kata_name}'

RSpec.describe ##{kata_name} do
  subject { #{kata_name} }


end
EOF
  end
end
