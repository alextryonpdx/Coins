require('rspec')
require('coins')
require('pry')


describe('Float#coin_breakdown') do

	it('returns a HASH') do	
		expect((0.0).coin_breakdown()).to(eq({
			'Quarters' => 0,
			'Dimes' => 0,
			'Nickles' => 0,
			'Pennies' => 0,
		}))
	end

	it('returns the number of quarters needed to create total') do	
		expect((50.0).coin_breakdown()).to(eq({
			'Quarters' => 2,
			'Dimes' => 0,
			'Nickles' => 0,
			'Pennies' => 0,
		}))
	end

	it('returns the number of dimes needed to create total') do	
		expect((20.0).coin_breakdown()).to(eq({
			'Quarters' => 0,
			'Dimes' => 2,
			'Nickles' => 0,
			'Pennies' => 0,
		}))
	end

	it('returns the number of nickles needed to create total') do	
		expect((5.0).coin_breakdown()).to(eq({
			'Quarters' => 0,
			'Dimes' => 0,
			'Nickles' => 1,
			'Pennies' => 0,
		}))
	end

	it('returns the number of pennies needed to create total') do	
		expect((4.0).coin_breakdown()).to(eq({
			'Quarters' => 0,
			'Dimes' => 0,
			'Nickles' => 0,
			'Pennies' => 4,
		}))
	end

	it('returns the an array of coins needed to create total') do	
		expect((41.0).coin_breakdown()).to(eq({
			'Quarters' => 1,
			'Dimes' => 1,
			'Nickles' => 1,
			'Pennies' => 1,
		}))
	end

end