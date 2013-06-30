class SlideshowsController < ApplicationController
  before_action :set_slideshow, only: [:show, :edit, :update, :destroy]

  # GET /slideshows
  # GET /slideshows.json
  def index
    @slideshows = Slideshow.all
  end

  # GET /slideshows/1
  # GET /slideshows/1.json
  def show
  end

  # GET /slideshows/new
  def new
    @slideshow = Slideshow.new
  end

  # GET /slideshows/1/edit
  def edit
  end

  # POST /slideshows
  # POST /slideshows.json
  def create
    @slideshow = Slideshow.new(slideshow_params)

    respond_to do |format|
      if @slideshow.save
        format.html { redirect_to @slideshow, notice: 'Slideshow was successfully created.' }
        format.json { render action: 'show', status: :created, location: @slideshow }
      else
        format.html { render action: 'new' }
        format.json { render json: @slideshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slideshows/1
  # PATCH/PUT /slideshows/1.json
  def update
    respond_to do |format|
      if @slideshow.update(slideshow_params)
        format.html { redirect_to @slideshow, notice: 'Slideshow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slideshow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slideshows/1
  # DELETE /slideshows/1.json
  def destroy
    @slideshow.destroy
    respond_to do |format|
      format.html { redirect_to slideshows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slideshow
      @slideshow = Slideshow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slideshow_params
      params.require(:slideshow).permit(:name, :content)
    end
end
