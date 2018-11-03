class GarbageTypesController < ApplicationController
  before_action :set_garbage_type, only: [:show, :edit, :update, :destroy]

  # GET /garbage_types
  # GET /garbage_types.json
  def index
    @garbage_types = GarbageType.all
  end

  # GET /garbage_types/1
  # GET /garbage_types/1.json
  def show
  end

  # GET /garbage_types/new
  def new
    @garbage_type = GarbageType.new
  end

  # GET /garbage_types/1/edit
  def edit
  end

  # POST /garbage_types
  # POST /garbage_types.json
  def create
    @garbage_type = GarbageType.new(garbage_type_params)

    respond_to do |format|
      if @garbage_type.save
        format.html { redirect_to @garbage_type, notice: 'Garbage type was successfully created.' }
        format.json { render :show, status: :created, location: @garbage_type }
      else
        format.html { render :new }
        format.json { render json: @garbage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garbage_types/1
  # PATCH/PUT /garbage_types/1.json
  def update
    respond_to do |format|
      if @garbage_type.update(garbage_type_params)
        format.html { redirect_to @garbage_type, notice: 'Garbage type was successfully updated.' }
        format.json { render :show, status: :ok, location: @garbage_type }
      else
        format.html { render :edit }
        format.json { render json: @garbage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garbage_types/1
  # DELETE /garbage_types/1.json
  def destroy
    @garbage_type.destroy
    respond_to do |format|
      format.html { redirect_to garbage_types_url, notice: 'Garbage type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garbage_type
      @garbage_type = GarbageType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garbage_type_params
      params.require(:garbage_type).permit(:name, :picture, :description)
    end
end
