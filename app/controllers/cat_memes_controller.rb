class CatMemesController < ApplicationController
  before_action :set_cat_meme, only: [:show, :edit, :update, :destroy]

  # GET /cat_memes
  # GET /cat_memes.json
  def index
    @cat_memes = CatMeme.all
  end

  # # Sinatra - Route is defined in the controller and the action supplied with a block
  # get '/cat_memes' do
  #
  # end

  # GET /cat_memes/1
  # GET /cat_memes/1.json
  def show
  end

  # GET /cat_memes/new
  def new
    @cat_meme = CatMeme.new
  end

  # GET /cat_memes/1/edit
  def edit
  end

  # POST /cat_memes
  # POST /cat_memes.json
  def create
    @cat_meme = CatMeme.new(cat_meme_params)

    respond_to do |format|
      if @cat_meme.save
        format.html { redirect_to @cat_meme, notice: 'Cat meme was successfully created.' }
        format.json { render :show, status: :created, location: @cat_meme }
      else
        format.html { render :new }
        format.json { render json: @cat_meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_memes/1
  # PATCH/PUT /cat_memes/1.json
  def update
    respond_to do |format|
      if @cat_meme.update(cat_meme_params)
        format.html { redirect_to @cat_meme, notice: 'Cat meme was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_meme }
      else
        format.html { render :edit }
        format.json { render json: @cat_meme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_memes/1
  # DELETE /cat_memes/1.json
  def destroy
    @cat_meme.destroy
    respond_to do |format|
      format.html { redirect_to cat_memes_url, notice: 'Cat meme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_meme
      @cat_meme = CatMeme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_meme_params
      params.require(:cat_meme).permit(:title, :alt, :user_id, :image_url)
    end
end
