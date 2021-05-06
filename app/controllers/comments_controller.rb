class CommentsController < ApplicationController
      def create
             @truyen = Truyen.find(params[:truyen_id])
             @comment = @truyen.comments.create(comment_params)
             redirect_to truyen_path(@truyen)
      end

      private def comment_params
          params.require(:comment).permit(:username,:body)
      end
end
