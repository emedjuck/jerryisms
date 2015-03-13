class JerryismsController < ApplicationController
  before_action :set_jerryism, only: [:show, :edit, :update, :destroy]

  # GET /jerryisms
  # GET /jerryisms.json
  def index
    @jerryisms = Jerryism.all.shuffle
  end

  # GET /jerryisms/1
  # GET /jerryisms/1.json
  def show
  end

  # GET /jerryisms/new
  def new
    @jerryism = Jerryism.new
  end

  # GET /jerryisms/1/edit
  def edit
  end

  # POST /jerryisms
  # POST /jerryisms.json
  def create
    @jerryism = Jerryism.new(jerryism_params)

    respond_to do |format|
      if @jerryism.save
        format.html { redirect_to jerryisms_path, notice: 'Jerryism was successfully created.' }
        format.json { render :show, status: :created, location: @jerryism }
      else
        format.html { render :new }
        format.json { render json: @jerryism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jerryisms/1
  # PATCH/PUT /jerryisms/1.json
  def update
    respond_to do |format|
      if @jerryism.update(jerryism_params)
        format.html { redirect_to @jerryism, notice: 'Jerryism was successfully updated.' }
        format.json { render :show, status: :ok, location: @jerryism }
      else
        format.html { render :edit }
        format.json { render json: @jerryism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jerryisms/1
  # DELETE /jerryisms/1.json
  def destroy
    @jerryism.destroy
    respond_to do |format|
      format.html { redirect_to jerryisms_url, notice: 'Jerryism was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jerryism
      @jerryism = Jerryism.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jerryism_params
      params.require(:jerryism).permit(:text, :created_by)
    end
end
