require_relative 'fighter' #links it to the fighter file in the same folder as bear

class Bear < Fighter 


	def attack(enemy)
		puts "RAWR!!!!"
		enemy.lose_health(self.power)
	end



end

class Ninja < Fighter

	def attack(enemy)
		puts "Argggg"
		enemy.lose_health(self.power)
	end

end

# bear = Bear.new("Bear", 100, 12)

# ninja = Ninja.new("Ninja", 100, 7)

# ninja.attack(bear)
# p bear

# bear.attack(ninja)
