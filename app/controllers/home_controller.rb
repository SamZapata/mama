class HomeController < ApplicationController

  def index
  end

  def media
    @media = ::Core::FetchMedia.new.call params[:m]
  end

end
