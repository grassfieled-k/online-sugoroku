class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  def index
    @games = Game.all
    @maps = Map.all
  end

  # GET /games/1
  def show
    @players = Player.where(game_id: @game.game_id)
    @map = Map.find_by(map_id: @game.map_id)
    @spaces = Space.where(map_id: @map.map_id).order(position: "ASC")
    @colors = Color.all

    # Gon
    gon.players = @players.to_json()
    gon.map     = @map.to_json()
    gon.spaces  = @spaces.to_json()
    gon.colors  = @colors.to_json()
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    redirect_to games_url, notice: 'Game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:game_name, :map_id)
    end
end
