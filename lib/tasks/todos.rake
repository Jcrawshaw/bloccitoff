desc "says hi"
task say_hello: :environment do
  puts "HELLO!"
end

desc "deletes todo items that are older than 7 days"
task delete_items: :environment do
  Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
end