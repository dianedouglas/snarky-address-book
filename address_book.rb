require './lib/people'
require './lib/Address_Book'

address_book = Address_Book.new()

def main_menu
  loop do

  end #when you get the end of main menu, reload it.
end

def list_people
  address_book.people.each do |person|
    puts person.name
  end
end

def add_person
end

main_menu
