class Reader
   attr_accessor :name, :email, :city, :street, :house

   def initialize(name, email, city, street, house)
     @name = name
     @email = email
     @city = city
     @street = street
     @house = house
   end
end

First_reader = Reader.new("Petro Poroshenko", "poroshenko@gmail.com", "Kyiv", "Shevchenko","8")