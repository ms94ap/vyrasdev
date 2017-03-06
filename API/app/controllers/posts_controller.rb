class PostsController < ApplicationController

	def index
		@posts = Post.all
		render json: @posts
	end

	def show
		@post = Post.find(params[:id])
		render json: @post
	end

	def new
		@post = Post.new
		render json: @post
	end

	def create
		@post = Post.create(post_params)
		render json: @post
	end

	def edit
		@post = Post.find_by(params[:id])
		render json: @post
	end

	def update
		@post = Post.find_by(params[:id])
		@post.update(post_params)
		render json: @post
	end

	def destroy
		@post = Post.find_by(params[:id])
		@post.destroy
		render json: @post
	end

	private

	def post_params
		params.require(:post).permit(:name, categories_attributes: [:name], tag_attributes: [:name])
	end

end