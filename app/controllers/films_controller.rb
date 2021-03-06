class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]
  before_action :set_films

  def set_films
    @films = Film.all
  end

  # GET inventory
  def inventory
    @film = Film.new

    render 'inventory'
  end

# Produce
def produce
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to "http://localhost:3000/films/inventory", notice: 'Film was successfully created.' }
        format.json { render :show, status: :created, location: @inventory }
      else
        format.html { render 'inventory' }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /films
  # GET /films.json
  def index
    @films = Film.all
  end

  # GET /films/1
  # GET /films/1.json
  def show
  end

  # GET /films/new
  def new
    @film = Film.new
    @producers = Producer.all
  end

  # GET /films/1/edit
  def edit
    @producers = Producer.all
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film.destroy
    respond_to do |format|
      format.html { redirect_to films_url, notice: 'Film was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_params
      params.require(:film).permit(:title, :genre, :release_year, :imdb_url)
    end
end
