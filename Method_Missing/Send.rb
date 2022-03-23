class Spy
  def initialize(enemy_agent)
    @enemy_agent = enemy_agent
  end
  
  def method_missing(method_name, *args, &block)
    @enemy_agent.send(method_name, *args)
  end
end