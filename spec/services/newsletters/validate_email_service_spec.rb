require 'rails_helper'
require 'webmock/rspec'

RSpec.describe Newsletters::ValidateEmailService, type: :service do
  describe '#call' do
    let(:valid_email) { 'valid@example.com' }
    let(:invalid_email) { 'invalid@example.com' }

    before do
      # Configura WebMock para simular la solicitud HTTP
      stub_request(:get, /#{ENV['ENDPOINT_ABSTRACAPI']}/)
        .with(query: hash_including({ 'email' => valid_email }))
        .to_return(body: '{"quality_score": 0.8}', status: 200)

      stub_request(:get, /#{ENV['ENDPOINT_ABSTRACAPI']}/)
        .with(query: hash_including({ 'email' => invalid_email }))
        .to_return(body: '{"quality_score": 0.6}', status: 200)
    end

    it 'returns true for a valid email' do
      service = Newsletters::ValidateEmailService.new(valid_email)
      expect(service.call).to eq(true)
    end

    it 'returns false for an invalid email' do
      service = Newsletters::ValidateEmailService.new(invalid_email)
      expect(service.call).to eq(false)
    end

   
  end
end
