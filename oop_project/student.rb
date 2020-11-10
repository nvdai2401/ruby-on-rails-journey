require 'bcrypt'
require_relative 'crud'


class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = create_hash_password(password)
  end

  def to_s
    "First name is: #{@first_name}, Last name is: #{@last_name}, Password: #{@password}"
  end
end

michael = Student.new("Michael", "Nguyen", "michael@gmail.com", "michael", '1111')

puts michael

hashed_password = michael.create_hash_digest(michael.password)
 
puts hashed_password

