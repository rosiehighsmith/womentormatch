class Instructor::MprofilesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_mprofile, only: [:show]

  def new
    @mprofile = Mprofile.new
  end

  def create
    @mprofile = current_user.mprofiles.create(mprofile_params)
    if @mprofile.valid?
      redirect_to mprofiles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @section = Section.new
  end

  private
  def require_authorized_for_current_mprofile
    if current_mprofile.user != current_user
      render text: "Unauthorized", status: :unauthorized
    end
  end

  helper_method :current_mprofile
  def current_mprofile
    @current_mprofile ||= Mprofile.find(params[:id])
  end

  def mprofile_params
    params.require(:mprofile).permit(:first_name, :bio, :email, :image)
  end
end