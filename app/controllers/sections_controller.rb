class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]

  # GET /sections
  def index
    @sections = Section.all
  end

  # GET /sections/1
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections
  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:success] =  'Section was successfully created.'
      redirect_to @section
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /sections/1
  def update
      if @section.update(section_params)
        flash[:success] =  'Section was successfully updated.'
        redirect_to @section
      else
        render action: 'edit'
      end
  end

  # DELETE /sections/1
  def destroy
    @section.destroy
    flash[:danger] =  'Section was successfully deleted.'
    redirect_to sections_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:section_title, :section_number)
    end
end
