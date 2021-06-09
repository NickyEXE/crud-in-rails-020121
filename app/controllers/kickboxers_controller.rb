class KickboxersController < ApplicationController
  before_action :set_kickboxer, only: [:show, :edit, :update, :destroy]

  def index
    @kickboxers = Kickboxer.all
  end

  def show
  end

  def new
    @kickboxer = Kickboxer.new
  end

  def create
    @kickboxer = Kickboxer.create(kickboxer_params)
    # @kickboxer = Kickboxer.create(name: params[:name], speed: params[:speed], fist_size: params[:fist_size], missing_teeth: params[:missing_teeth], villain: params[:villain])
    redirect_to @kickboxer
  end

  # get "/kickboxers/:id/edit"
  def edit
  end

  def update
    @kickboxer.update(kickboxer_params)
    redirect_to @kickboxer
  end

  def destroy
    @kickboxer.destroy
    redirect_to kickboxers_path
  end


  def headliner
    @kickboxer_1 = Kickboxer.find(params[:fighter_one])
    @kickboxer_2 = Kickboxer.find(params[:fighter_two])
  end

  private

  def kickboxer_params
    params.require(:kickboxer).permit(:name, :speed, :fist_size, :missing_teeth, :villain)
  end

  def set_kickboxer
    @kickboxer = Kickboxer.find(params[:id])
  end

end
