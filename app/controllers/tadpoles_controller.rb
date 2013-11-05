class TadpolesController < ApplicationController

  def index
    @tadpoles = Tadpole.all
  end

  def new
    @frog = Frog.find(params[:id])
    @tadpole = Tadpole.new
    render 'tadpoles/new'
  end

  def create

    @tadpole = Tadpole.create(
      :name => params[:tadpole][:name],
      :color => params[:tadpole][:color],
      :frog_id => params[:tadpole][:frog_id]
    )
    redirect_to tadpoles_path
  end

  def show
    @tadpole = Tadpole.find(params[:id])
  end

  def edit
    @tadpole = Tadpole.find(params[:id])
  end

  def update
    @tadpole = Tadpole.find(params[:id])
    @tadpole.update(
      :name => params[:tadpole][:name],
      :color => params[:tadpole][:color]
    )
    redirect_to tadpoles_path
  end

  def destroy
    @tadpole = Tadpole.find(params[:id])
    @tadpole.destroy
    redirect_to tadpoles_path
  end

  def evolve
    @tadpole = Tadpole.find(params[:id])

    @frog = Frog.create(
      :name => @tadpole.name,
      :color => @tadpole.color,
      :pond_id => @tadpole.frog.pond_id     
    )

    @tadpole.destroy
    redirect_to frogs_path
  end

end
