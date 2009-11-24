class KontaktiesController < ApplicationController
  # GET /kontakties
  # GET /kontakties.xml
  def index
    @kontakties = Kontakty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kontakties }
    end
  end

  # GET /kontakties/1
  # GET /kontakties/1.xml
  def show
    @kontakty = Kontakty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @kontakty }
    end
  end

  # GET /kontakties/new
  # GET /kontakties/new.xml
  def new
    @kontakty = Kontakty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kontakty }
    end
  end

  # GET /kontakties/1/edit
  def edit
    @kontakty = Kontakty.find(params[:id])
  end

  # POST /kontakties
  # POST /kontakties.xml
  def create
    @kontakty = Kontakty.new(params[:kontakty])

    respond_to do |format|
      if @kontakty.save
        flash[:notice] = 'Kontakty was successfully created.'
        format.html { redirect_to(@kontakty) }
        format.xml  { render :xml => @kontakty, :status => :created, :location => @kontakty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @kontakty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /kontakties/1
  # PUT /kontakties/1.xml
  def update
    @kontakty = Kontakty.find(params[:id])

    respond_to do |format|
      if @kontakty.update_attributes(params[:kontakty])
        flash[:notice] = 'Kontakty was successfully updated.'
        format.html { redirect_to(@kontakty) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @kontakty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /kontakties/1
  # DELETE /kontakties/1.xml
  def destroy
    @kontakty = Kontakty.find(params[:id])
    @kontakty.destroy

    respond_to do |format|
      format.html { redirect_to(kontakties_url) }
      format.xml  { head :ok }
    end
  end
end
