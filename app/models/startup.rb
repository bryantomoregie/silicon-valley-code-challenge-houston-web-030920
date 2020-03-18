class Startup

    attr_accessor :name 
    attr_reader :founder, :domain
    
    @@all = []
    
    def initialize(founder, name, domain)
        @name = name 
        @founder = founder
        @domain = domain 
        @@all << self 
    end

    def pivot(domain, name)
        @name = name #Theres no setter method to call so self.name = wont work. We've already made the variables above, so we set it equal to the new variable. 
        @domain = domain
    end

    def self.all
        @@all 
    end

    def self.find_by_founder(founder)
        startups = Startup.all.select do |startup|
            startup.founder == founder
        end 
        startups[0]
    end 

    def self.domain
        Startup.all.map do |startup|
            startup.domain
        end
    end

    def sign_contract(venture_capitalist, type_investment, amount_invested)
        Funding_round.new(self, venture_capitalist, type_investment)
    end 

    def num_funding_rounds
        fundinground = Funding_round.all.select do |funding_round|
            funding_round.startup == self
        end
        fundinground.count
    end

    def total_funds
        fundinground = Funding_round.all.select do |funding_round|
            funding_round.startup == self
        end
        investments = fundinground.map do |funds|
            funds.investment
        end
        investments.sum
    end 

    def investors
        fundinground = Funding_round.all.select do |funding_round|
            funding_round.startup == self
        end
       investments = fundinground.map do |funding|
        funding.venture_capitalist
       end 
       investments.uniq
    end

    def big_investor
        Venture_capitalist.tres_commas_club
    end

    




    
    
    
    
    
    end

  
    

    # Startup.all()
    