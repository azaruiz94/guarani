class InmueblesController < ApplicationController
  before_action :set_inmueble, only: [:show, :edit, :update, :destroy]

  # GET /inmuebles
  # GET /inmuebles.json
  def index
    @inmuebles= Inmueble.where("servicio_id = ? and tipo_inmueble_id= ? and distrito_id = ?", params[:servicio_id], params[:tipo_inmueble_id], params[:distrito_id]).paginate(:per_page => 21, :page => params[:page])
  end

  # GET /inmuebles/1
  # GET /inmuebles/1.json
  def show
  end

  # GET /inmuebles/new
  def new
    @inmueble = Inmueble.new
  end

  # GET /inmuebles/1/edit
  def edit
  end

  # POST /inmuebles
  # POST /inmuebles.json
  def create
    @inmueble = Inmueble.new(inmueble_params)

    respond_to do |format|
      if @inmueble.save
        format.html { redirect_to @inmueble, notice: 'Inmueble was successfully created.' }
        format.json { render :show, status: :created, location: @inmueble }
      else
        format.html { render :new }
        format.json { render json: @inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inmuebles/1
  # PATCH/PUT /inmuebles/1.json
  def update
    respond_to do |format|
      if @inmueble.update(inmueble_params)
        format.html { redirect_to @inmueble, notice: 'Inmueble was successfully updated.' }
        format.json { render :show, status: :ok, location: @inmueble }
      else
        format.html { render :edit }
        format.json { render json: @inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inmuebles/1
  # DELETE /inmuebles/1.json
  def destroy
    @inmueble.destroy
    respond_to do |format|
      format.html { redirect_to inmuebles_url, notice: 'Inmueble was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inmueble
      @inmueble = Inmueble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inmueble_params
      params.require(:inmueble).permit(:nombre, :direccion, :codigo, :servicio_id, :tipo_inmueble_id, :distrito_id)
    end
end
