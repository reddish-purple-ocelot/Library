require_relative "book.rb"
require_relative "author.rb"
require_relative "reader.rb"
require_relative "order.rb"
class Library
  attr_accessor :books, :mass_book, :authors, :readers, :orders

  def library_get
    #books
    @mass_book=[]
    file = "books.val"
   # format=Book.new(title, book)
    mass=@mass_book
    f=File.open(file)
      f.each do |line| 
        array_mass= line.split(" | ")
        mass << Book.new(array_mass[0],array_mass[1].strip!)
      end
    p @mass_book

    #authors
     @mass_authors=[]
    File.open("authors.val", "r") do |fl|
      while line=fl.gets 
        array_mass=line.split(" (")
        @mass_authors << Author.new(array_mass[0],array_mass[1].strip!)
      end
    end
    p @mass_authors
    #readers
    @mass_readers=[]
    File.open("readers.val", "r") do |fl|
      while line=fl.gets 
        array_mass=line.split(", ")
        @mass_readers << Reader.new(array_mass[0],array_mass[1],array_mass[2], array_mass[3],array_mass[4].strip!)
      end
    end
    p @mass_readers
    #orders
    @mass_orders=[]
    File.open("orders.val", "r") do |fl|
      while line=fl.gets 
        array_mass=line.split(", ")
        @mass_orders << Order.new(array_mass[0],array_mass[1],array_mass[2].strip!)
      end
    end
    p @mass_orders
  end

  def library_save
    #books
    @books=["Dorian Grey | Oscar Wilde", "Moby Dik | Herman Melville", "Valentina | Chorch Sand"]
    File.open("books.val", "w") do |fl|
      @books.each{|bk| fl.puts(bk)}
    end
    #authors
    @authors=["Oscar Wilde (16 October 1854; 30 November 1900;","Herman Melville (August 1, 1819;September 28, 1891;"]
    File.open("authors.val", "w") do |fl|
      @authors.each{|bk| fl.puts(bk)}
    end
    #authors
    @authors=["Oscar Wilde (16 October 1854; 30 November 1900;","Herman Melville (August 1, 1819;September 28, 1891;"]
    File.open("authors.val", "w") do |fl|
      @authors.each{|bk| fl.puts(bk)}
    end
    #readers
    @readers=["name, email, city, street, house","Valya, val.slyun@gmail.com, Dnepr, Stal, 7"]
    File.open("readers.val", "w") do |fl|
      @readers.each{|bk| fl.puts(bk)}
    end
    #orders
    @orders=["Valentina, reader, date","Valentina, Valya, 7.10.2012","Dorian Grey, Valya, 3.09.2013"]
    File.open("orders.val", "w") do |fl|
      @orders.each{|bk| fl.puts(bk)}
    end
  end
  #Functions

  def the_most_popular_book
    p=[]
    @mass_orders.each{|x| p<<x.book}
   # p p   
   def include_book(item)
      res = 0
        @mass_orders.each do |x|
          if(item<=>x.book)==0
           then res+=1 
          end
        end
      res
    end
    p=p.each{|item| include_book(item)}
    p p[0]
  end

  def men_who_likes_to_read_the_books
    p=[]
    @mass_orders.each{|x| p<< x.reader} #reader
    #p p
    def include_reader(item)
      res = 0
        @mass_orders.each do |x|
          if(item<=>x.reader)==0
           then res+=1 
          end
        end
      #puts res
    end
   
   p=p.sort.each{|item| include_reader(item)}
   #puts p
   p p[0]

  end  
  def three_the_most_popular_books
    p=[]
    @mass_orders.each{|x| p<<x.book}
    p p.each{|item| include_book(item)}
  end
end

My_library = Library.new
My_library.library_save
My_library.library_get
My_library.the_most_popular_book
My_library.men_who_likes_to_read_the_books
My_library.three_the_most_popular_books