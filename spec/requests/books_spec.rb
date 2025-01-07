require 'rails_helper'

RSpec.describe "Books", type: :request do
  let(:valid_attributes) {
    { title: "testtitile", price: 1000, author: "gokul", genre: "action" }
  }

  let(:invalid_attributes) {
    { title: "", price: 1, author: "", genre: "" }
  }
  describe "GET /books" do
    it "works! (now write some real specs)" do
      get books_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET #index" do
    it "assigns all books to books" do
      book = Book.create(valid_attributes)
      get :index
      expect(assigns(:books)).to eq([ book ])
    end
  end

  describe "GET #new" do
    it "assigns a new book to @book" do
      book = Book.create(valid_attributes)
      get :new
      expect(assigns(book)).to be_a_new(Book)
    end
  end


end
