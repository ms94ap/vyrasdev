class PagesController < ApplicationController

	def index
		@pages = Page.all
		render :index
	end

	def show
		@page = Page.find(params[:id])
		
	end

	def create
		@page = Page.new(pages_param)
	end

	def edit
		@page = Page.find_by(params[:id])		
	end

	def update
		@page = Page.find_by(params[:id])
		@page.update(pages_params)
	end

	def destroy
		@page = Page.find_by(params[:id])
		@page.destroy
	end

	private

	def pages_params
		params.require(:page).permit(:title)
	end 		

end
