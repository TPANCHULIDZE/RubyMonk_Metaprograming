class Initiate
  def initialize(secretive_monk)
    @secretive_monk = secretive_monk
  end
  
  def	meaning_of_life
    @secretive_monk.send(:meaning_of_life)
   
  end
end