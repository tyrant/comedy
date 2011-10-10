class ComediansController < ApplicationController

  def index
    @comedians = Comedian.all
  end

  def show
    @comedian = Comedian.includes(:gigs, :videos).find(params[:id])
  end

  def new
    @comedian = Comedian.new
    @all_tours = Tour.all
    @all_gigs = Gig.all
  end

  def edit
    @comedian = Comedian.find(params[:id])
    @all_tours = Tour.all
    @all_gigs = Gig.all
  end

  def create
    @comedian = Comedian.new(params[:comedian])

    respond_to do |format|
      if @comedian.save
        format.html { redirect_to(@comedian, :notice => 'Comedian was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @comedian = Comedian.find(params[:id])
    params[:tours].delete("")

    if params[:tours]
      @comedian.tours = Tour.find(params[:tours])
    else
      @comedian.tours = []
    end

    respond_to do |format|
      if @comedian.update_attributes(params[:comedian])
        format.html { redirect_to(@comedian, :notice => 'Comedian was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @comedian = Comedian.find(params[:id])
    @comedian.destroy
  end
end
