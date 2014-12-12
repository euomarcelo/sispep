class EventPublicationsController < ApplicationController
  before_action :set_event_publication, only: [:show, :edit, :update, :destroy]

  # GET /event_publications
  # GET /event_publications.json
  def index
    @event_publications = EventPublication.all
  end

  # GET /event_publications/1
  # GET /event_publications/1.json
  def show
  end

  # GET /event_publications/new
  def new
    @event_publication = EventPublication.new
    @event_publication.basic_publication_id = params['basic_publication_id']    
  end

  # GET /event_publications/1/edit
  def edit
  end

  # POST /event_publications
  # POST /event_publications.json
  def create
    @event_publication = EventPublication.new(event_publication_params)

    respond_to do |format|
      if @event_publication.save
        format.html { redirect_to @event_publication, notice: 'Event publication was successfully created.' }
        format.json { render :show, status: :created, location: @event_publication }
      else
        format.html { render :new }
        format.json { render json: @event_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_publications/1
  # PATCH/PUT /event_publications/1.json
  def update
    respond_to do |format|
      if @event_publication.update(event_publication_params)
        format.html { redirect_to @event_publication, notice: 'Event publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_publication }
      else
        format.html { render :edit }
        format.json { render json: @event_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_publications/1
  # DELETE /event_publications/1.json
  def destroy
    @event_publication.destroy
    respond_to do |format|
      format.html { redirect_to event_publications_url, notice: 'Event publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_publication
      @event_publication = EventPublication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_publication_params
      params.require(:event_publication).permit(:basic_publication_id, :eventName, :eventCity, :year, :annalTitle, :volume, :issue, :series, :startingPage, :endingPage, :ISBN, :publisherName, :publisherCity)
    end
end
