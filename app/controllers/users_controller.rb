class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = user.name
    @prototype = user.prototype
    @occupation = user.occupation
    @position = user.position
  end
end
