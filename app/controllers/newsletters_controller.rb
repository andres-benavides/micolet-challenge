class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      render 'new'
    else
      render 'new', status: :unprocessable_entify
    end
  end
  private

  def newsletter_params
    params.require(:newsletter).permit(:email, :women_fashion, :men_fashion,:children_fashion)
  end
end
