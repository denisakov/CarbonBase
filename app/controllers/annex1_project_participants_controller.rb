class Annex1ProjectParticipantsController < ApplicationController
  # GET /annex1_project_participants
  # GET /annex1_project_participants.json
  def index
    @annex1_project_participants = Annex1ProjectParticipant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @annex1_project_participants }
    end
  end

  # GET /annex1_project_participants/1
  # GET /annex1_project_participants/1.json
  def show
    @annex1_project_participant = Annex1ProjectParticipant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @annex1_project_participant }
    end
  end

  # GET /annex1_project_participants/new
  # GET /annex1_project_participants/new.json
  def new
    @annex1_project_participant = Annex1ProjectParticipant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @annex1_project_participant }
    end
  end

  # GET /annex1_project_participants/1/edit
  def edit
    @annex1_project_participant = Annex1ProjectParticipant.find(params[:id])
  end

  # POST /annex1_project_participants
  # POST /annex1_project_participants.json
  def create
    @annex1_project_participant = Annex1ProjectParticipant.new(params[:annex1_project_participant])

    respond_to do |format|
      if @annex1_project_participant.save
        format.html { redirect_to @annex1_project_participant, notice: 'Annex1 project participant was successfully created.' }
        format.json { render json: @annex1_project_participant, status: :created, location: @annex1_project_participant }
      else
        format.html { render action: "new" }
        format.json { render json: @annex1_project_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /annex1_project_participants/1
  # PUT /annex1_project_participants/1.json
  def update
    @annex1_project_participant = Annex1ProjectParticipant.find(params[:id])

    respond_to do |format|
      if @annex1_project_participant.update_attributes(params[:annex1_project_participant])
        format.html { redirect_to @annex1_project_participant, notice: 'Annex1 project participant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @annex1_project_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annex1_project_participants/1
  # DELETE /annex1_project_participants/1.json
  def destroy
    @annex1_project_participant = Annex1ProjectParticipant.find(params[:id])
    @annex1_project_participant.destroy

    respond_to do |format|
      format.html { redirect_to annex1_project_participants_url }
      format.json { head :no_content }
    end
  end
end
