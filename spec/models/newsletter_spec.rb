require 'rails_helper'

RSpec.describe Newsletter, type: :model do
  subject(:newsletter) { described_class.new(email: 'test@example.com') }

  it 'is valid with valid attributes' do
    expect(newsletter).to be_valid
  end

  it 'is not valid without an email' do
    newsletter.email = nil
    expect(newsletter).not_to be_valid
  end

  it 'is not valid with a duplicate email' do
    newsletter.save
    duplicate_newsletter = described_class.new(email: 'test@example.com')
    expect(duplicate_newsletter).not_to be_valid
  end

  it 'is not valid with an invalid email format' do
    invalid_emails = %w[invalid_email @example.com test.com]
    invalid_emails.each do |email|
      newsletter.email = email
      expect(newsletter).not_to be_valid
    end
  end
end
