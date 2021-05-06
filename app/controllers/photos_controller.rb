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

  def delete
    the_photo_id = params.fetch("photo_id")
    matching_photos = Photo.where({ :id => the_photo_id }) 
    the_photo = matching_photos.at(0)
    the_photo.destroy
    redirect_to("/photos")
  end

  def create
    input_image = params.fetch("input_image")
    input_caption = params.fetch("input_caption")
    input_owner_id = params.fetch("input_owner_id")
    new_photo = Photo.new
    new_photo.image = input_image
    new_photo.caption = input_caption
    new_photo.owner_id = input_owner_id
    new_photo.save
    redirect_to("/photos/" + new_photo.id.to_s)
  end

end