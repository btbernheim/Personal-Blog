class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render 'new' # use render instead of redirect for forms that have data that can be lost if .save fails
		end
	end

	def show
		@post = Post.find(params[:id])
		# @errors = @post.errors.full_messages
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
