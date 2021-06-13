class VideosController < ApplicationController
  # before 필터로 []괄호 안 action들을 수행하기 위해서는 로그인해야지만 수행가능하도록 설정. (보기show와 목록 페이지는 로그인안해도 볼 수 있도록함.)
  before_action :authenticate_user!, only: [:create, :new, :edit, :update, :destroy]
  before_action :set_video, only: %i[ show edit update destroy ]
  # edit,update,destory를 함에 있어서  사용자를 체크할 것입니다.
  before_action :check_owner, only: [:edit, :update, :destroy]

  # GET /videos or /videos.json
  def index
    @videos = Video.all
    # q 파라미터가 있을 경우에만 아래의 query가 날아갑니다.
    # postgresql 에서는 대소문자 구별을 엄격히 하기 때문에 like 대신에 ilke를 사용해줍니다.
    @videos = @videos.where("title like ?", "%#{params[:q]}%") if params[:q].present?
    # page라는 파라미터를 받고, 한 페이지에 4개가 나오도록 설정
    @videos = @videos.page(params[:page]).per(4)
  end

  # GET /videos/1 or /videos/1.json
  def show
    # 호출될때마다 조회수를 1씩올림
    @video.increment!(:view_count)
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos or /videos.json
  def create
    @video = Video.new(video_params)
    # validation을 통과하게끔 controller에서 user정보를 넣어줍니다. (현재 로그인한 user정보를 넣어줍니다.)
    @video.user = current_user

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: "Video was successfully created." }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1 or /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: "Video was successfully updated." }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1 or /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: "Video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # 허용하는 파라미터에서 user_id와 view_count는 삭제 하고 file과 image를 허용합니다.
    def video_params
      # params.require(:video).permit(:title, :description, :user_id, :view_count)
      params.require(:video).permit(:title, :description, :file, :image)
    end

    def check_owner
      #  video의 작성자가 현재 유저가 아니라면 홈페이지로 보내버립니다.
      redirect_to root_path unless @video.user == current_user
    end 
end
