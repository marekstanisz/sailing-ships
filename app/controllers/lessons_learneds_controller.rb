class LessonsLearnedsController < ApplicationController
  before_action :set_lessons_learned, only: [:show, :edit, :update, :destroy]

  # GET /lessons_learneds
  # GET /lessons_learneds.json
  def index
    @lessons_learneds = LessonsLearned.all
  end

  # GET /lessons_learneds/1
  # GET /lessons_learneds/1.json
  def show
  end

  # GET /lessons_learneds/new
  def new
    @lessons_learned = LessonsLearned.new
  end

  # GET /lessons_learneds/1/edit
  def edit
  end

  # POST /lessons_learneds
  # POST /lessons_learneds.json
  def create
    @lessons_learned = LessonsLearned.new(lessons_learned_params)

    respond_to do |format|
      if @lessons_learned.save
        format.html { redirect_to @lessons_learned, notice: 'Lessons learned was successfully created.' }
        format.json { render :show, status: :created, location: @lessons_learned }
      else
        format.html { render :new }
        format.json { render json: @lessons_learned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons_learneds/1
  # PATCH/PUT /lessons_learneds/1.json
  def update
    respond_to do |format|
      if @lessons_learned.update(lessons_learned_params)
        format.html { redirect_to @lessons_learned, notice: 'Lessons learned was successfully updated.' }
        format.json { render :show, status: :ok, location: @lessons_learned }
      else
        format.html { render :edit }
        format.json { render json: @lessons_learned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons_learneds/1
  # DELETE /lessons_learneds/1.json
  def destroy
    @lessons_learned.destroy
    respond_to do |format|
      format.html { redirect_to lessons_learneds_url, notice: 'Lessons learned was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lessons_learned
      @lessons_learned = LessonsLearned.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lessons_learned_params
      params.require(:lessons_learned).permit(:content)
    end
end
