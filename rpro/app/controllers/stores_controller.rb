class StoresController < ApplicationController
  # GET /stores
  # GET /stores.json
  def index
    @people = Person.paginate(:page => params[:page], :per_page => 2)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @people }
    end
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @person = Person.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  
end
