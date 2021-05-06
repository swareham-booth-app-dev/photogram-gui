class UsersController < ApplicationController
  def index
    @all_users = User.all

    render({ :template => "users_templates/index.html.erb" })
  end

  def show
    the_username = params.fetch("username")
    @the_user = User.where({ :username => the_username })[0]
    render({ :template => "users_templates/show.html.erb" })
  end

  def create
    input_username = params.fetch("input_username")
    new_user = User.new 
    new_user.username = input_username
    new_user.save
    redirect_to("/users/"+ new_user.username.to_s)
  end

  def edit
    user_id = params.fetch("user_id")
    input_username = params.fetch("input_username")
    the_user = User.where({ :id => user_id })[0]
    the_user.username = input_username
    the_user.save
    redirect_to("/users/"+ the_user.username.to_s)
  end

end