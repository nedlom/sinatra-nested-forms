class Pirate
    attr_reader :name, :weight, :height

    @@all = []

    def self.all
        @@all
    end

    def initialize(args)
        @name = args[:name]
        @weight = args[:weight]
        @height = args[:height]
        self.save
    end

    def save
        self.class.all << self
    end

end