class EasesController < ApplicationController
  before_action :set_ease, only: [:show, :edit, :update, :destroy]

  # GET /eases
  # GET /eases.json
  def index
    @eases = Ease.all
  end

  # GET /eases/1
  # GET /eases/1.json
  def show
  end

  # GET /eases/new
  def new
    @ease = Ease.new
  end

  # GET /eases/1/edit
  def edit
  end

  # POST /eases
  # POST /eases.json
  def create
    @ease = Ease.new(ease_params)

    respond_to do |format|
      if @ease.save
        format.html { redirect_to @ease, notice: 'Ease was successfully created.' }
        format.json { render :show, status: :created, location: @ease }
      else
        format.html { render :new }
        format.json { render json: @ease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eases/1
  # PATCH/PUT /eases/1.json
  def update
    respond_to do |format|
      if @ease.update(ease_params)
        format.html { redirect_to @ease, notice: 'Ease was successfully updated.' }
        format.json { render :show, status: :ok, location: @ease }
      else
        format.html { render :edit }
        format.json { render json: @ease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eases/1
  # DELETE /eases/1.json
  def destroy
    @ease.destroy
    respond_to do |format|
      format.html { redirect_to eases_url, notice: 'Ease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ease
      @ease = Ease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ease_params
      params.require(:ease).permit(:name)
    end
end
