class Machine
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "New file #{filename} was created by #{@username} at #{time}."
  end

  def Machine.get_users
    @@users
  end

  def delete(filename)
    @files.delete(filename)
  end

  def show
    puts "User #{@username} created #{@files} files "
  end

end

#my_machine = Machine.new("eric", 01234)
#your_machine = Machine.new("you", 56789)

#my_machine.create("groceries.txt")
#your_machine.create("todo.txt")

#puts "Users: #{Machine.get_users}"