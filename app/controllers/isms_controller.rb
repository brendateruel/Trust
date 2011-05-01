class IsmsController < ApplicationController
  
  before_filter :set_gender
  
  def index
    @isms = Ism.all

    respond_to do |format|
      format.html
    end
  end
  
  def show
    @ism = Ism.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
  
  def new
    @ism = Ism.new
    @fetch = Ism.random(:gender => @gender)

    respond_to do |format|
      format.html
    end
  end
  
  def edit
    @ism = Ism.find(params[:id])
  end

  def create
    @ism = Ism.new(params[:ism])

    respond_to do |format|
      if @ism.save
        format.html { redirect_to(success_path(:woman => @ism.woman?)) }
      else
        format.html { 
            @fetch = Ism.random
            render :action => "new" 
        }
      end
    end
  end

  def update
    @ism = Ism.find(params[:id])

    respond_to do |format|
      if @ism.update_attributes(params[:ism])
        format.html { redirect_to(@ism, :notice => 'Ism was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @ism = Ism.find(params[:id])
    @ism.destroy

    respond_to do |format|
      format.html { redirect_to(isms_url) }
    end
  end
  
  def success
  
  end

  private
  
  def set_gender
    @gender = params[:woman] ? Ism::WOMAN : Ism::MAN
  end
end
