class ProjecttabsController < ApplicationController
  before_action :set_projecttab, only: %i[ show edit update destroy ]

  # GET /projecttabs or /projecttabs.json
  def index
    @projecttabs = Projecttab.all
  end

  # GET /projecttabs/1 or /projecttabs/1.json
  def show
  end

  # GET /projecttabs/new
  def new
    @projecttab = Projecttab.new
  end

  # GET /projecttabs/1/edit
  def edit
  end

  # POST /projecttabs or /projecttabs.json
  def create
    @projecttab = Projecttab.new(projecttab_params)

    respond_to do |format|
      if @projecttab.save
        format.html { redirect_to @projecttab, notice: "Projecttab was successfully created." }
        format.json { render :show, status: :created, location: @projecttab }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @projecttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projecttabs/1 or /projecttabs/1.json
  def update
    respond_to do |format|
      if @projecttab.update(projecttab_params)
        format.html { redirect_to @projecttab, notice: "Projecttab was successfully updated." }
        format.json { render :show, status: :ok, location: @projecttab }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @projecttab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projecttabs/1 or /projecttabs/1.json
  def destroy
    @projecttab.destroy
    respond_to do |format|
      format.html { redirect_to projecttabs_url, notice: "Projecttab was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projecttab
      @projecttab = Projecttab.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projecttab_params
      params.require(:projecttab).permit(:name, :description)
    end
end
