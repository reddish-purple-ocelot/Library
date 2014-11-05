class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def title #заглавие

  end
end

b1 = Book.new("Dorian Grey", "Oscar Wiyld")