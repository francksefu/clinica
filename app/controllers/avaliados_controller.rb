class AvaliadosController < ApplicationController
  before_action :set_avaliado, only: %i[ show edit update destroy ]

  # GET /avaliados or /avaliados.json
  def index
    @avaliados = Avaliado.all
  end

  # GET /avaliados/1 or /avaliados/1.json
  def show
  end

  # GET /avaliados/new
  def new
    @avaliado = Avaliado.new
  end

  # GET /avaliados/1/edit
  def edit
  end

  # POST /avaliados or /avaliados.json
  def create
    @avaliado = Avaliado.new(avaliado_params)

    respond_to do |format|
      if @avaliado.save
        format.html { redirect_to avaliado_url(@avaliado), notice: "Avaliado was successfully created." }
        format.json { render :show, status: :created, location: @avaliado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avaliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliados/1 or /avaliados/1.json
  def update
    respond_to do |format|
      if @avaliado.update(avaliado_params)
        format.html { redirect_to avaliado_url(@avaliado), notice: "Avaliado was successfully updated." }
        format.json { render :show, status: :ok, location: @avaliado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avaliado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliados/1 or /avaliados/1.json
  def destroy
    @avaliado.destroy!

    respond_to do |format|
      format.html { redirect_to avaliados_url, notice: "Avaliado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliado
      @avaliado = Avaliado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avaliado_params
      params.require(:avaliado).permit(:nome, :cpf, :email, :data_de_nascimento)
    end
end
