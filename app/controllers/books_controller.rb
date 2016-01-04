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
        @book.picture_url= params[:file]
        if @book.save
           redirect_to "/books/#{@book.id}"
        else
            render 'new'
        end
    end
    
    private
    
        def book_params
            params.require(:book).permit(:name, :author, :publish, :abstract, :picture_url)
        end
    
end
