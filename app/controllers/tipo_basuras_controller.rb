class TipoBasurasController < ApplicationController
  before_action :set_tipo_basura, only: [:show, :edit, :update, :destroy]

  # GET /tipo_basuras
  # GET /tipo_basuras.json
  def index
    @tipo_basuras = TipoBasura.all
  end

  # GET /tipo_basuras/1
  # GET /tipo_basuras/1.json
  def show
  end

  # GET /tipo_basuras/new
  def new
    @tipo_basura = TipoBasura.new
  end

  # GET /tipo_basuras/1/edit
  def edit
  end

  # POST /tipo_basuras
  # POST /tipo_basuras.json
  def create
    @tipo_basura = TipoBasura.new(tipo_basura_params)

    respond_to do |format|
      if @tipo_basura.save
        format.html { redirect_to @tipo_basura, notice: 'Tipo basura was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_basura }
      else
        format.html { render :new }
        format.json { render json: @tipo_basura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_basuras/1
  # PATCH/PUT /tipo_basuras/1.json
  def update
    respond_to do |format|
      if @tipo_basura.update(tipo_basura_params)
        format.html { redirect_to @tipo_basura, notice: 'Tipo basura was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_basura }
      else
        format.html { render :edit }
        format.json { render json: @tipo_basura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_basuras/1
  # DELETE /tipo_basuras/1.json
  def destroy
    @tipo_basura.destroy
    respond_to do |format|
      format.html { redirect_to tipo_basuras_url, notice: 'Tipo basura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_basura
      @tipo_basura = TipoBasura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_basura_params
      params.require(:tipo_basura).permit(:nombre, :foto, :descripcion)
    end
end
