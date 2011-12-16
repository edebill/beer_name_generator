class Brewery
  attr_accessor :name

  def name
    @name ||= pick_name
  end

  def name_strategies
    [Proc.new {
       animals = %w{cat dog cow weasel fish bird dragon}
       [animals.sample, animals.sample].join
     },
     Proc.new {
       verbs = %w{running flying swimming sitting sleeping sneezing}
       nouns = %w{nun teacher ninja wizard dragon elf santa}

       "#{verbs.sample} #{nouns.sample}" 
     },
     Proc.new {
       adjectives = %w{red blue green little big fat angry silly indignant}
       nouns = %w{door rock house mountain elf trail tree train monster accountant programmer}
       "#{adjectives.sample} #{nouns.sample}"
     }
    ]
  end

  def pick_name
    name_strategies.sample.call.titlecase
  end

end
