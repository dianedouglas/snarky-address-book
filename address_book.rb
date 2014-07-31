require './lib/Person'
require './lib/Address_Book'

@address_book = Address_Book.new()

def main_menu
  loop do
    puts "Hi there! Welcome to the address book."
    puts "Press 'c' to add a contact."
    puts "Press 'x' to exit."
    user_input = gets.chomp
    if(user_input == 'c')
      add_person
    elsif(user_input == 'x')
      puts "Your adventure has ended. Bye bye!"
      exit
    else
      puts "That is not a menu option. Please try again!"
    end
  end #when you get the end of main menu, reload it.
end

def list_people
  address_book.people.each do |person|
    puts person.name
  end
end

def add_person
  puts "Please enter their name."
  name = gets.chomp
  puts "Please enter their phone number."
  phone = gets.chomp.to_i
  puts "Please enter their email."
  email = gets.chomp
  puts "Please enter their address."
  address = gets.chomp
  new_contact = Person.new(name, phone, email, address)
  @address_book.add_person(new_contact)
  puts "New contact added: "
  puts "#{new_contact.name}"
end

main_menu
