class DanhmucsController < ApplicationController
  before_action :set_danhmuc, only: %i[ show edit update destroy ]

  # GET /danhmucs or /danhmucs.json
  def index
    @danhmucs = Danhmuc.all
  end

  # GET /danhmucs/1 or /danhmucs/1.json
  def show
  end

  # GET /danhmucs/new
  def new
    @danhmuc = Danhmuc.new
  end

  # GET /danhmucs/1/edit
  def edit
  end

  # POST /danhmucs or /danhmucs.json
  def create
    @danhmuc = Danhmuc.new(danhmuc_params)

    respond_to do |format|
      if @danhmuc.save
        format.html {redirect_to @danhmuc, notice: "Danhmuc was successfully created." }
        format.json { render :show, status: :created, location: @danhmuc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @danhmuc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danhmucs/1 or /danhmucs/1.json
  def update
    respond_to do |format|
      if @danhmuc.update(danhmuc_params)
        format.html { redirect_to admins_path, notice: "" }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @danhmuc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danhmucs/1 or /danhmucs/1.json
  def destroy
    @danhmuc.destroy
    respond_to do |format|
      format.html { redirect_to admins_path, notice: "" }
      format.json { head :no_content }

     
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danhmuc
      @danhmuc = Danhmuc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def danhmuc_params
      params.require(:danhmuc).permit(:tendanhmuc)
    end
end
