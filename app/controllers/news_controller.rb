class NewsController < ApplicationController
  before_action :set_news, only: %i[show edit update destroy]

  def index
    @news = News.newest_first

    if params[:must_auth]
      render :index_admin
    end
  end

  def show
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = News.new(news_params)

    respond_to do |format|
      if @news.save
        format.html { redirect_to news_index_path, notice: t('.success') }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: t('.success') }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: t('.success') }
      format.json { head :no_content }
    end
  end

  private
    def set_news
      @news = News.friendly.find params[:id]
    end

    def news_params
      params.require(:news).permit(:title, :subtitle, :content)
    end
end
