

class Funding_round

    attr_accessor :startup, :venture_capitalist, :funding_round, :investment

    @@all = []

    def initialize(startup, venture_capitalist, funding_round, investment)
        @startup = startup 
        @venture_capitalist = venture_capitalist
        @funding_round = funding_round
        @investment = investment
        @@all << self 
    end

    def self.all
        @@all
    end 

    def type
        @funding_round
    end

    


    








end


