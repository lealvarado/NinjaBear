class Fighter

	attr_accessor :name, :health, :power

	def initialize (name, health, power)
		@name = name
		@health = health
		@power = power
	end

	def attack(enemy)
		enemy.lose_health(self.power)
	end

	def lose_health(power_attacker)
		self.health -= power_attacker
	end


end

rocky = Fighter.new("Rocky", 110, 15)
ali = Fighter.new("Muhammed Ali", 100, 20)

rocky.attack(ali)
p ali

ali.attack(rocky)
p rocky

# p fighter
# puts fighter.name
# puts fighter.health
# puts fighter.power