class Spy
  def hello
    
  end
end

Spy.new.hello # NoMethodError: undefined method `hello'

class Spy
  def method_missing(sym)
  end
  # Write your code here
end
