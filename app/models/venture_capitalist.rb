


class Venture_capitalist

attr_accessor :name 

@@all = []

def initialize(name, net_worth)
    @name = name 
    @net_worth = net_worth
    @@all << self 
end

def total_worth
    @net_worth
end

def self.all
    @@all 
end

def self.tres_commas_club
    Venture_capitalist.all.select do |venture_capitalist|
        venture_capitalist.total_worth > 1000000000
    end 
end

def offer_contract(startup, type_investment, amount_invested)
    Funding_round.new(startup, self, type_investment, amount_invested)
end 

def funding_rounds
   Funding_round.all.select do |funding|
    funding.venture_capitalist == self 
   end 
end 

# def portfolio 
#     Funding_round.all.each do |funding|
#          if funding.venture_capitalist == self 
#              return funding.startup
#          end
#     end
# end 

def biggest_investment
    fundinground = Funding_round.all.select do |funding|
        funding.venture_capitalist == self
    end 
    investment = fundinground.map do |funds|
        funds.investment 
    end 
    investment.max
end 

def invested(domain)
    # startups = Startup.all.select do |startup|
    #     startup.domain == domain
    # end 
    array_of_domains = []
    fundinground = Funding_round.all.map do |funding|
        funding.startup
    end
    fundinground.each do |funds| 
        funds.startup.domain == domain
        array_of_domains << funds.startup.domain
    end
    return array_of_domains
end


end 









