class DesignatedNationalAuthoritiesController < ApplicationController
  # GET /designated_national_authorities
  # GET /designated_national_authorities.json
  def index
    @designated_national_authorities = DesignatedNationalAuthority.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @designated_national_authorities }
    end
  end

  # GET /designated_national_authorities/1
  # GET /designated_national_authorities/1.json
  def show
    @designated_national_authority = DesignatedNationalAuthority.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @designated_national_authority }
    end
  end

  # GET /designated_national_authorities/new
  # GET /designated_national_authorities/new.json
  def new
    @designated_national_authority = DesignatedNationalAuthority.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @designated_national_authority }
    end
  end

  # GET /designated_national_authorities/1/edit
  def edit
    @designated_national_authority = DesignatedNationalAuthority.find(params[:id])
  end

  # POST /designated_national_authorities
  # POST /designated_national_authorities.json
  def create
    @designated_national_authority = DesignatedNationalAuthority.new(params[:designated_national_authority])

    respond_to do |format|
      if @designated_national_authority.save
        format.html { redirect_to @designated_national_authority, notice: 'Designated national authority was successfully created.' }
        format.json { render json: @designated_national_authority, status: :created, location: @designated_national_authority }
      else
        format.html { render action: "new" }
        format.json { render json: @designated_national_authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /designated_national_authorities/1
  # PUT /designated_national_authorities/1.json
  def update
    @designated_national_authority = DesignatedNationalAuthority.find(params[:id])

    respond_to do |format|
      if @designated_national_authority.update_attributes(params[:designated_national_authority])
        format.html { redirect_to @designated_national_authority, notice: 'Designated national authority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @designated_national_authority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designated_national_authorities/1
  # DELETE /designated_national_authorities/1.json
  def destroy
    @designated_national_authority = DesignatedNationalAuthority.find(params[:id])
    @designated_national_authority.destroy

    respond_to do |format|
      format.html { redirect_to designated_national_authorities_url }
      format.json { head :no_content }
    end
  end
end
