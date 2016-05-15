class Computer
    @@users = {} #class variable
    def initialize(username, password) #take two parameters
        @@users[username] = password #so that your @@users hash keeps usernames as keys with each username's password as the associated value.
        @username = username
        @username_hash ={}
        @password = password
        @files = {} #@files instance variable and set this to an empty hash.
    end
    
    def createUser(username)
        time=Time.now
        @username_hash[username] = time
        #add a new key/value pair to the @files hash. Use the filename key to store the value time.
        puts "a new user was created called #{username} on #{time}"
    end
    
    def create(filename)
        time=Time.now
        @files[filename] = time
        #add a new key/value pair to the @files hash. Use the filename key to store the value time.
        puts "a new file was created called #{filename} on #{time}"
    end
    
    
    
    def Computer.get_users
        @@users
    end
end

puts "what user name would you like to give?"
user_given_user_name = gets.chomp.downcase
puts "what password would you like to give?"
user_given_password = gets.chomp.downcase
my_computer = Computer.new(user_given_user_name, user_given_password)
my_computer.createUser(user_given_user_name)
