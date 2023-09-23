class NewsletterPresenter
  def initialize(object, view)
    @object = object
    @view = view
  end

  def success_message
    @view.flash.now[:notice] = I18n.t('newsletter.form.message.success')
  end

  def error_message(validate_email)
    
    if !validate_email
      @view.flash.now[:alert] = I18n.t('newsletter.form.message.validation_email_error')

   elsif  @object.errors[:email].include?("has already been taken")
      @view.flash.now[:alert] = I18n.t('newsletter.form.message.unique_email_error')
      
    else
      @view.flash.now[:alert] = I18n.t('newsletter.form.message.error')
    end
  end

end
