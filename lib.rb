require_relative "book.rb"
class Library
  attr_accessor :books, :mass_book
  
  def library_get()
    @mass_book=[]
    File.open("books.val", "r") do |fl|
      while line=fl.gets
        puts line.split("|")  
        @mass_book << Book.new(line[0],line[1])
      end
    end
    p @mass_book
  end
  def library_save
    @books=["Dorian Grey | Oscar Wite", "Moby Dik | Herman Melville", "Valentina | Chorch Sand"]
    File.open("books.val", "w") do |fl|
      @books.each{|bk| fl.puts(bk)}
    end
  end
  #Objects
end

My_library = Library.new
My_library.library_save
My_library.library_get