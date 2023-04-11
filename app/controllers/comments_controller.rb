class CommentsController < ApplicationController
  before_action :find_store, only: [:create]
  before_action :find_comment, only: [:edit, :update, :destroy]

   def create
     @comment = @store.comments.new(comment_params)

     if @comment.save
       redirect_to store_path(@store), notice: '新增評論成功'
     else
       @comments = @store.comments
       render 'stores/show'
     end
   end

   def edit
   end

   def update
   end

   def destroy
     @comment.destroy
     redirect_to store_path(@comment.store), notice: '評論已刪除'
   end

   private

   def find_comment
     @comment = Comment.find(params[:id])
   end

   def find_store
     @store = Store.find(params[:store_id])
   end

   def comment_params
     params.require(:comment).permit(:content)
   end


end
