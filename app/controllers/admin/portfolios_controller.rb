class Admin::PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]


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

      if @portfolio.save
        redirect_to [:admin, @portfolio], notice: 'Portfolio was successfully created.'
      else
        render :new
      end
  end

  def update
      if @portfolio.update(portfolio_params)
        redirect_to [:admin, @portfolio], notice: 'Portfolio was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @portfolio.destroy
    redirect_to admin_portfolios_url, notice: 'Portfolio was successfully destroyed.'
  end

  private

    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end


    def portfolio_params
      params.require(:portfolio).permit(:name, :degree, :phone, :professional_history, :avatar)
    end
end
