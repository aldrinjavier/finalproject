class PostsController < ApplicationController
before_filter :authorise
def create
	@album = Album.find params[:album_id]
	@post = @album.posts.create params[:post]
	@post.customer_id = @current_customer.id
	@post.save
	
		respond_to do |format|
			format.html{redirect_to @album}
			format.js
		end
end

end
