class MprofilesController < ApplicationController
  def index
    @mprofiles = Mprofile.all
  end

  def show
    @mprofile = Mprofile.find(params[:id])
  end
end
