class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def create
    @pond = Pond.create(
      :name => params[:pond][:name], 
      :water_type => params[:pond][:water_type]
      )
    redirect_to ponds_path
  end

  def new
    @pond = Pond.new
  end

  def show
    @pond = Pond.find(params[:id])
  end

end