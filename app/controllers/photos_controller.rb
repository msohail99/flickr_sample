class PhotosController < ApplicationController


  require 'flickraw'

  def index
  render
  end

  def show
    FlickRaw.api_key='82c6f55d70bd42ad9517d3f674a3d4a7'
    FlickRaw.shared_secret='92a251f01c9b650a'

    id = '129087436@N02'
    lookup = params[:photo][:tag_value]
    @photos = flickr.photos.search(:user_id => id, :tags => lookup, :per_page => 20 )




  end

end

