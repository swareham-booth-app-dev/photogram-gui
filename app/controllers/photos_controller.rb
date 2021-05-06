class PhotosController < ApplicationController
  def index
    @all_photos = Photo.all

    render({ :template => "photos_templates/index.html.erb" })
  end

  def show
    the_username = params.fetch("username")
    @the_user = User.where({ :username => the_username })[0]
    render({ :template => "photos_templates/show.html.erb" })
  end

end