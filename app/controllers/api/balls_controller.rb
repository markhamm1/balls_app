class Api::BallsController < ApplicationController
  def index
    @balls = Ball.all
    render 'index.json.jb'
  end

  def show
    @ball = Ball.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @ball = Ball.new(
      sport: params[:sport],
      shape: params[:shape],
      diameter: params[:diameter]
    )
    @ball.save
    render 'show.json.jb'    
  end

  def update
    @ball = Ball.find_by(id: params[:id])
    @ball.update(
      sport: params[:sport] || @ball.sport,
      shape: params[:shape] || @ball.shape,
      diameter: params[:diameter] || @ball.diameter,
    )
    render 'show.json.jb'    
  end

  def destroy
    @ball = Ball.find_by(id: params[:id])
    @ball.destroy
    render json: {message: "You have successfully deleted the item."}
  end
end
