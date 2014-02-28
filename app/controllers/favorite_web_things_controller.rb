class FavoriteWebThingsController < ApplicationController
  before_action :set_favorite_web_thing, only: [:show, :edit, :update, :destroy]

  # GET /favorite_web_things
  # GET /favorite_web_things.json
  def index
    @favorite_web_things = FavoriteWebThing.all
  end

  # GET /favorite_web_things/1
  # GET /favorite_web_things/1.json
  def show
  end

  # GET /favorite_web_things/new
  def new
    @favorite_web_thing = FavoriteWebThing.new
  end

  # GET /favorite_web_things/1/edit
  def edit
  end

  # POST /favorite_web_things
  # POST /favorite_web_things.json
  def create
    @favorite_web_thing = FavoriteWebThing.new(favorite_web_thing_params)

    respond_to do |format|
      if @favorite_web_thing.save
        format.html { redirect_to @favorite_web_thing, notice: 'Favorite web thing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @favorite_web_thing }
      else
        format.html { render action: 'new' }
        format.json { render json: @favorite_web_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_web_things/1
  # PATCH/PUT /favorite_web_things/1.json
  def update
    respond_to do |format|
      if @favorite_web_thing.update(favorite_web_thing_params)
        format.html { redirect_to @favorite_web_thing, notice: 'Favorite web thing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @favorite_web_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_web_things/1
  # DELETE /favorite_web_things/1.json
  def destroy
    @favorite_web_thing.destroy
    respond_to do |format|
      format.html { redirect_to favorite_web_things_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_web_thing
      @favorite_web_thing = FavoriteWebThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_web_thing_params
      params.require(:favorite_web_thing).permit(:title, :body, :img_url, :url)
    end
end
