class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def new
		@tag = Tag.new
	end

	def create
		@tag = Tag.create(tag_params)
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	def update
		@tag = Tag.find(params[:id])
		@tag.update(tag_params)
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		redirect_to tags_path(@tag)
	end

	private

	def tag_params
		params.require(:tag).permit(:name, :post_id)
	end 		

end