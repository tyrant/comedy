class ComediansController < ApplicationController
  # GET /comedians
  # GET /comedians.xml
  def index
    @comedians = Comedian.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comedians }
    end
  end

  # GET /comedians/1
  # GET /comedians/1.xml
  def show
    @comedian = Comedian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comedian }
    end
  end

  # GET /comedians/new
  # GET /comedians/new.xml
  def new
    @comedian = Comedian.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comedian }
    end
  end

  # GET /comedians/1/edit
  def edit
    @comedian = Comedian.find(params[:id])
  end

  # POST /comedians
  # POST /comedians.xml
  def create
    @comedian = Comedian.new(params[:comedian])

    respond_to do |format|
      if @comedian.save
        format.html { redirect_to(@comedian, :notice => 'Comedian was successfully created.') }
        format.xml  { render :xml => @comedian, :status => :created, :location => @comedian }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comedian.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comedians/1
  # PUT /comedians/1.xml
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
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comedian.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comedians/1
  # DELETE /comedians/1.xml
  def destroy
    @comedian = Comedian.find(params[:id])
    @comedian.destroy

    respond_to do |format|
      format.html { redirect_to(comedians_url) }
      format.xml  { head :ok }
    end
  end
end
