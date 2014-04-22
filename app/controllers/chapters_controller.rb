class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :edit, :update, :destroy]
  before_action :set_section

  # GET /chapters
  def index
    @chapters = @section.chapters
  end
  # GET /chapters/1
  def show
  end

  # GET /chapters/1/quiz
  def quiz
    @chapter = Chapter.find(params[:chapter_id])
  end

  # GET /chapters/new
  def new
    @chapter = @section.chapters.build
  end

  # GET /chapters/1/edit
  def edit
  end

  # POST /chapters
  def create
    @chapter = @section.chapters.build(chapter_params)
      if @chapter.save
        flash[:success] =  'Chapter was successfully created.'
        redirect_to section_chapter_path(@section, @chapter)
      else
        render action: 'new'
      end
  end

  # PATCH/PUT /chapters/1
  def update
    if @chapter.update(chapter_params)
      flash[:success] =  'Chapter was successfully updated.'
      redirect_to section_chapter_path(@section, @chapter)    
    else
      render action: 'edit'  
    end
  end

  # DELETE /chapters/1

  def destroy
    @chapter.destroy
    flash[:danger] = "Chapter successfully removed"
    redirect_to section_chapters_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    def set_section
      @section = Section.find(params[:section_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
      params.require(:chapter)
      .permit(:chapter_title, :chapter_number, :content, :author, :summary, :section_id,
        questions_attributes: [:id, :question, :chapter_id, :_destroy])
    end
end
