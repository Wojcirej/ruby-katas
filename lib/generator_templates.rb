module GeneratorTemplates
  def kata_read_me_template
    read_me = <<EOF
# #{kata_name.split("_").join(' ').capitalize}

### Description
<!-- Add description of the kata here -->

### Examples
<!-- Add examples/test cases here -->

### Link to kata on codewars.com
EOF
  return read_me
  end

  def kata_definition_file_template(method_arguments)
    arguments = set_arguments_string(method_arguments)
    kata_file_template = <<EOF
def #{kata_name}#{arguments}
  #TODO write your definition of method here...
end
EOF
  end

  def kata_spec_file_template(method_arguments)
    arguments = set_arguments_string(method_arguments)
    spec_file = <<EOF
require './katas/#{kata_name}/lib/#{kata_name}'

RSpec.describe "##{kata_name}" do
  subject { #{kata_name}#{arguments} }


end
EOF
  end

  def set_arguments_string(method_arguments)
    method_arguments.empty? ? '' : '(' + method_arguments.join(', ') + ')'
  end
end
