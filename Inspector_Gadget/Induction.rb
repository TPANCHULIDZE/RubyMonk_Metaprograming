def monk(arg1, arg2)
  "Monks"
end

mo = self.method(:monk)
puts mo
puts 

def monk(arg1, *args2)
  "Monks" + arg1 + args2.first
end

mo = self.method(:monk)

puts "Arity"
p mo.arity

puts "Parameters"
p mo.parameters
puts 

class Monastery
  def monks(arg1, arg2)
    "Monks" + arg1 + arg2
  end
end

mo = Monastery.new.method(:monks)

puts "Receiver --"
p mo.receiver

puts

puts "Owner --"
p mo.owner