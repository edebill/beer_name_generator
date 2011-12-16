class Offering
  attr_accessor :name, :brewery, :beer

  def initialize
    @brewery = Brewery.new
    @beer = Beer.new

    self
  end

  def name
    @name ||= "#{self.brewery.name} #{self.beer.name}" 
  end    
end
