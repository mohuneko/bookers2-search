class SearchsController < ApplicationController
  def search
   method = params[:search_method]
   word = params[:search]
   @books = Book.search(method, word)
   @users = User.search(method, word)
  end
end
