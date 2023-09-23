class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create

      validate_email = Newsletters::ValidateEmailService.new(newsletter_params[:email]).call
      @newsletter = Newsletter.new(newsletter_params)
      presenter = NewsletterPresenter.new(@newsletter,view_context)
      

      if validate_email && @newsletter.save
        flash[:notice] = presenter.success_message
        redirect_to newsletters_path
      else
        flash.now[:alert] = presenter.error_message(validate_email)
        render 'new', status: 422
      end
  end
  private

  def newsletter_params
    params.require(:newsletter).permit(:email, :women_fashion, :men_fashion,:children_fashion)
  end
end
