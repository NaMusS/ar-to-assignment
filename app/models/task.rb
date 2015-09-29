

class Task < ActiveRecord::Base

def self.list
  	puts "Here's your todo list:"
  	tasks = Task.all
  end

	def self.add(new_task)
	Task.create(description: new_task)
  end

  def self.delete(task_id)
  	chore = Task.all[task_id - 1]
  	task.delete
  	puts "Your task '#{chore.description}' has been deleted"
  end



end


