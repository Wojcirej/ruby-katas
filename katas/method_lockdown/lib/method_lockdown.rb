# class Random
#
#   undef_method :rand
#   undef_method :srand
#
#   class << self
#     undef_method :rand
#     undef_method :srand
#   end
# end
#
# module Kernel
#
#   undef_method :rand
#   undef_method :srand
#
#   class << self
#     undef_method :rand
#     undef_method :srand
#   end
# end
#
# class Array
#
#   undef_method :sample
#   undef_method :shuffle
# end
