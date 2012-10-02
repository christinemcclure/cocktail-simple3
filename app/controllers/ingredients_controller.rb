class IngredientsController < ApplicationController
  # GET /ingredients
  # GET /ingredients.json
  def index
    @ingredients = Ingredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredients }
    end
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ingredient }
    end
  end

  # GET /ingredients/new
  # GET /ingredients/new.json
  def new
    @ingredient = Ingredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ingredient }
    end
  end

  # GET /ingredients/1/edit
  def edit
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = @cocktail.ingredients.find(params[:id])
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = @cocktail.ingredients.create(params[:ingredient])
    redirect_to cocktail_path(@cocktail)
  end

  # PUT /ingredients/1
  # PUT /ingredients/1.json
  def update
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      if @ingredient.update_attributes(params[:ingredient])
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = @cocktail.ingredients.find(params[:id])
    @ingredient.destroy
    redirect_to cocktail_path(@cocktail)
    
  end
end
