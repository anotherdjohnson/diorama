class DioramaTemplatesController < ApplicationController
  # GET /diorama_templates
  # GET /diorama_templates.json
  def index
    @diorama_templates = DioramaTemplate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @diorama_templates }
    end
  end

  # GET /diorama_templates/1
  # GET /diorama_templates/1.json
  def show
    @diorama_template = DioramaTemplate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @diorama_template }
    end
  end

  # GET /diorama_templates/new
  # GET /diorama_templates/new.json
  def new
    @diorama_template = DioramaTemplate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diorama_template }
    end
  end

  # GET /diorama_templates/1/edit
  def edit
    @diorama_template = DioramaTemplate.find(params[:id])
  end

  # POST /diorama_templates
  # POST /diorama_templates.json
  def create
    @diorama_template = DioramaTemplate.new(params[:diorama_template])

    respond_to do |format|
      if @diorama_template.save
        format.html { redirect_to @diorama_template, notice: 'Diorama template was successfully created.' }
        format.json { render json: @diorama_template, status: :created, location: @diorama_template }
      else
        format.html { render action: "new" }
        format.json { render json: @diorama_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /diorama_templates/1
  # PUT /diorama_templates/1.json
  def update
    @diorama_template = DioramaTemplate.find(params[:id])

    respond_to do |format|
      if @diorama_template.update_attributes(params[:diorama_template])
        format.html { redirect_to @diorama_template, notice: 'Diorama template was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @diorama_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diorama_templates/1
  # DELETE /diorama_templates/1.json
  def destroy
    @diorama_template = DioramaTemplate.find(params[:id])
    @diorama_template.destroy

    respond_to do |format|
      format.html { redirect_to diorama_templates_url }
      format.json { head :no_content }
    end
  end
end
