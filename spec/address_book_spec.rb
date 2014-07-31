require 'rspec'
require 'person'
# require 'address'

describe Person do
  it "is initialized with a name" do
    test_person = Person.new('Lee Kebler')
    test_person.should be_an_instance_of Person
  end
end

