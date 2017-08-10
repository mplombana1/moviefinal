class MovieRecordsController < ApplicationController
  before_action :set_movie_record, only: [:show, :edit, :update, :destroy]

  # GET /movie_records
  # GET /movie_records.json
  def index
    @movie_records = MovieRecord.all
  end

  # GET /movie_records/1
  # GET /movie_records/1.json
  def show
  end

  # GET /movie_records/new
  def new
    @movie_record = MovieRecord.new
  end

  # GET /movie_records/1/edit
  def edit
  end

  # POST /movie_records
  # POST /movie_records.json
  def create
    @movie_record = MovieRecord.new(movie_record_params)

    respond_to do |format|
      if @movie_record.save
        format.html { redirect_to @movie_record, notice: 'Movie record was successfully created.' }
        format.json { render :show, status: :created, location: @movie_record }
      else
        format.html { render :new }
        format.json { render json: @movie_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_records/1
  # PATCH/PUT /movie_records/1.json
  def update
    respond_to do |format|
      if @movie_record.update(movie_record_params)
        format.html { redirect_to @movie_record, notice: 'Movie record was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_record }
      else
        format.html { render :edit }
        format.json { render json: @movie_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_records/1
  # DELETE /movie_records/1.json
  def destroy
    @movie_record.destroy
    respond_to do |format|
      format.html { redirect_to movie_records_url, notice: 'Movie record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_record
      @movie_record = MovieRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_record_params
      params.require(:movie_record).permit(:title, :poster_url, :plot, :imbd_url, :wachted, :imdb_rating, :personal_rating, :user_id)
    end
end
