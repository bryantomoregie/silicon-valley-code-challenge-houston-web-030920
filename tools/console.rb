require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Joe", "Apple", "tech")
s2 = Startup.new("Bob", "Microsoft", "tech")
s3 = Startup.new("Sally", "Android", "cell phone")
s4 = Startup.new("Joe", "Google", "tech")
s5 = Startup.new("Kelly", "Amazon", "tech")
s6 = Startup.new("Kelly", "DuckDuckGo", "tech")
s7 = Startup.new("Bob", "Walmart", "food")


v1 = Venture_capitalist.new("Sue", 500)
v2 = Venture_capitalist.new("Jim", 1500000000)
v0 = Venture_capitalist.new("Jim", 2500000000)
v3 = Venture_capitalist.new("Joe", 2000)
v4 = Venture_capitalist.new("Kelly", 2000000000)

f1 = Funding_round.new(s1, v2, "Angel", 1000)
f2 = Funding_round.new(s1, v0, "Pre-Seed", 2000)
f3 = Funding_round.new(s1, v4, "Seed", 3000)
f4 = Funding_round.new(s2, v1, "Angel", 4000)
f5= Funding_round.new(s1, v1, "Angel", 5000)
f6 = Funding_round.new(s1, v2, "Pre-Seed", 6000)


# Startup.find_by_founder("Joe")

# s1.sign_contract(v1, "angel", 100000)

# f4= Funding_round.new(s1, v1 "angle")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line