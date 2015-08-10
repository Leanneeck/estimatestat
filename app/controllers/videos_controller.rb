class VideosController < ApplicationController
  before_action :authenticate_user!

  def index
    @videos = Video.all
  end

  def new
    @video = current_user.videos.build
  end

  def create
    @video = current_user.videos.build(video_params)

    if @video.save
        redirect_to videos_path, notice: 'The video has been uploaded.'
    else
        render 'new'
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path, notice: 'The video has been deleted.'
  end

  private
  def video_params
    params.require(:video).permit(:name, :attachment)
  end
end
