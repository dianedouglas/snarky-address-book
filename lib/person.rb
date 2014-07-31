class Person
  def initialize(name, phone, email, address)
    @name = name
    @phones = []
    @phones << phone
    @email = email
    @address = address
  end

  def name
    @name
  end

  def phones
    @phones
  end

  def add_phone(new_phone)
    @phones << new_phone
  end

  def email
    @email
  end

  def address
    @address
  end
end
