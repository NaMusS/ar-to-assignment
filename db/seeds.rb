require_relative '../app/models/task.rb'
require 'byebug'

require 'faker'

5.times do
	Task.create(name: "GO to" + Faker::Commerce.department.to_s, complete: rand(2))
end

#name and complete from our initial schema 