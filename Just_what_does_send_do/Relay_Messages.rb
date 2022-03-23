def relay(array, data_type)
  array.map{ |i| i.send("to_#{data_type}") }
end