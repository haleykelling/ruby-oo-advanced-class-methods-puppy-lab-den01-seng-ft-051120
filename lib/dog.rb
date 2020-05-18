# Add your code here
class Dog
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize name
        @name = name

        self.save
    end

    def save
        self.class.all << self
    end

    def self.print_all
        @@all.map {|dog| puts dog.name}
    end

    def self.clear_all
        @@all.clear
    end

end