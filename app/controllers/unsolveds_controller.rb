class UnsolvedsController < ApplicationController
  # GET /unsolveds
  # GET /unsolveds.json
  def index
    @unsolveds = Unsolved.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unsolveds }
    end
  end

  # GET /unsolveds/1
  # GET /unsolveds/1.json
  def show
    @unsolved = Unsolved.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unsolved }
    end
  end

  # GET /unsolveds/new
  # GET /unsolveds/new.json
  def new
    @unsolved = Unsolved.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unsolved }
    end
  end


  # POST /unsolveds
  # POST /unsolveds.json
  def create
    @unsolved = Unsolved.new(unsolved_params)
    respond_to do |format|
      if @unsolved.save
        format.html { redirect_to @unsolved, notice: 'Unsolved problem was successfully added.' }
        format.json { render json: @unsolved, status: :created, location: @unsolved }
      end
    end
  end

  # PATCH/PUT /unsolveds/1
  # PATCH/PUT /unsolveds/1.json

  # DELETE /unsolveds/1
  # DELETE /unsolveds/1.json
  

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def unsolved_params
      params.require(:unsolved).permit(:department, :details, :priority, :status, :topic)
    end
end
