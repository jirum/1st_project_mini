class UrlsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: :show
  before_action :set_own_post, only: :destroy

  def index
    @urls = Url.all.includes(:users)
  end

  def new
    @urls = Url.new
  end

  def create
    @urls= Url.new(url_params)
    @urls.users = current_user
    if @urls.save
      redirect_to urls_path
    else
      render :new
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

  def set_own_url
    @url = current_user.urls.find_by_id(params[:id])
    if @url.nil?
      flash[:alert] = 'this url not belongs_to you or not exists'
      redirect_to posts_path
    end
  end

  def url_params
    params.require(:post).permit(:description, :long_url)
  end

  def set_url
    @url = Url.find(params[:id])
  end
end
