# app/presenters/newsletter_presenter.rb
class NewsletterPresenter
  def initialize(object, view)
    @object = object
    @view = view
  end

  def success_message
    @view.flash.now[:notice] = I18n.t('newsletter.form.message.success')
  end

  def error_message
    @view.flash.now[:alert] = I18n.t('newsletter.form.message.error')
  end
end
