class KickboxersController < ApplicationController


  # get "/kickboxers" do
  #   @kickboxers = Kickboxer.all
  #   erb :"kickboxers/index.html"
  # end

  def index
    @kickboxers = Kickboxer.all
  end

  def show
    @kickboxer = Kickboxer.find(params[:id])
  end

  def headliner
    @kickboxer_1 = Kickboxer.find(params[:fighter_one])
    @kickboxer_2 = Kickboxer.find(params[:fighter_two])
  end


end
