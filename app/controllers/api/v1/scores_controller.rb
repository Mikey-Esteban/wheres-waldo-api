class Api::V1::ScoresController < ApplicationController

  def create
    title = score_params[:title]
    score = {
      :name => score_params[:name],
      :time => score_params[:time]
    }

    @photo = Photo.find_by(title: title)

    @score = Score.new(score)
    @score[:photo_id] = @photo.id

    if @score.save
      render json: @score, status: :created
    else
      render json: @score.errors, status: :unprocessable_entity
    end

  end


  private

  def score_params
    params.require(:user).permit(:name, :time, :title)
  end

end
