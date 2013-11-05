class FrogsController < ApplicationController

  def index
    @frogs = Frog.all
  end

  def create
    @frog = Frog.create(
      :name => params[:frog][:name], 
      :color => params[:frog][:color],
      :pond_id => params[:frog][:pond_id]
    )
    redirect_to frogs_path
  end

  def new
    @ponds = Pond.all
    @frog = Frog.new
  end

  def show
    @frog = Frog.find(params[:id])
    @pond = Pond.find(@frog.pond_id)
  end

  def edit
    @frog = Frog.find(params[:id])
  end

  def update
    @frog = Frog.find(params[:id])
    @frog.update(:name => params[:frog][:name], :color => params[:frog][:color])
    redirect_to frogs_path
  end

  def destroy
    @frog = Frog.find(params[:id])
    @frog.destroy
    redirect_to frogs_path
  end


end
