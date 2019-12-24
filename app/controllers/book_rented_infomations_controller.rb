class BookRentedInfomationsController < ApplicationController
  before_action :set_book_rented_infomation, only: [:show, :edit, :update, :destroy]

  # GET /book_rented_infomations
  # GET /book_rented_infomations.json
  def index
    @book_rented_infomations = BookRentedInfomation.all
  end

  # GET /book_rented_infomations/1
  # GET /book_rented_infomations/1.json
  def show
  end

  # GET /book_rented_infomations/new
  def new
    @book_rented_infomation = BookRentedInfomation.new
  end

  # GET /book_rented_infomations/1/edit
  def edit
  end

  # POST /book_rented_infomations
  # POST /book_rented_infomations.json
  def create
    @book_rented_infomation = BookRentedInfomation.new(book_rented_infomation_params)

    respond_to do |format|
      if @book_rented_infomation.save
        format.html { redirect_to @book_rented_infomation, notice: 'Book rented infomation was successfully created.' }
        format.json { render :show, status: :created, location: @book_rented_infomation }
      else
        format.html { render :new }
        format.json { render json: @book_rented_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_rented_infomations/1
  # PATCH/PUT /book_rented_infomations/1.json
  def update
    respond_to do |format|
      if @book_rented_infomation.update(book_rented_infomation_params)
        format.html { redirect_to @book_rented_infomation, notice: 'Book rented infomation was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_rented_infomation }
      else
        format.html { render :edit }
        format.json { render json: @book_rented_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_rented_infomations/1
  # DELETE /book_rented_infomations/1.json
  def destroy
    @book_rented_infomation.destroy
    respond_to do |format|
      format.html { redirect_to book_rented_infomations_url, notice: 'Book rented infomation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_rented_infomation
      @book_rented_infomation = BookRentedInfomation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_rented_infomation_params
      params.require(:book_rented_infomation).permit(:rented_date, :due_date, :book_id, :user_id)
    end
end
