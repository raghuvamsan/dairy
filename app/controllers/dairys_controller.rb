class DairysController < ApplicationController
	def index
		@dairy_posts = DairyApp.all
	end
	
	def new
		@dairy = DairyApp.new
	end
	
	def show
		@dairy_posts = DairyApp.find(params[:id])
	end
	
	def edit
		@dairy_posts = DairyApp.find(params[:id])
	end
	
	def create
		@dairy_posts = DairyApp.new(new_entry)
		@dairy_posts.save
		redirect_to action: 'index'
	end
	
	def destroy
		@dairy_posts = DairyApp.find(params[:id])
		@dairy_posts.destroy
		redirect_to dairys_path
	end
	
	private
		def new_entry
			params.require(:dairy_app).permit(:timestamp, :text)
		end
end
