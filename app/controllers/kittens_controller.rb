class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kittens }
      format.json { render :json => @kittens }
    end
  end
  
  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      flash[:success] = "Congragulations You have created a kitten"
      redirect_to root_url 
    end
  end
  
  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @kitten }
      format.json { render :json => @kitten }
    end
  end

  def update
    @kitten = Kitten.find(params[:id]) 
    if @kitten.update(kitten_params)
      flash[:success] = "You Have Edited Your Kitten"
      redirect_to root_url
    end
  end

  def new
    @kitten = Kitten.new
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    if @kitten.destroy
      flash[:success] = "Kitten is destroyed :("
      redirect_to root_url 
    end
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
