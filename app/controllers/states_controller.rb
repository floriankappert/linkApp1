class StatesController < ApplicationController
  def index
    @states = State.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @states }
    end
  end

  def new
    @state = State.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @states }
    end
  end
  
  def create
    @state = State.new(params[:state])

    respond_to do |format|
      if @state.save
        format.html { redirect_to @state, :notice => 'Keyword was successfully created.' }
        format.json { render :json => @state, :status => :created, :location => @state }
      else
        format.html { render :action => "new" }
        format.json { render :json => @state.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @state = State.find(params[:id])
  end

  def show
    @state = State.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @state }
    end
  end
end
