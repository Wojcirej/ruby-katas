module GeneratorTemplates
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

  def kata_definition_file_template
    kata_file_template = <<EOF
def #{kata_name}
  #TODO write your definition of method here...
end
EOF
  end

  def kata_spec_file_template
  spec_file = <<EOF
require './katas/#{kata_name}/lib/#{kata_name}'

RSpec.describe "##{kata_name}" do
  subject { #{kata_name} }


end
EOF
  end
end
