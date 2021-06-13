class CommentsController < ApplicationController
  # 로그인을 강제하는 before action을 걸어줍니다.
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.create(comment_params)
    @video = @comment.video
  end 

  def destroy
    # @comment = Comment.find params[:id]
    # 작성자 본인만 삭제할 수 있어야 하도록 설정합니다. 없으면 에러가날것입니다.(권한만 설정하고 예외처리하지 않았기 때문입니다.)
    @comment = current_user.comments.find params[:id]
    # video를 인스턴스 변수(@변수) 에 담아주어야합니다. 그래야 파샬이 제대로 그려질 수 있습니다.
    @video = @comment.video
    @comment.destroy
  end 

  private

  def comment_params
    params.require(:comment).permit(:body, :video_id)
  end 
end
