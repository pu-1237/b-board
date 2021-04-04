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
    @topic = Topic.find(params[:id])
  end

  def update
    topic = Topic.find(params[:id])
    topic.update!(task_params)
    redirect_to topics_path, notice: "トピック「#{topic.title}を編集しました」"
  end

  def create
    topic = Topic.new(topic_params)
    topic.save!
    redirect_to topics_url, notice: "トピック「#{topic.title}」を投稿しました。"
  end

  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
    redirect_to topics_path, notice: "トピック「#{topic.title}」を削除しました。"
  end



  private
  
  def topic_params
    params.require(:topic).permit(:title, :body)
  end
end
