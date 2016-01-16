class VideoContentsController < ApplicationController
  before_action :set_video_content, only: [:show, :edit, :update, :destroy]

  # GET /video_contents
  # GET /video_contents.json
  def index
    @video_contents = VideoContent.all
  end

  # GET /video_contents/1
  # GET /video_contents/1.json
  def show
  end

  # GET /video_contents/new
  def new
    @video_content = VideoContent.new
  end

  # GET /video_contents/1/edit
  def edit
  end

  # POST /video_contents
  # POST /video_contents.json
  def create
    @video_content = VideoContent.new(video_content_params)

    respond_to do |format|
      if @video_content.save
        format.html { redirect_to @video_content, notice: 'Video content was successfully created.' }
        format.json { render :show, status: :created, location: @video_content }
      else
        format.html { render :new }
        format.json { render json: @video_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_contents/1
  # PATCH/PUT /video_contents/1.json
  def update
    respond_to do |format|
      if @video_content.update(video_content_params)
        format.html { redirect_to @video_content, notice: 'Video content was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_content }
      else
        format.html { render :edit }
        format.json { render json: @video_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_contents/1
  # DELETE /video_contents/1.json
  def destroy
    @video_content.destroy
    respond_to do |format|
      format.html { redirect_to video_contents_url, notice: 'Video content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_content
      @video_content = VideoContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_content_params
      prm = params.require(:video_content).permit(:videoUrl, :script)
      prm[:user_id] = current_user.id
      return prm
    end
end
