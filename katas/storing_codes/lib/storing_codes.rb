class Code
  class << self
    def method_missing(method, *args, &block)
      if args.size == 0 && !self.respond_to?(method)
        raise NoMethodError
      else
        define_singleton_method("#{method}") do |args|
          args.kind_of?(Array) ? args.first : args
        end
        define_singleton_method("#{method.to_s.chop}") do
          args.kind_of?(Array) ? args.first : args
        end
      end
    end
  end
end
