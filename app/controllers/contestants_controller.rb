class ContestantsController < ApplicationController
  before_action :set_contestant, only: %i[ show edit update destroy ]

  # GET /contestants or /contestants.json
  def index
    @contestants = Contestant.all
  end

  # GET /contestants/1 or /contestants/1.json
  def show
  end

  # GET /contestants/new
  def new
    @contestant = Contestant.new
  end

  # GET /contestants/1/edit
  def edit
  end

  # POST /contestants or /contestants.json
  def create
    @contestant = Contestant.new(contestant_params)

    @contestant.created_by = current_user

    if params[:new_division_name].present?
      division = lookup_or_create_division(params[:new_division_name])
      @contestant.divisions << division
    end

    respond_to do |format|
      if @contestant.save
        format.html { redirect_to contestant_url(@contestant), notice: "Contestant was successfully created." }
        format.json { render :show, status: :created, location: @contestant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contestants/1 or /contestants/1.json
  def update

    local_params = contestant_params

    if params[:new_division_name].present?
      division = lookup_or_create_division(params[:new_division_name])
      local_params[:division_ids] << division.id.to_s
    end
    
    respond_to do |format|
      if @contestant.update(local_params)
        format.html { redirect_to contestant_url(@contestant), notice: "Contestant was successfully updated." }
        format.json { render :show, status: :ok, location: @contestant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contestant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contestants/1 or /contestants/1.json
  def destroy
    @contestant.events.clear unless @contestant.events.empty?
    @contestant.divisions.clear unless @contestant.divisions.empty?
    @contestant.destroy

    respond_to do |format|
      format.html { redirect_to contestants_url, notice: "Contestant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def lookup_or_create_division(name)
      Division.find_by("LOWER(name) = ?", name.downcase) || Division.create(name: name)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_contestant
      @contestant = Contestant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contestant_params
      params.require(:contestant).permit(:name, :birthdate, :image, :arrival_date, :details, division_ids: [], new_division_name: [])
    end
end
