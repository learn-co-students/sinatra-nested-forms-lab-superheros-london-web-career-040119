class Team

  attr_accessor :name, :motto

  @@all = []

  def initialize(args)
    @name = args[:name]
    @power = args[:motto]

    @@all.push(self)
  end


  def self.all
    @@all
  end

end
