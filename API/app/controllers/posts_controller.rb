class PostsController < ApplicationController
	# before_action :require_login
	# skip_before_action :require_login, only: [:index, :show]

	def index
		@posts = Post.all
		render json: @posts
	end

	def show
		@post = Post.find(params[:id])
		render json: @post
	end

	def create
		@post = Post.new(posts_param)
		render json: @post
	end

	def edit
		@post = Post.find_by(params[:id])
		render json: @post
	end

	def update
		@post = Post.find_by(params[:id])
		@post.update(posts_params)
		render json: @post
	end

	def destroy
		@post = Post.find_by(params[:id])
		@post.destroy
		render json: @post
	end

	private

	def posts_params
		params.require(:post).permit(:name)
	end

	# def require_login
 #    return head(:forbidden) unless session.include? :user_id
 #  end

end