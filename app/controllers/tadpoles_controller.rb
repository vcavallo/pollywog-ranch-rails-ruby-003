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

end
