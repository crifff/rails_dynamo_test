class UsersController < ApplicationController
  def index
		user = User.new
		user.id = "hoge"
		user.name = "fuga"
		user.save
    @users = User.all
		p @users
  end
end
