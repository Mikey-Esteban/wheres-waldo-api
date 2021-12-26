class Api::V1::PhotosController < ApplicationController

  def index
    @photos = Photo.all
    puts @photos

    render json: @photos.to_json
  end

  def show
    @photo = Photo.find_by(slug: params[:slug])
    render json: @photo.scores.order(time: :asc).limit(10)
  end

  private

  def order_scores

  end

end
