class PhotosController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @photo = Photo.create(photo_params)
    @photo.user_id = @user.id
    @photo.save
    redirect_to user_path(@user)
  end

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.create()
  end

  private
  def photo_params
    params.require(:photo).permit(:image)
  end
end
