class TruyensController < ApplicationController
  before_action :set_truyen, only: %i[ show edit update destroy ]

  # GET /truyens or /truyens.json
  def index
    @truyens = Truyen.all
    @danhmucs = Danhmuc.all
    @users = User.all
    @truyens = Truyen.search(params[:term])
    @truyens2 = Truyen.where(iddanhmuc:2)
    @truyens1 = Truyen.where(iddanhmuc:1)   
    @user = User.find_by id: params[:id]
    
  end

  # GET /truyens/1 or /truyens/1.json
  def show
    
    @users = User.all
    @truyens = Truyen.all
    @danhmucs = Danhmuc.all
    @truyens = Truyen.search(params[:term])
   

   

  end

  # GET /truyens/new
  def new
    @truyen = Truyen.new
    

  end

  # GET /truyens/1/edit
  def edit
  end
  def truyen_params
    params.require(:truyen).permit(:term)
  end

  # POST /truyens or /truyens.json
  def create
    @truyen = Truyen.new(truyen_params)
   
    
    
    respond_to do |format|
      if @truyen.save
        format.html { redirect_to truyens_path, notice: "Truyen was successfully updated." }
        format.json { head :no_content }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @truyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truyens/1 or /truyens/1.json
  def update
    respond_to do |format|
      if @truyen.update(truyen_params)
        format.html { redirect_to admins_path }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @truyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truyens/1 or /truyens/1.json
  def destroy
    @truyen.destroy
    respond_to do |format|
      format.html { redirect_to truyens_path, notice: "Truyen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truyen
      @truyen = Truyen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truyen_params
      params.require(:truyen).permit(:tentruyen, :mota, :noidung, :iddanhmuc, :thoiluong, :anh)
    end
end
