require './katas/method_lockdown/lib/method_lockdown'

def blacklisted_methods
  %i(rand srand)
end

# RSpec.describe Kernel do
#
#   blacklisted_methods.each do |method|
#
#     it "raises NoMethodError on class method #{method} call" do
#       expect { Kernel.send(method) }.to raise_error(NoMethodError)
#     end
#
#     it "raises NoMethodError on instance method #{method} call" do
#       expect { send(method) }.to raise_error(NoMethodError)
#     end
#   end
# end
#
# RSpec.describe Random do
#
#   it "raises NoMethodError on class method rand call" do
#     expect { Random.rand }.to raise_error(NoMethodError)
#   end
#
#   it "raises NoMethodError on instance method rand call" do
#     expect { Random.new.rand }.to raise_error(NoMethodError)
#   end
#
#   it "raises NoMethodError on class method srand call" do
#     expect { Random.srand(2343) }.to raise_error(NoMethodError)
#   end
#
#   it "raises NoMethodError on instance method srand call" do
#     expect { Random.new.srand(2343) }.to raise_error(NoMethodError)
#   end
# end

# RSpec.describe Array do
#
#   it "raises NoMethodError on instance method sample" do
#     expect { [1, 2, 3].sample }.to raise_error(NoMethodError)
#   end
#
#   it "raises NoMethodError on instance method shuffle" do
#     expect { [1, 2, 3].shuffle }.to raise_error(NoMethodError)
#   end
# end
