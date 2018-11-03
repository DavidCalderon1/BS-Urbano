class NotificacionesController < ApplicationController
  before_action :set_notificacione, only: [:show, :edit, :update, :destroy]

  # GET /notificaciones
  # GET /notificaciones.json
  def index
    @notificaciones = Notificacione.all
  end

  # GET /notificaciones/1
  # GET /notificaciones/1.json
  def show
  end

  # GET /notificaciones/new
  def new
    @notificacione = Notificacione.new
  end

  # GET /notificaciones/1/edit
  def edit
  end

  # POST /notificaciones
  # POST /notificaciones.json
  def create
    @notificacione = Notificacione.new(notificacione_params)

    respond_to do |format|
      if @notificacione.save
        format.html { redirect_to @notificacione, notice: 'Notificacione was successfully created.' }
        format.json { render :show, status: :created, location: @notificacione }
      else
        format.html { render :new }
        format.json { render json: @notificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notificaciones/1
  # PATCH/PUT /notificaciones/1.json
  def update
    respond_to do |format|
      if @notificacione.update(notificacione_params)
        format.html { redirect_to @notificacione, notice: 'Notificacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @notificacione }
      else
        format.html { render :edit }
        format.json { render json: @notificacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificaciones/1
  # DELETE /notificaciones/1.json
  def destroy
    @notificacione.destroy
    respond_to do |format|
      format.html { redirect_to notificaciones_url, notice: 'Notificacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificacione
      @notificacione = Notificacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notificacione_params
      params.require(:notificacione).permit(:caso_id, :usuario_id, :visto)
    end
end
