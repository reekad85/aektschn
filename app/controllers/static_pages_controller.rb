class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end

  def landing_page
  	@products = Product.limit(4)
  end
end
