class BooksController < ApplicationController
    before_filter :check_logged_in, :only => [:edit, :update, :destroy]
    
    def find
       @books_find = Book.where("course = '#{params[:search_string]}'")
        @user = session['loginedUser']
    end
    
    def new
        @book = Book.new
         @user = session['loginedUser']
    end
    
    def show
        @book = Book.find(params[:id])
         @user = session['loginedUser']
    end
    
    def index
        @books = Book.all
        @user = session['loginedUser']
    end
    
    def create
        @book = Book.new(book_params)
        @book.save
        redirect_to "/books/#{@book.id}"
         @user = session['loginedUser']
    end
    def edit
        @book = Book.find(params[:id])
         @user = session['loginedUser']
    end
    
    def update
        @book = Book.find(params[:id])
        @book.update_attributes(book_params)
        redirect_to "/books/#{@book.id}"
         @user = session['loginedUser']
    end
    
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to '/books/'
         @user = session['loginedUser']
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
