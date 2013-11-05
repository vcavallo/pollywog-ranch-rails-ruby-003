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

  def edit
    @pond = Pond.find(params[:id])
  end

  def update
    @pond = Pond.find(params[:id])
    @pond.update(:name => params[:pond][:name], :water_type => params[:pond][:water_type])
    redirect_to ponds_path
  end

  def destroy
    @pond = Pond.find(params[:id])
    @pond.destroy
    redirect_to ponds_path
  end

end