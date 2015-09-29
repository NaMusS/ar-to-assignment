require_relative '../app/models/task'


require 'faker'

5.times do
	Task.create(
		description: Faker::Lorem.sentence,
		completed: rand(0..1)
		)
end	
