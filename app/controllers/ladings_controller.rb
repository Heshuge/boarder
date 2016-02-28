class LadingsController < ApplicationController
  before_action :set_lading, only: [:show, :edit, :update, :destroy]

  # GET /ladings
  # GET /ladings.json
  def index
    @ladings = Lading.all
  end

  # GET /ladings/1
  # GET /ladings/1.json
  def show
  end

  # GET /ladings/new
  def new
    @lading = Lading.new
  end

  # GET /ladings/1/edit
  def edit
  end

  # POST /ladings
  # POST /ladings.json
  def create
    @lading = Lading.new(lading_params)

    respond_to do |format|
      if @lading.save
        format.html { redirect_to @lading, notice: 'Lading was successfully created.' }
        format.json { render :show, status: :created, location: @lading }
      else
        format.html { render :new }
        format.json { render json: @lading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ladings/1
  # PATCH/PUT /ladings/1.json
  def update
    respond_to do |format|
      if @lading.update(lading_params)
        format.html { redirect_to @lading, notice: 'Lading was successfully updated.' }
        format.json { render :show, status: :ok, location: @lading }
      else
        format.html { render :edit }
        format.json { render json: @lading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ladings/1
  # DELETE /ladings/1.json
  def destroy
    @lading.destroy
    respond_to do |format|
      format.html { redirect_to ladings_url, notice: 'Lading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lading
      @lading = Lading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lading_params
      params.fetch(:lading, {})
    end
end
