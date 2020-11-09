users = [
  { username: 'michael', password: 'password1'},
  { username: 'michael2', password: 'password2'},
  { username: 'michael3', password: 'password3'},
]

def is_auth_user(user_credentials, username, password)
  user_credentials.each do |user|
    if (user[:username] == username && user[:password] == password) 
      return user
    end
  end
  return {}
end

try_times = 3
puts "Welcome to the authenticator"
25.times {print '-'}
puts

begin 
  puts "Enter username: "
  user_name = gets.chomp.downcase
  puts "Enter password: "
  pass_word = gets.chomp.downcase

  auth_user = is_auth_user(users, user_name, pass_word)

  if auth_user[:username]
    puts "User infomation: ";
    puts "#{auth_user}";
  else
    puts "Credentials were incorrect."
  end
 
  try_times = try_times - 1
  puts "Press n to quit or eny key to continue"
  input = gets.chomp
  break if input == 'n'
end while try_times > 0