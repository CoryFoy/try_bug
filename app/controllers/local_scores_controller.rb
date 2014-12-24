class LocalScoresController < ApplicationController
  before_action :set_local_score, only: [:show, :edit, :update, :destroy]

  # GET /local_scores
  # GET /local_scores.json
  def index
    @local_scores = LocalScore.all
  end

  # GET /local_scores/1
  # GET /local_scores/1.json
  def show
  end

  # GET /local_scores/new
  def new
    @local_score = LocalScore.new
  end

  # GET /local_scores/1/edit
  def edit
  end

  # POST /local_scores
  # POST /local_scores.json
  def create
    @local_score = LocalScore.new(local_score_params)

    respond_to do |format|
      if @local_score.save
        format.html { redirect_to @local_score, notice: 'Local score was successfully created.' }
        format.json { render :show, status: :created, location: @local_score }
      else
        format.html { render :new }
        format.json { render json: @local_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_scores/1
  # PATCH/PUT /local_scores/1.json
  def update
    respond_to do |format|
      if @local_score.update(local_score_params)
        format.html { redirect_to @local_score, notice: 'Local score was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_score }
      else
        format.html { render :edit }
        format.json { render json: @local_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_scores/1
  # DELETE /local_scores/1.json
  def destroy
    @local_score.destroy
    respond_to do |format|
      format.html { redirect_to local_scores_url, notice: 'Local score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_score
      @local_score = LocalScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_score_params
      params.require(:local_score).permit(:game, :score)
    end
end
