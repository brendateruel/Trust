class IsmsController < ApplicationController
  require 'isms_helper'

  # GET /isms
  # GET /isms.xml
  def index
    @isms = Ism.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @isms }
    end
  end
  
  # GET /isms/1
  # GET /isms/1.xml
  def show
    @ism = Ism.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ism }
    end
  end

  # GET /isms/new
  # GET /isms/new.xml
  def new
    @ism = Ism.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ism }
    end
  end
  
  # GET /isms/1/edit
  def edit
    @ism = Ism.find(params[:id])
  end

  # POST /isms
  # POST /isms.xml
  def create
    @ism = Ism.new(params[:ism])

    respond_to do |format|
      if @ism.save
        format.html { redirect_to(@ism, :notice => 'Ism was successfully created.') }
        format.xml  { render :xml => @ism, :status => :created, :location => @ism }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ism.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /isms/1
  # PUT /isms/1.xml
  def update
    @ism = Ism.find(params[:id])

    respond_to do |format|
      if @ism.update_attributes(params[:ism])
        format.html { redirect_to(@ism, :notice => 'Ism was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ism.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /isms/1
  # DELETE /isms/1.xml
  def destroy
    @ism = Ism.find(params[:id])
    @ism.destroy

    respond_to do |format|
      format.html { redirect_to(isms_url) }
      format.xml  { head :ok }
    end
  end
end
