class GuestsController < ApplicationController
	def create
		@guest = Guest.new(guest_params)
		if @guest.save
			redirect_to hacked_path, alert: "DEFINITELY HACKED!!!"
		else
			flash[:alert] = "Could not verify your credentials..."
			redirect_to root_path
		end
	end

	private
		def guest_params
			params.require(:guest).permit(:fullname, :ssn, :secret)
		end
end