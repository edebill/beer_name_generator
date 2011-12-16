class Beer
  attr_accessor :name

  def name
    @name ||= pick_name
  end

  def name_strategies
    [Proc.new {
       adjectives = %w{Chocolate Salty Spicy Black White Simple Relaxed 
                   Witless Witness Underground Sappy Green Turnip Rutabaga
                   Abbey Seasonal Liberty Old Lucky Double Triple Ginger }
       beer_types = [ "Blonde Ale", "IPA", "Porter", "Pilsner", "Pale Ale",
                      "Pail Ale", "Bitter", "Brown Ale", "Lager", "Ale" ]
       "#{adjectives.sample} #{beer_types.sample}"
     },
    ]
  end

  def pick_name
    name_strategies.sample.call
  end

end
