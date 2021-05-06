class UsersController < ApplicationController
  def index
    @all_users = User.all

    render({ :template => "users_templates/index.html.erb" })
  end

end