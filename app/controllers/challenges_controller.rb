class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :update, :destroy]

  # GET /challenges
  # GET /challenges.json
  def index
    @challenges = Challenge.all

    render json: @challenges
  end

  # GET /challenges/1
  # GET /challenges/1.json
  def show
    render json: @challenge
  end

  # POST /challenges
  # POST /challenges.json
  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      render json: @challenge, status: :created, location: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenges/1
  # PATCH/PUT /challenges/1.json
  def update
    @challenge = Challenge.find(params[:id])

    if @challenge.update(challenge_params)
      head :no_content
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /challenges/1
  # DELETE /challenges/1.json
  def destroy
    @challenge.destroy

    head :no_content
  end

  private

    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    def challenge_params
      params.require(:challenge).permit(:challenge_id, :challenge)
    end
end
