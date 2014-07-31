require 'rspec'
require 'people'
require 'address'

describe People do
  it "is initialized with a name" do
    test_person = People.new('Lee Kebler')
    test_person.should be_an_instance_of People
  end
end

