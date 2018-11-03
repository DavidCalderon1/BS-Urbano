class OperadoresController < ApplicationController
  before_action :set_operadore, only: [:show, :edit, :update, :destroy]

  # GET /operadores
  # GET /operadores.json
  def index
    @operadores = Operadore.all
  end

  # GET /operadores/1
  # GET /operadores/1.json
  def show
  end

  # GET /operadores/new
  def new
    @operadore = Operadore.new
  end

  # GET /operadores/1/edit
  def edit
  end

  # POST /operadores
  # POST /operadores.json
  def create
    @operadore = Operadore.new(operadore_params)

    respond_to do |format|
      if @operadore.save
        format.html { redirect_to @operadore, notice: 'Operadore was successfully created.' }
        format.json { render :show, status: :created, location: @operadore }
      else
        format.html { render :new }
        format.json { render json: @operadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operadores/1
  # PATCH/PUT /operadores/1.json
  def update
    respond_to do |format|
      if @operadore.update(operadore_params)
        format.html { redirect_to @operadore, notice: 'Operadore was successfully updated.' }
        format.json { render :show, status: :ok, location: @operadore }
      else
        format.html { render :edit }
        format.json { render json: @operadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operadores/1
  # DELETE /operadores/1.json
  def destroy
    @operadore.destroy
    respond_to do |format|
      format.html { redirect_to operadores_url, notice: 'Operadore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operadore
      @operadore = Operadore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operadore_params
      params.require(:operadore).permit(:nombre, :telefono, :email)
    end
end
