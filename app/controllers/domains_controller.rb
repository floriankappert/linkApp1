class DomainsController < ApplicationController
  def index
    @domains = Link.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @domains }
    end
  end

  def show
    @domain = Domain.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @domain }
    end
  end
  
  # POST /domains
  # POST /domains.json
  def create
    @domain = Domain.new(params[:domain])
    
    respond_to do |format|
      if @domain.save
        format.html { redirect_to @domain, :notice => 'Domain was successfully created.' }
        format.json { render :json => @domain, :status => :created, :location => @domain }
      else
        format.html { render :action => "new" }
        format.json { render :json => @domain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /links/1
  # PUT /links/1.json
  def update
    @domain = Domain.find(params[:id])

    respond_to do |format|
      if @domain.update_attributes(params[@domain])
        format.html { redirect_to @domain, :notice => 'Domain was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @domain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @domain = Domain.find(params[:id])
    @domain.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :ok }
    end
  end

end
