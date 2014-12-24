class OfficialScoresController < ApplicationController
  before_action :set_official_score, only: [:show, :edit, :update, :destroy]

  # GET /official_scores
  # GET /official_scores.json
  def index
    @official_scores = OfficialScore.all
  end

  # GET /official_scores/1
  # GET /official_scores/1.json
  def show
  end

  # GET /official_scores/new
  def new
    @official_score = OfficialScore.new
  end

  # GET /official_scores/1/edit
  def edit
  end

  # POST /official_scores
  # POST /official_scores.json
  def create
    @official_score = OfficialScore.new(official_score_params)

    respond_to do |format|
      if @official_score.save
        format.html { redirect_to @official_score, notice: 'Official score was successfully created.' }
        format.json { render :show, status: :created, location: @official_score }
      else
        format.html { render :new }
        format.json { render json: @official_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /official_scores/1
  # PATCH/PUT /official_scores/1.json
  def update
    respond_to do |format|
      if @official_score.update(official_score_params)
        format.html { redirect_to @official_score, notice: 'Official score was successfully updated.' }
        format.json { render :show, status: :ok, location: @official_score }
      else
        format.html { render :edit }
        format.json { render json: @official_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /official_scores/1
  # DELETE /official_scores/1.json
  def destroy
    @official_score.destroy
    respond_to do |format|
      format.html { redirect_to official_scores_url, notice: 'Official score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_official_score
      @official_score = OfficialScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def official_score_params
      params.require(:official_score).permit(:game, :high_score)
    end
end
