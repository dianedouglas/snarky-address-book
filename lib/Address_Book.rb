class Address_Book
  def initialize
    @people = []
  end

  def people
    @people
  end

  def add_person(person)
    @people << person
  end

end
