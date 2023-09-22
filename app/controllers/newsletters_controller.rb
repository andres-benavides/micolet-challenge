class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    presenter = NewsletterPresenter.new(@newsletter,view_context)

    if @newsletter.save
      flash[:notice] = presenter.success_message
      render 'new'
    else
      flash.now[:alert] = presenter.error_message
      render 'new', status: 422
    end
  end
  private

  def newsletter_params
    params.require(:newsletter).permit(:email, :women_fashion, :men_fashion,:children_fashion)
  end
end
