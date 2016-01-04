class BooksController < ApplicationController
    
    def new
        @book = Book.new
    end
    
    def show
        @book = Book.find(params[:id])
    end
    
    def index
        @books = Book.all
    end
    
    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to "/books/#{@book.id}"
    end
    def edit
        @book = Book.find(params[:id])
    end
    
    def update
        @book = Book.find(params[:id])
        @book.update_attributes(book_params)
        redirect_to "/books/#{@book.id}"
    end
    
    private
    
        def book_params
            params.require(:book).permit(:name, :author, :publish, :abstract, :picture_url)
        end
    
end
