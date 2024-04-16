class AvaliacaoInstrumentosController < ApplicationController
  before_action :set_avaliacao_instrumento, only: %i[ show edit update destroy ]

  # GET /avaliacao_instrumentos or /avaliacao_instrumentos.json
  def index
    @avaliacao = Avaliacao.find(params[:avaliacao_id])
    @avaliacao_instrumentos = @avaliacao.avaliacao_instrumentos
  end

  # GET /avaliacao_instrumentos/1 or /avaliacao_instrumentos/1.json
  def show
    if current_user
      @avaliacao = Avaliacao.find(params[:avaliacao_id])
    end
  end

  # GET /avaliacao_instrumentos/new
  def new
    @instrumentos = Instrumento.all
    @avaliacao = Avaliacao.find(params[:avaliacao_id])
    @avaliacao_instrumento = AvaliacaoInstrumento.new
  end

  # GET /avaliacao_instrumentos/1/edit
  def edit
    @avaliacao = Avaliacao.find(params[:avaliacao_id])
    @instrumentos = Instrumento.all
  end

  # POST /avaliacao_instrumentos or /avaliacao_instrumentos.json
  def create
    @avaliacao = Avaliacao.find(params[:avaliacao_id])
    @avaliacao_instrumento = @avaliacao.avaliacao_instrumentos.new(avaliacao_instrumento_params)

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

  def avaliado_response
    @avaliacao_instrumento = AvaliacaoInstrumento.find(params[:avaliacao_instrumento_id])
    respond_to do |format|
      if @avaliacao_instrumento.avaliados
        format.html { render :avaliado_response }
      else
        format.html { redirect_to new_avaliacao_instrumento_avaliado_path, notice: "complete your response" }
      end
    end
  end

  def update_score
    @avaliacao_instrumento = AvaliacaoInstrumento.find(params[:avaliacao_instrumento_id])
    score_total = 0;
    score_total += check_score(params[:avaliacao_instrumento][:pergunt_um])
    score_total += check_score(params[:avaliacao_instrumento][:pergunt_dois])
    score_total += check_score(params[:avaliacao_instrumento][:pergunt_tres])
    score_total += check_score(params[:avaliacao_instrumento][:pergunt_quatro])
    score_total += check_score(params[:avaliacao_instrumento][:pergunt_cinco])
    respond_to do |format|
      if @avaliacao_instrumento.update(estado: "finished", pontuacao: score_total)
        format.html { redirect_to avaliados_path, notice: "Avaliacao instrumento was successfully updated."}
      else
        format.html { render :avaliado_response, status: :unprocessable_entity }
      end
    end
  end

  def check_score(response)
    score = case response
    when 'Muito desconfortável' then 3
    when 'ligeiramente desconfortável' then 2
    when 'confortável' then 1
    when 'muito confortável' then 0
    end
    return score
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
      params.require(:avaliacao_instrumento).permit(:instrumento_id)
    end
end
