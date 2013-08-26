class PlayersController < ApplicationController
	# POST /policies
	# POST /policies.json
	def create
    	@simulation = Simulation.find(params[:simulation_id])
    	@player = @simulation.players.create(roletitle: params[:player][:roletitle], user_id: params[:player][:user], simulation_id: params[:simulation_id])

		respond_to do |format|
			if @player.save
        		format.html { redirect_to simulation_path(@simulation), notice: 'Player was successfully created.' }
        		format.json { render action: 'show', status: :created, location: @player }
      		else
        		format.html { render action: 'new' }
        		format.json { render json: @player.errors, status: :unprocessable_entity }
      		end
    	end
	end

  def destroy
    @simulation = Simulation.find(params[:simulation_id])
    @player = @simulation.players.find(params[:id])
    @player.destroy
    redirect_to simulation_path(@simulation)
  end



private
    def player_params
      params.require(:player).permit(:roletitle, User.find(params[:player][:user]), :simulation_id);
    end
end
