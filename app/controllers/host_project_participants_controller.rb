class HostProjectParticipantsController < ApplicationController
  # GET /host_project_participants
  # GET /host_project_participants.json
  def index
    @host_project_participants = HostProjectParticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @host_project_participants }
    end
  end

  # GET /host_project_participants/1
  # GET /host_project_participants/1.json
  def show
    @host_project_participant = HostProjectParticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @host_project_participant }
    end
  end

  # GET /host_project_participants/new
  # GET /host_project_participants/new.json
  def new
    @host_project_participant = HostProjectParticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @host_project_participant }
    end
  end

  # GET /host_project_participants/1/edit
  def edit
    @host_project_participant = HostProjectParticipant.find(params[:id])
  end

  # POST /host_project_participants
  # POST /host_project_participants.json
  def create
    @host_project_participant = HostProjectParticipant.new(params[:host_project_participant])

    respond_to do |format|
      if @host_project_participant.save
        format.html { redirect_to @host_project_participant, notice: 'Host project participant was successfully created.' }
        format.json { render json: @host_project_participant, status: :created, location: @host_project_participant }
      else
        format.html { render action: "new" }
        format.json { render json: @host_project_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /host_project_participants/1
  # PUT /host_project_participants/1.json
  def update
    @host_project_participant = HostProjectParticipant.find(params[:id])

    respond_to do |format|
      if @host_project_participant.update_attributes(params[:host_project_participant])
        format.html { redirect_to @host_project_participant, notice: 'Host project participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @host_project_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_project_participants/1
  # DELETE /host_project_participants/1.json
  def destroy
    @host_project_participant = HostProjectParticipant.find(params[:id])
    @host_project_participant.destroy

    respond_to do |format|
      format.html { redirect_to host_project_participants_url }
      format.json { head :no_content }
    end
  end
end
