class Tabel5sController < ApplicationController
  before_action :set_tabel5, only: [:show, :edit, :update, :destroy]

  # GET /tabel5s
  # GET /tabel5s.json
  def index
    @tabel5s = Tabel5.all
  end

  # GET /tabel5s/1
  # GET /tabel5s/1.json
  def show
  end

  # GET /tabel5s/new
  def new
    @tabel5 = Tabel5.new
  end

  # GET /tabel5s/1/edit
  def edit
  end

  # POST /tabel5s
  # POST /tabel5s.json
  def create
    @tabel5 = Tabel5.new(tabel5_params)

    respond_to do |format|
      if @tabel5.save
        format.html { redirect_to @tabel5, notice: 'Tabel5 was successfully created.' }
        format.json { render :show, status: :created, location: @tabel5 }
      else
        format.html { render :new }
        format.json { render json: @tabel5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabel5s/1
  # PATCH/PUT /tabel5s/1.json
  def update
    respond_to do |format|
      if @tabel5.update(tabel5_params)
        format.html { redirect_to @tabel5, notice: 'Tabel5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @tabel5 }
      else
        format.html { render :edit }
        format.json { render json: @tabel5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabel5s/1
  # DELETE /tabel5s/1.json
  def destroy
    @tabel5.destroy
    respond_to do |format|
      format.html { redirect_to tabel5s_url, notice: 'Tabel5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tabel5
      @tabel5 = Tabel5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tabel5_params
      params.require(:tabel5).permit(:nume, :numar)
    end
end
