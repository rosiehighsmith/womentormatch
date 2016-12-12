class MprofilesController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @mprofiles = Mprofile.all
  end

  def show
    @mprofile = Mprofile.find(params[:id])
  end
end
