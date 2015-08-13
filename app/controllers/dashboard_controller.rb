class DashboardController < ApplicationController
	# lets make sure we have a logged in buyer or seller
	before_filter :auth_dash
end
