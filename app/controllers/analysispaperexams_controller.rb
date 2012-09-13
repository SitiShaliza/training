class AnalysispaperexamsController < ApplicationController
  # GET /analysispaperexams
  # GET /analysispaperexams.xml
  def index
    @analysispaperexams = Analysispaperexam.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @analysispaperexams }
    end
  end

  # GET /analysispaperexams/1
  # GET /analysispaperexams/1.xml
  def show
    @analysispaperexam = Analysispaperexam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @analysispaperexam }
    end
  end

  # GET /analysispaperexams/new
  # GET /analysispaperexams/new.xml
  def new
    @analysispaperexam = Analysispaperexam.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @analysispaperexam }
    end
  end

  # GET /analysispaperexams/1/edit
  def edit
    @analysispaperexam = Analysispaperexam.find(params[:id])
  end

  # POST /analysispaperexams
  # POST /analysispaperexams.xml
  def create
    @analysispaperexam = Analysispaperexam.new(params[:analysispaperexam])

    respond_to do |format|
      if @analysispaperexam.save
        flash[:notice] = 'Analysispaperexam was successfully created.'
        format.html { redirect_to(@analysispaperexam) }
        format.xml  { render :xml => @analysispaperexam, :status => :created, :location => @analysispaperexam }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @analysispaperexam.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /analysispaperexams/1
  # PUT /analysispaperexams/1.xml
  def update
    @analysispaperexam = Analysispaperexam.find(params[:id])

    respond_to do |format|
      if @analysispaperexam.update_attributes(params[:analysispaperexam])
        flash[:notice] = 'Analysispaperexam was successfully updated.'
        format.html { redirect_to(@analysispaperexam) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @analysispaperexam.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /analysispaperexams/1
  # DELETE /analysispaperexams/1.xml
  def destroy
    @analysispaperexam = Analysispaperexam.find(params[:id])
    @analysispaperexam.destroy

    respond_to do |format|
      format.html { redirect_to(analysispaperexams_url) }
      format.xml  { head :ok }
    end
  end
end
