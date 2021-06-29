class Ship
    attr_reader :name, :type, :booty

    @@all = []

    def self.all
        @@all
    end

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        self.save
    end

    def save
        self.class.all << self
    end

    def self.clear
        self.all.clear
    end

end