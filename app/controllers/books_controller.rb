class BooksController < ApplicationController
    before_filter :check_logged_in, :only => [:edit, :update, :destroy]
    
    def find
       @books_find = Book.where("course = '#{params[:search_string]}'")
    end
    
    def new
        @book = Book.new
    end
    
    def show
        @book = Book.find(params[:id])
    end
    
    def index
        @books = Book.all
        @user = session['loginedUser']
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
    
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to '/books/'
    end
    
    
    
    private
    
        def book_params
            params.require(:book).permit(:name, :author, :publish, :abstract, :picture_url,:course)
        end
    
        def check_logged_in
            authenticate_or_request_with_http_basic("Books") do |username, password|
                username == "admin" && password == "123456"
            end
        end
    
end
