class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all.paginate( :page => params[:page] )
  end

  def show
  end


  def new
    @card = Card.new
  end


  def edit
  end


  def create
    @card = Card.new(card_params)

    respond_to do |format|
      if @card.save
        format.html { redirect_to @card, notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to cards_path, notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @card.destroy
    respond_to do |format|
      format.html { redirect_to cards_url, notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import_csv
    #upload_file = File.new(params[:file], "rb").read
    #File.open(Rails.root.join('public', 'uploads', upload_file ), 'wb') do |file|
    #  file.write(upload_file)
    #end
  end


  def clear
      Card.destroy_all
      respond_to do |format|
        format.html { redirect_to cards_url, notice: 'Cards was successfully destroyed.' }
        format.json { head :no_content }
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_params
      params.require(:card).permit(:CardNumber, :RealName, :Gender, :Birthday, :Occupation, :TypeOfCard, :EgoBalance, :MobileNumber, :email, :Issued, :LastBuy, :file)
    end
end
