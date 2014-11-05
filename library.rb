#!/usr/local/bin/ruby -w
class Library
  attr_accessor :books, :readers, :orders, :authors
  
 # def initialize(books, readers, orders, authors)
  #  @books = books
   # @readers = readers
   # @orders = orders
   # @authors = authors
 # end

  def save_the_library_data
    File.open("books.val") do |file|


    end
  end

  def get_the_library_data
    if !File.exist?("books.val") then File.new("books.val", "w") end
    File.open("books.val","r") do |file|
      books=file.map { |line| line.strip.upcase }
    end
  end
  #Objects
end

My_library = Library.new
My_library.save_the_library_data
My_library.get_the_library_data
puts My_library.books