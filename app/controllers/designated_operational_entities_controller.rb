class DesignatedOperationalEntitiesController < ApplicationController
  # GET /designated_operational_entities
  # GET /designated_operational_entities.json
  def index
    @designated_operational_entities = DesignatedOperationalEntity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @designated_operational_entities }
    end
  end

  # GET /designated_operational_entities/1
  # GET /designated_operational_entities/1.json
  def show
    @designated_operational_entity = DesignatedOperationalEntity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @designated_operational_entity }
    end
  end

  # GET /designated_operational_entities/new
  # GET /designated_operational_entities/new.json
  def new
    @designated_operational_entity = DesignatedOperationalEntity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @designated_operational_entity }
    end
  end

  # GET /designated_operational_entities/1/edit
  def edit
    @designated_operational_entity = DesignatedOperationalEntity.find(params[:id])
  end

  # POST /designated_operational_entities
  # POST /designated_operational_entities.json
  def create
    @designated_operational_entity = DesignatedOperationalEntity.new(params[:designated_operational_entity])

    respond_to do |format|
      if @designated_operational_entity.save
        format.html { redirect_to @designated_operational_entity, notice: 'Designated operational entity was successfully created.' }
        format.json { render json: @designated_operational_entity, status: :created, location: @designated_operational_entity }
      else
        format.html { render action: "new" }
        format.json { render json: @designated_operational_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /designated_operational_entities/1
  # PUT /designated_operational_entities/1.json
  def update
    @designated_operational_entity = DesignatedOperationalEntity.find(params[:id])

    respond_to do |format|
      if @designated_operational_entity.update_attributes(params[:designated_operational_entity])
        format.html { redirect_to @designated_operational_entity, notice: 'Designated operational entity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @designated_operational_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designated_operational_entities/1
  # DELETE /designated_operational_entities/1.json
  def destroy
    @designated_operational_entity = DesignatedOperationalEntity.find(params[:id])
    @designated_operational_entity.destroy

    respond_to do |format|
      format.html { redirect_to designated_operational_entities_url }
      format.json { head :no_content }
    end
  end
end
