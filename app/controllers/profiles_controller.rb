class ProfilesController < ApplicationController
before_action :find_user

def show
@profile = current_user.profile
end

def new
@profile = Profile.new
end

def create
	@profile = Profile.new(pro_params)
	if @profile.save
		redirect_to '/home' , notice: 'Account update successfully'
	else
		redirect_to '/home', notice: 'Unknown erro occured'
	end

end




end
