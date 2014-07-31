require './lib/Person'
require './lib/Address_Book'

@address_book = Address_Book.new()
@person_chosen

def main_menu
  loop do
    puts "Hi there! Welcome to the address book."
    puts "Press 'c' to add a contact."
    puts "Press 'x' to exit."
    puts "Press 'l' to list all yer kin folk."
    user_input = gets.chomp
    if(user_input == 'c')
      add_person
    elsif(user_input == 'x')
      puts "Your adventure has ended. Bye bye!"
      exit
    elsif(user_input == 'l')
      list_people
    else
      puts "That is not a menu option. Please try again!"
    end
  end #when you get the end of main menu, reload it.
end

def list_people
  location = 1
  @address_book.people.each do |person|
    location = location.to_s
    puts location + ". " + person.name
    puts "\n\n"
    location = location.to_i + 1
  end

  puts "Enter a number to view details on that person."
  person_number_chosen = gets.chomp.to_i
  @person_chosen = @address_book.people[person_number_chosen - 1]
  puts @person_chosen.name
  puts @person_chosen.phones
  puts @person_chosen.emails
  puts @person_chosen.addresses
  puts 'Would you like to modify the contact information? y/n'
  modify = gets.chomp
  if modify == 'y'
    puts "Press 'p' too add new number, 'e' to add new email, or 'a' to add new address."
    selection = gets.chomp
    if selection == 'p'
      add_phone
    elsif selection == 'e'
      add_email
    elsif selection == 'a'
      add_address
    else
      puts "That was not an option. Returning to main menu!!!!!\n\n"
      sleep 1
      puts "Away we go!!!!\n\n"
      sleep 2
      main_menu
    end
  elsif modify == 'n'
    puts "just creepin huh?"
    sleep 2
    puts "welp... back to main menu!"
    puts "\n\n"
    sleep 1
    main_menu
  end

  puts "\n\n"
  puts "would you like to delete this person? y/n"
  sleep 2
  puts "..."
  sleep 1
  puts "perhaps they were mean to you, or you don't want your S.O to know about them?"
  sleep 2
  puts "..."
  sleep 1
  puts "seriously, I'm just a program... I wont judge... ok maybe a little."
  sleep 1
  puts "anyway, just type y or n."
  delete_option = gets.chomp
  if delete_option == 'n'
    puts "congrats on maintaining your friend ship!"
    sleep 2
    main_menu
  elsif delete_option == 'y'
    @address_book.people.delete(@person_chosen)
    puts "well, they deleted you yesterday too... I know these things... computers talk."
    sleep 2
    puts "which reminds me, we need to talk about your browser history... back to main menu."
    puts "\n\n"
    sleep 2
    main_menu
  end
end

def add_phone
  puts "please enter a new number."
  number = gets.chomp
  @person_chosen.add_phone(number)
  puts "Here are all the numbers for #{@person_chosen.name}"
  @person_chosen.phones.each do |number|
    puts number
  end
end

def add_email
  puts "please enter a new email."
  email = gets.chomp
  @person_chosen.add_email(email)
  puts "Here are all the emails for #{@person_chosen.name}"
  @person_chosen.emails.each do |email|
    puts email
  end
end

def add_address
  puts "Please enter a new address/crib locale"
  address = gets.chomp
  @person_chosen.add_address(address)
  puts "Here are all the addresses for that person... there's more than one???! They must be baaaaallin'!"
  @person_chosen.addresses.each do |address|
    puts address
  end
end

def add_person
  puts "Please enter their name."
  name = gets.chomp
  puts "Please enter their phone number."
  phone = gets.chomp
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
