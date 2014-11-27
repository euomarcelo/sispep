class BasicPublicationsController < ApplicationController
  before_action :set_basic_publication, only: [:show, :edit, :update, :destroy]

  # GET /basic_publications
  # GET /basic_publications.json
  def index
    @basic_publications = BasicPublication.all
  end

  # GET /basic_publications/1
  # GET /basic_publications/1.json
  def show
  end

  # GET /basic_publications/new
  def new
    @basic_publication = BasicPublication.new
  end

  # GET /basic_publications/1/edit
  def edit
  end

  # POST /basic_publications
  # POST /basic_publications.json
  def create
    @basic_publication = BasicPublication.new(basic_publication_params)

    respond_to do |format|
      if @basic_publication.save
        format.html { redirect_to @basic_publication, notice: 'Basic publication was successfully created.' }
        format.json { render :show, status: :created, location: @basic_publication }
      else
        format.html { render :new }
        format.json { render json: @basic_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basic_publications/1
  # PATCH/PUT /basic_publications/1.json
  def update
    respond_to do |format|
      if @basic_publication.update(basic_publication_params)
        format.html { redirect_to @basic_publication, notice: 'Basic publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @basic_publication }
      else
        format.html { render :edit }
        format.json { render json: @basic_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_publications/1
  # DELETE /basic_publications/1.json
  def destroy
    @basic_publication.destroy
    respond_to do |format|
      format.html { redirect_to basic_publications_url, notice: 'Basic publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_publication
      @basic_publication = BasicPublication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_publication_params
      params.require(:basic_publication).permit(:profile_id, :title, :year, :country, :language, :webpage, :english_title, :publication_type)
    end
end
