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

end
