class DairysController < ApplicationController
	def index
		@dairy_posts = DairyApp.all
	end
	
	def show
		@dairy_posts = DairyApp.find(params[:id])
	end
end
