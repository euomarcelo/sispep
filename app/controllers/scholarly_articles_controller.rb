class ScholarlyArticlesController < ApplicationController
  before_action :set_scholarly_article, only: [:show, :edit, :update, :destroy]

  # GET /scholarly_articles
  # GET /scholarly_articles.json
  def index
    @scholarly_articles = ScholarlyArticle.all
  end

  # GET /scholarly_articles/1
  # GET /scholarly_articles/1.json
  def show
  end

  # GET /scholarly_articles/new
  def new
    @scholarly_article = ScholarlyArticle.new
    @scholarly_article.basic_publication_id = params['basic_publication_id']   
  end

  # GET /scholarly_articles/1/edit
  def edit
  end

  # POST /scholarly_articles
  # POST /scholarly_articles.json
  def create
    @scholarly_article = ScholarlyArticle.new(scholarly_article_params)

    respond_to do |format|
      if @scholarly_article.save
        format.html { redirect_to @scholarly_article, notice: 'Scholarly article was successfully created.' }
        format.json { render :show, status: :created, location: @scholarly_article }
      else
        format.html { render :new }
        format.json { render json: @scholarly_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scholarly_articles/1
  # PATCH/PUT /scholarly_articles/1.json
  def update
    respond_to do |format|
      if @scholarly_article.update(scholarly_article_params)
        format.html { redirect_to @scholarly_article, notice: 'Scholarly article was successfully updated.' }
        format.json { render :show, status: :ok, location: @scholarly_article }
      else
        format.html { render :edit }
        format.json { render json: @scholarly_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarly_articles/1
  # DELETE /scholarly_articles/1.json
  def destroy
    @scholarly_article.destroy
    respond_to do |format|
      format.html { redirect_to scholarly_articles_url, notice: 'Scholarly article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholarly_article
      @scholarly_article = ScholarlyArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scholarly_article_params
      params.require(:scholarly_article).permit(:basic_publication_id, :ISSN, :volume, :issue, :series, :startingPage, :endingPage)
    end
end
