class Beer
  attr_accessor :name

  def name
    @name ||= pick_name
  end

  def name_strategies
    [Proc.new {
       adjectives = %w{Chocolate Salty Spicy Black White Simple Relaxed 
                   Witless Witness Underground Sappy Green Turnip Rutabaga
                   Abbey Seasonal Liberty Old Lucky Double Triple Ginger
                   Coconut Imperial Doppel Phlegmy Cranberry Barbeque 
                   Tobacco Milk Ginger Ginsing Coffee Fortified Sexy
                   Drunken Hairy Fuzzy Purple Whiskey }
       adjectives.push "60 minute", "30 minute", "5 minute", "20 second"

       beer_types = [ "Blonde Ale", "IPA", "Porter", "Pilsner", "Pale Ale",
                      "Pail Ale", "Bitter", "Brown Ale", "Lager", "Ale",
                      "Stout", "Bock", "Malt Liquor", "Lambic", "Weiss",
                      "Hefeweisen", "Devil", "Brew"]
       "#{adjectives.sample} #{beer_types.sample}"
     },
    ]
  end

  def pick_name
    name_strategies.sample.call
  end

end
