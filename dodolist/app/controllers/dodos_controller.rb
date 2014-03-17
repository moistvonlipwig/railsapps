class DodosController < ApplicationController
  before_action :set_dodo, only: [:show, :edit, :update, :destroy]

  # GET /dodos
  # GET /dodos.json
  def index
    @dodos = Dodo.all
  end

  # GET /dodos/1
  # GET /dodos/1.json
  def show
  end

  # GET /dodos/new
  def new
    @dodo = Dodo.new
  end

  # GET /dodos/1/edit
  def edit
  end

  # POST /dodos
  # POST /dodos.json
  def create
    @dodo = Dodo.new(dodo_params)

    respond_to do |format|
      if @dodo.save
        format.html { redirect_to @dodo, notice: 'Dodo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dodo }
      else
        format.html { render action: 'new' }
        format.json { render json: @dodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dodos/1
  # PATCH/PUT /dodos/1.json
  def update
    respond_to do |format|
      if @dodo.update(dodo_params)
        format.html { redirect_to @dodo, notice: 'Dodo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dodos/1
  # DELETE /dodos/1.json
  def destroy
    @dodo.destroy
    respond_to do |format|
      format.html { redirect_to dodos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dodo
      @dodo = Dodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dodo_params
      params.require(:dodo).permit(:name)
    end
end
