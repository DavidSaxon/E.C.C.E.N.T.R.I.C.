class PlayersController < ApplicationController
	def create
    @simulation = Simulation.find(params[:simulation_id])
    @player = @simulation.players.create(params[:player].permit(:roletitle, @simulation))
    redirect_to simulation_path(@simulation)
  end
end
