require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with a title, price, author, and genre" do
    book = Book.new(title: "Sample Title", price: 10.99, author: "gokul ", genre: "Fiction")
    expect(book).to be_valid
  end

  it "is invalid without a title" do
    book = Book.new(title: nil, price: 100.99, author: "gokul", genre: "Fiction")
    expect(book).not_to be_valid
  end

  it "is invalid with a negative price" do
    book = Book.new(title: "Sample Title", price: -10.99, author: "gokul", genre: "action")
    expect(book).not_to be_valid
  end
  it "is invalid without an author" do
    book = Book.new(title: "Title", price: 100, author: nil, genre: "action")
    expect(book).not_to be_valid
  end

  it "is invalid without a genre" do
    book = Book.new(title: " Title", price: 102, author: "gokul", genre: nil)
    expect(book).not_to be_valid
  end

end
