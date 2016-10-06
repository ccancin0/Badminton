class TalentAgentsController < ApplicationController
  before_action :set_talent_agent, only: [:show, :edit, :update, :destroy]

  # GET /talent_agents
  # GET /talent_agents.json
  def index
    @talent_agents = TalentAgent.all
  end

  # GET /talent_agents/1
  # GET /talent_agents/1.json
  def show
  end

  # GET /talent_agents/new
  def new
    @talent_agent = TalentAgent.new
  end

  # GET /talent_agents/1/edit
  def edit
  end

  # POST /talent_agents
  # POST /talent_agents.json
  def create
    @talent_agent = TalentAgent.new(talent_agent_params)

    respond_to do |format|
      if @talent_agent.save
        format.html { redirect_to @talent_agent, notice: 'Talent agent was successfully created.' }
        format.json { render :show, status: :created, location: @talent_agent }
      else
        format.html { render :new }
        format.json { render json: @talent_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talent_agents/1
  # PATCH/PUT /talent_agents/1.json
  def update
    respond_to do |format|
      if @talent_agent.update(talent_agent_params)
        format.html { redirect_to @talent_agent, notice: 'Talent agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @talent_agent }
      else
        format.html { render :edit }
        format.json { render json: @talent_agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talent_agents/1
  # DELETE /talent_agents/1.json
  def destroy
    @talent_agent.destroy
    respond_to do |format|
      format.html { redirect_to talent_agents_url, notice: 'Talent agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_talent_agent
      @talent_agent = TalentAgent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def talent_agent_params
      params.require(:talent_agent).permit(:first_name, :last_name, :dob, :pitch)
    end
end
