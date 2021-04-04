class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    topic = Topic.new(topic_params)
    topic.save!
    redirect_to topics_url, notice: "トピック「#{topic.title}」を投稿しました。"
  end

  private
  
  def topic_params
    params.require(:topic).permit(:title, :body)
  end
end
