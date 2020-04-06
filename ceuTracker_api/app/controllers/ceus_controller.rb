class CeusController < ApplicationController
  before_action :set_ceu, only: [:show, :update, :destroy]

  # GET /ceus
  def index
    @ceus = Ceu.all

    render json: @ceus
  end

  # GET /ceus/1
  def show
    render json: @ceu
  end

  # POST /ceus
  def create
    @ceu = Ceu.new(ceu_params)

    if @ceu.save
      render json: @ceu, status: :created, location: @ceu
    else
      render json: @ceu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ceus/1
  def update
    if @ceu.update(ceu_params)
      render json: @ceu
    else
      render json: @ceu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ceus/1
  def destroy
    @ceu.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceu
      @ceu = Ceu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ceu_params
      params.require(:ceu).permit(:title, :number, :hours, :state, :instructor_name, :provider_name)
    end
end
