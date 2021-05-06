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

end