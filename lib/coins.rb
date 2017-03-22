class Float
	define_method(:coin_breakdown) do
		breakdown = {
			'Quarters' => 0,
			'Dimes' => 0,
			'Nickles' => 0,
			'Pennies' => 0,
			'Total' => self
		}
		remainder = self.*(100).to_i

		# binding.pry

		# QUARTER COUNTER LOOP
		until remainder < 25 
			breakdown['Quarters'] += 1
			remainder -= 25
		end

		# DIME COUNTER LOOP
		until remainder < 10 
			breakdown['Dimes'] += 1
			remainder -= 10
		end

		# NICKLE COUNTER LOOP
		until remainder < 5 
			breakdown['Nickles'] += 1
			remainder -= 5
		end

		# PENNY COUNTER LOOP
		until remainder < 1 
			breakdown['Pennies'] += 1
			remainder -= 1
		end
# binding.pry
		breakdown
	end
end