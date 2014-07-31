class Person
  def initialize(name, phone, email, address)
    @name = name
    @phones = [phone]
    @emails = [email]
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

  def emails
    @emails
  end

  def add_email(new_email)
    @emails << new_email
  end

  def address
    @address
  end
end
