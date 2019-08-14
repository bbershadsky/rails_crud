class CreateNewsController < ApplicationController
  before_action :set_create_news, only: [:show, :edit, :update, :destroy]

  # GET /create_news
  # GET /create_news.json
  def index
    @create_news = CreateNew.all
  end

  # GET /create_news/1
  # GET /create_news/1.json
  def show
  end

  # GET /create_news/new
  def new
    @create_news = CreateNew.new
  end

  # GET /create_news/1/edit
  def edit
  end

  # POST /create_news
  # POST /create_news.json
  def create
    @create_news = CreateNew.new(create_news_params)

    respond_to do |format|
      if @create_news.save
        format.html { redirect_to @create_news, notice: 'Create new was successfully created.' }
        format.json { render :show, status: :created, location: @create_news }
      else
        format.html { render :new }
        format.json { render json: @create_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_news/1
  # PATCH/PUT /create_news/1.json
  def update
    respond_to do |format|
      if @create_news.update(create_news_params)
        format.html { redirect_to @create_news, notice: 'Create new was successfully updated.' }
        format.json { render :show, status: :ok, location: @create_news }
      else
        format.html { render :edit }
        format.json { render json: @create_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_news/1
  # DELETE /create_news/1.json
  def destroy
    @create_news.destroy
    respond_to do |format|
      format.html { redirect_to create_news_url, notice: 'Create new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_news
      @create_news = CreateNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_news_params
      params.require(:create_news).permit(:bill_to, :contract_num, :description)
    end
end
