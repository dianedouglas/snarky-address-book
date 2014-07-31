require 'rspec'
require 'person'
require 'Address_Book'

describe Person do
  it "is initialized with a name" do
    test_person = Person.new('Lee Kebler', 5555555555, 'keebz@keebz.com', '123 street st. Portland, OR 97209')
    test_person.should be_an_instance_of Person
  end

  it "lets your read the name of the person" do
    test_person = Person.new('Lee Kebler', 5555555555, 'keebz@keebz.com', '123 street st. Portland, OR 97209')
    test_person.name.should eq 'Lee Kebler'
  end

  it "lets you read the phone number of the person" do
    test_person = Person.new('Lee Kebler', 5555555555, 'keebz@keebz.com', '123 street st. Portland, OR 97209')
    test_person.phone.should eq 5555555555
  end

  it "lets you read the email of the person" do
    test_person = Person.new('Lee Kebler', 5555555555, 'keebz@keebz.com', '123 street st. Portland, OR 97209')
    test_person.email.should eq 'keebz@keebz.com'
  end

  it "lets you read the address of the person" do
    test_person = Person.new('Lee Kebler', 5555555555, 'keebz@keebz.com', '123 street st. Portland, OR 97209')
    test_person.address.should eq '123 street st. Portland, OR 97209'
  end
end

describe Address_Book do
  it 'is initialized with an empty list' do
    test_book = Address_Book.new()
    test_book.should be_an_instance_of Address_Book
  end

  it 'returns all the people stored in the Address_Book' do
    test_book = Address_Book.new()
    test_book.people.should eq []
  end

  it 'should add a person to the array of people in the address book.' do
    test_book = Address_Book.new()
    lee = Person.new('Lee Kebler', 5555555555, 'keebz@keebz.com', '123 street st. Portland, OR 97209')
    test_book.add_person(lee)
    test_book.people.should eq [lee]
  end
end

