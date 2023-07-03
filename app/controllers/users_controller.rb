class UsersController < ApplicationController
  def show
    @user =params[:id]
    @books = @user.books
  end
  
  def edit
  end
end
