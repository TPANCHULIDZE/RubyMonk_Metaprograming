class Monk
  def initialize
    @zen = 42
  end
end

p Monk.new.instance_variable_get("@zen")


def inspect_instance_variable(class_name, variable)
  Module.const_get(class_name).new.instance_variable_get("@" + variable)
end

class Monk
  attr_reader :zen
  
  def initialize
    @zen = 42
  end
end

p Monk.new.zen