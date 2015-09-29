require_relative 'config/application'

require 'byebug'
#add a task
#delete a task
#mark a task as done/complete


command = ARGV.shift
string = ARGV.join(" ")

case command
when "list"
	puts "Task List"
	puts "========"
	tasks = Task.all
  tasks.each_with_index do |task, index|
  	if task.complete == 0
  	puts "#{index + 1}. #{task.name} [NOT DONE]"
  	else
  		puts "#{index + 1}. #{task.name} [DONE]"
  	end
  end
when "new"
	Task.create(name: string, complete: 0)
	# byebug
	puts "create new task: "
when "complete"
	tasks = Task.all
	index = string.to_i
	tasks[index - 1].complete = 1
	tasks[index - 1].save
		puts "set task to complete"
when "delete"
	tasks = Task.all
	index = string.to_i
	tasks.destroy(index)
	puts "delete task"
else
	puts "Invalid Command"
	puts "Available Command:"
	puts "list - list all tasks"
	puts "new[task name] - create new task"
	puts "complete [id] - set task to complete"
	puts "delete [id] - delete the task"
end