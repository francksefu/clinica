class AvaliacaosController < ApplicationController
  before_action :set_avaliacao, only: %i[ show edit update destroy ]
  before_action :require_loggin
  # GET /avaliacaos or /avaliacaos.json
  def index
    @avaliacaos = Avaliacao.all
  end

  # GET /avaliacaos/1 or /avaliacaos/1.json
  def show
  end

  # GET /avaliacaos/new
  def new
    @avaliacao = Avaliacao.new
  end

  # GET /avaliacaos/1/edit
  def edit
  end

  # POST /avaliacaos or /avaliacaos.json
  def create
    @avaliacao = current_user.avaliacaos.new(avaliacao_params)

    respond_to do |format|
      if @avaliacao.save
        format.html { redirect_to avaliacao_url(@avaliacao), notice: "Avaliacao was successfully created." }
        format.json { render :show, status: :created, location: @avaliacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avaliacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliacaos/1 or /avaliacaos/1.json
  def update
    respond_to do |format|
      if @avaliacao.update(avaliacao_params)
        format.html { redirect_to avaliacao_url(@avaliacao), notice: "Avaliacao was successfully updated." }
        format.json { render :show, status: :ok, location: @avaliacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avaliacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacaos/1 or /avaliacaos/1.json
  def destroy
    @avaliacao.destroy!

    respond_to do |format|
      format.html { redirect_to avaliacaos_url, notice: "Avaliacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliacao
      @avaliacao = Avaliacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avaliacao_params
      params.require(:avaliacao).permit(:nome, :cpf, :email, :data_de_nascimento)
    end

    def require_loggin
      return if current_user
  
      redirect_to homes_path
    end
end
