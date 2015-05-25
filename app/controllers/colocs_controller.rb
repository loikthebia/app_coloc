class ColocsController < ApplicationController
  before_action :set_coloc, only: [:show, :edit, :update, :destroy]

  # GET /colocs
  # GET /colocs.json
  def index
    @colocs = Coloc.all
    @users = User.all
  end

  # GET /colocs/1
  # GET /colocs/1.json
  def show
    @users = User.all
    if @coloc.id != current_user.coloc_id
      redirect_to colocs_path, alert: "Unauthorized"
    end
  end

  # GET /colocs/new
  def new
    @coloc = Coloc.new
  end

  # GET /colocs/1/edit
  def edit
    if @coloc.id != current_user.coloc_id
      redirect_to colocs_path, alert: "Unauthorized"
    end
  end

  # POST /colocs
  # POST /colocs.json
  def create
    @coloc = Coloc.new(coloc_params)
    @user = current_user

    respond_to do |format|
      if @coloc.save && @user.update(:coloc_id => @coloc.id)
        format.html { redirect_to @coloc, notice: 'Coloc was successfully created.' }
        format.json { render :show, status: :created, location: @coloc }
      else
        format.html { render :new }
        format.json { render json: @coloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colocs/1
  # PATCH/PUT /colocs/1.json
  def update
    if @coloc.users.count > coloc_params[:nb_habitants].to_i
      redirect_to edit_coloc_path, alert: 'Vous ne pouvez pas mettre un nombre dhabitants' and return
    end
    respond_to do |format|
      if @coloc.update(coloc_params)
        format.html { redirect_to @coloc, notice: 'Coloc was successfully updated.' }
        format.json { render :show, status: :ok, location: @coloc }
      else
        format.html { render :edit }
        format.json { render json: @coloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colocs/1
  # DELETE /colocs/1.json
  def destroy
    @coloc.destroy
    respond_to do |format|
      format.html { redirect_to colocs_url, notice: 'Coloc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coloc
      @coloc = Coloc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coloc_params
      params.require(:coloc).permit(:adress, :titre, :superficie, :nb_habitants, :nb_chambres, :loyer)
    end
end
