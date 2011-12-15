class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @customers }
    end
  end

  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @customers }
    end
  end
  
  def create
    @customer = Customer.new(params[:Customer])

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, :notice => 'Customer was successfully created.' }
        format.json { render :json => @customer, :status => :created, :location => @customer }
      else
        format.html { render :action => "new" }
        format.json { render :json => @customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @customer }
    end
  end
  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :ok }
    end
  end

end
