class Api::BallsController < ApplicationController
  def index
    @balls = Ball.all
    render 'index.json.jb'
  end

  def show
    @ball = Ball.find_by(id: params[:id])
    render 'show.json.jb'
  end

  # def create
    
  # end

  # def update
    
  # end

  # def destroy

  # end
end
