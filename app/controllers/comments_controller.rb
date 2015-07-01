class CommentsController < ApplicationController
	def create
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comments.build(comment_params)

		if @comment.save(comment_params)
			redirect_to user_photo_path(current_user, @photo)
		else
			render 'form'
		end
	end

	def update
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comment.find(comment_params)

		if @comment.update(comment_params)
			redirect_to user_photo_path(current_user, @photo)
		else
			render 'edit'
		end
	end

	def destroy
		@photo = Photo.find(params[:photo_id])
		@comment = @photo.comments.find(params[:id])
		@comment.destroy
		redirect_to user_photo_path(current_user, @photo)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end

