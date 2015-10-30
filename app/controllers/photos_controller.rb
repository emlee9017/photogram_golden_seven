class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@p=Photo.find(params[:id])
  end

  def new_form
  end

  def create_row
  	@p = Photo.new
  	@p.caption = params[:caption]
    @p.source = params[:image_url]
    @p.save

  	redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @p = Photo.find(params[:id])
  end

  def update_row
    @p = Photo.find(params[:id])
    @p.caption = params[:caption]
    @p.source = params[:image_url]
    @p.save

    render("show.html.erb")
  end

  def destroy
    @p = Photo.find(params[:id])

    @p.destroy
  end
end


  