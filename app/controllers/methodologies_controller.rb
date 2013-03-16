class MethodologiesController < ApplicationController
  # GET /methodologies
  # GET /methodologies.json
  def index
    @methodologies = Methodology.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @methodologies }
    end
  end

  # GET /methodologies/1
  # GET /methodologies/1.json
  def show
    @methodology = Methodology.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @methodology }
    end
  end

  # GET /methodologies/new
  # GET /methodologies/new.json
  def new
    @methodology = Methodology.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @methodology }
    end
  end

  # GET /methodologies/1/edit
  def edit
    @methodology = Methodology.find(params[:id])
  end

  # POST /methodologies
  # POST /methodologies.json
  def create
    @methodology = Methodology.new(params[:methodology])

    respond_to do |format|
      if @methodology.save
        format.html { redirect_to @methodology, notice: 'Methodology was successfully created.' }
        format.json { render json: @methodology, status: :created, location: @methodology }
      else
        format.html { render action: "new" }
        format.json { render json: @methodology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /methodologies/1
  # PUT /methodologies/1.json
  def update
    @methodology = Methodology.find(params[:id])

    respond_to do |format|
      if @methodology.update_attributes(params[:methodology])
        format.html { redirect_to @methodology, notice: 'Methodology was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @methodology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /methodologies/1
  # DELETE /methodologies/1.json
  def destroy
    @methodology = Methodology.find(params[:id])
    @methodology.destroy

    respond_to do |format|
      format.html { redirect_to methodologies_url }
      format.json { head :no_content }
    end
  end
end
