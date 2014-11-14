class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def title #заглавие
  	"\""+@title+"\""

  end
end

b1 = Book.new("Dorian Grey", "Oscar Wiyld")
#puts b1.title