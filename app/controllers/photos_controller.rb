class PhotosController < ApplicationController
  def index
    @all_photos = Photo.all

    render({ :template => "photos_templates/index.html.erb" })
  end

  def show
    the_photo_id = params.fetch("photo_id")
    @the_photo = Photo.where({ :id => the_photo_id })[0]
    render({ :template => "photos_templates/show.html.erb" })
  end

end