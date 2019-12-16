class FuckupsController < ApplicationController
  before_action :set_fuckup, only: [:show, :edit, :update, :destroy]

  # GET /fuckups
  # GET /fuckups.json
  def index
    @fuckups = Fuckup.all
  end

  # GET /fuckups/1
  # GET /fuckups/1.json
  def show
  end

  # GET /fuckups/new
  def new
    @fuckup = Fuckup.new
  end

  # GET /fuckups/1/edit
  def edit
  end

  # POST /fuckups
  # POST /fuckups.json
  def create
    @fuckup = Fuckup.new(fuckup_params)

    respond_to do |format|
      if @fuckup.save
        format.html { redirect_to @fuckup, notice: 'Fuckup was successfully created.' }
        format.json { render :show, status: :created, location: @fuckup }
      else
        format.html { render :new }
        format.json { render json: @fuckup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuckups/1
  # PATCH/PUT /fuckups/1.json
  def update
    respond_to do |format|
      if @fuckup.update(fuckup_params)
        format.html { redirect_to @fuckup, notice: 'Fuckup was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuckup }
      else
        format.html { render :edit }
        format.json { render json: @fuckup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuckups/1
  # DELETE /fuckups/1.json
  def destroy
    @fuckup.destroy
    respond_to do |format|
      format.html { redirect_to fuckups_url, notice: 'Fuckup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuckup
      @fuckup = Fuckup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuckup_params
      params.require(:fuckup).permit(:content)
    end
end
