class MicroplstsController < ApplicationController
  # GET /microplsts
  # GET /microplsts.json
  def index
    @microplsts = Microplst.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microplsts }
    end
  end

  # GET /microplsts/1
  # GET /microplsts/1.json
  def show
    @microplst = Microplst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microplst }
    end
  end

  # GET /microplsts/new
  # GET /microplsts/new.json
  def new
    @microplst = Microplst.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microplst }
    end
  end

  # GET /microplsts/1/edit
  def edit
    @microplst = Microplst.find(params[:id])
  end

  # POST /microplsts
  # POST /microplsts.json
  def create
    @microplst = Microplst.new(params[:microplst])

    respond_to do |format|
      if @microplst.save
        format.html { redirect_to @microplst, notice: 'Microplst was successfully created.' }
        format.json { render json: @microplst, status: :created, location: @microplst }
      else
        format.html { render action: "new" }
        format.json { render json: @microplst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microplsts/1
  # PUT /microplsts/1.json
  def update
    @microplst = Microplst.find(params[:id])

    respond_to do |format|
      if @microplst.update_attributes(params[:microplst])
        format.html { redirect_to @microplst, notice: 'Microplst was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microplst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microplsts/1
  # DELETE /microplsts/1.json
  def destroy
    @microplst = Microplst.find(params[:id])
    @microplst.destroy

    respond_to do |format|
      format.html { redirect_to microplsts_url }
      format.json { head :no_content }
    end
  end
end
