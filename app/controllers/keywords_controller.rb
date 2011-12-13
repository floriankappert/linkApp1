class KeywordsController < ApplicationController
  def index
    @keywords = Keyword.all
    @links = Link.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @keywords }
    end
  end

  def new
    @keyword = Keyword.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @keywords }
    end
  end
  
  def create
    @keyword = Keyword.new(params[:keyword])

    respond_to do |format|
      if @keyword.save
        format.html { redirect_to @keyword, :notice => 'Keyword was successfully created.' }
        format.json { render :json => @keyword, :status => :created, :location => @keyword }
      else
        format.html { render :action => "new" }
        format.json { render :json => @keyword.errors, :status => :unprocessable_entity }
      end
    end
  end


  def edit
    @keyword = Keyword.find(params[:id])
  end

  def show
    @keyword = Keyword.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @link }
    end
  end

end
