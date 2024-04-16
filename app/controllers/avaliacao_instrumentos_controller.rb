class AvaliacaoInstrumentosController < ApplicationController
  before_action :set_avaliacao_instrumento, only: %i[ show edit update destroy ]

  # GET /avaliacao_instrumentos or /avaliacao_instrumentos.json
  def index
    @avaliacao_instrumentos = AvaliacaoInstrumento.all
  end

  # GET /avaliacao_instrumentos/1 or /avaliacao_instrumentos/1.json
  def show
  end

  # GET /avaliacao_instrumentos/new
  def new
    @avaliacao_instrumento = AvaliacaoInstrumento.new
  end

  # GET /avaliacao_instrumentos/1/edit
  def edit
  end

  # POST /avaliacao_instrumentos or /avaliacao_instrumentos.json
  def create
    @avaliacao_instrumento = AvaliacaoInstrumento.new(avaliacao_instrumento_params)

    respond_to do |format|
      if @avaliacao_instrumento.save
        format.html { redirect_to avaliacao_instrumento_url(@avaliacao_instrumento), notice: "Avaliacao instrumento was successfully created." }
        format.json { render :show, status: :created, location: @avaliacao_instrumento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avaliacao_instrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliacao_instrumentos/1 or /avaliacao_instrumentos/1.json
  def update
    respond_to do |format|
      if @avaliacao_instrumento.update(avaliacao_instrumento_params)
        format.html { redirect_to avaliacao_instrumento_url(@avaliacao_instrumento), notice: "Avaliacao instrumento was successfully updated." }
        format.json { render :show, status: :ok, location: @avaliacao_instrumento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avaliacao_instrumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacao_instrumentos/1 or /avaliacao_instrumentos/1.json
  def destroy
    @avaliacao_instrumento.destroy!

    respond_to do |format|
      format.html { redirect_to avaliacao_instrumentos_url, notice: "Avaliacao instrumento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliacao_instrumento
      @avaliacao_instrumento = AvaliacaoInstrumento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avaliacao_instrumento_params
      params.require(:avaliacao_instrumento).permit(:avaliacao_id, :instrumento_id)
    end
end
