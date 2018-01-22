class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]
  before_action :authenticate_user!
  layout 'admin'

  def index
    @portfolios = Portfolio.all
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_portfolio
    @portfolio = Portfolio.friendly.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :creation_time,
                                      :public, :content, { illustrations: [] },
                                      :slug, :thumbnail, :website, :tags)
  end
end