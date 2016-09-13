class FavouritesController < ApplicationController

  respond_to :json

  def index
    favourites = Favourite.all
    render :json => favourites
  end 

  def show
    favourite = Favourite.find( params[ :id ])
    render :json => favourite
  end

  def create
    favourite = Favourite.create( user_params )
    render :json => favourite
  end

  private
  def user_params
    params.require( :favourite ).permit( [:user_id, :show_id, :rating ] )
  end

end