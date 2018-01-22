class HomeController < ApplicationController
  before_action :set_basis, except: :admin

  def index

  end

  def admin
    render layout: 'admin'
  end

  def articles_index
    @articles = Articles.all
  end

  def article_show
    @article = Article.friendly.find(params[:id])
  end

  def portfolio_index
    @portfolios = Portfolio.all
  end

  def portfolio_show

  end

  def contact
  end

  def about
  end

  private

  def set_basis
    @basis = Base.first if Base.exists?
  end
end
