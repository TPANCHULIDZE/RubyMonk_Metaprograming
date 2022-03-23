class Monk
  ["life", "the_universe", "everything"].each do |argument|
    define_method("meditate_on_#{argument}") do 
      "I know the meaning of #{argument.gsub('_', ' ')}"
    end
  end
  
  # put your code here
end