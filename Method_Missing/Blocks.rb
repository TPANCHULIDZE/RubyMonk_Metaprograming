class Spy
  def method_missing(sym, *args, &block)
    
  end
  # Write your code here
end

class MethodCall
  def initialize(sym, args)
    @sym = sym
    @args = args
  end
  
  def sym
    @sym
  end
  
  def args
    @args
  end
  
  def ==(other_call)
    @sym == other_call.sym && @args == other_call.args
  end
end

class Spy
  def initialize
    @method_calls = []
  end
  
  def method_missing(sym, *args)
    @method_calls << MethodCall.new(sym, args)
    
  end
  # Write your method_missing here

  def method_called?(sym, *args)
    method_call = MethodCall.new(sym, args)
    if @method_calls.any? { |i| i == method_call }
      return true
    else
      @method_calls << method_call
      return false
    end
    # Your superiors will call this method to ask you if you've seen
    # a particular method call. Simply answer them by returning true
    # or false.
  end
end