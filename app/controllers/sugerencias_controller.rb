class SugerenciasController < ApplicationController
  before_action :set_sugerencia, only: [:show, :edit, :update, :destroy]

  # GET /sugerencias
  # GET /sugerencias.json
  def index
    @sugerencias = Sugerencias.all
  end

  # GET /sugerencias/1
  # GET /sugerencias/1.json
  def show
  end

  # GET /sugerencias/new
  def new
    @sugerencia = Sugerencias.new
  end

  # GET /sugerencias/1/edit
  def edit
  end

  # POST /sugerencias
  # POST /sugerencias.json
  def create
    @sugerencia = Sugerencias.new(sugerencia_params)

    respond_to do |format|
      if @sugerencia.save
        format.html { redirect_to @sugerencia, notice: 'Sugerencias was successfully created.' }
        format.json { render :show, status: :created, location: @sugerencia }
      else
        format.html { render :new }
        format.json { render json: @sugerencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sugerencias/1
  # PATCH/PUT /sugerencias/1.json
  def update
    respond_to do |format|
      if @sugerencia.update(sugerencia_params)
        format.html { redirect_to @sugerencia, notice: 'Sugerencias was successfully updated.' }
        format.json { render :show, status: :ok, location: @sugerencia }
      else
        format.html { render :edit }
        format.json { render json: @sugerencia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sugerencias/1
  # DELETE /sugerencias/1.json
  def destroy
    @sugerencia.destroy
    respond_to do |format|
      format.html { redirect_to sugerencias_index_url, notice: 'Sugerencias was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sugerencia
      @sugerencia = Sugerencias.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sugerencia_params
      params.fetch(:sugerencia, {})
    end
end
