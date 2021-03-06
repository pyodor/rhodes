require 'mspec/matchers/method'

class HavePublicInstanceMethodMatcher < MethodMatcher
  def matches?(mod)
    @mod = mod
    mod.public_instance_methods(@include_super).include? @method.to_sym
  end

  def failure_message
    ["Expected #{@mod} to have public instance method '#{@method.to_s}'",
     "but it does not"]
  end

  def negative_failure_message
    ["Expected #{@mod} NOT to have public instance method '#{@method.to_s}'",
     "but it does"]
  end
end

class Object
  def have_public_instance_method(method, include_super=true)
    HavePublicInstanceMethodMatcher.new method, include_super
  end
end
