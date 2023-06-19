class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to article_url(@article), notice: 'Article was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  before_action :set_article, only: %i[show edit update]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to article_url(@article), notice: t('articles_controller.create.flash_success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: t('articles_controller.update.flash_success')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :thumbnail )
  end

  def set_article
    @article = Article.find(params[:id])
  end

end