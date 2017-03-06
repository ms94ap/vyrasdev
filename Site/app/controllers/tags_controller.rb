class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def create
		@tag = Tag.new(tags_param)
	end

	def edit
		@tag = Tag.find_by(params[:id])
	end

	def update
		@tag = Tag.find_by(params[:id])
		@tag.update(tags_params)
	end

	def destroy
		@tag = Tag.find_by(params[:id])
		@tag.destroy
	end

	private

	def tags_params
		params.require(:tag).permit(:name)
	end 		

end