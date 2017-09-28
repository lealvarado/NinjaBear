require_relative 'bear'


class Battle

	attr_reader :fighter1, :fighter2

	def initialize(fighter1, fighter2)
		@fighter1 = fighter1 
		@fighter2 = fighter2
		battle_status

	end 

	def fight 
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)

	end 

	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health left"
		puts "#{@fighter2.name} has #{@fighter2.health} health left"
	end

end

bear = Bear.new("Berry", 100, 12)
ninja = Ninja.new("Jet Li", 100, 10)

battle = Battle.new(bear, ninja)
5.times do 
	battle.fight
end
#puts battle.battle_status
