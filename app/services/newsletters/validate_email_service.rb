module Newsletters
  class ValidateEmailService
    
    require 'net/http'
    require 'net/https'

    def initialize(email)
      @email = email
    end

    def call
      uri = URI(ENV['ENDPOINT_ABSTRACAPI'])
      
      params = { 'api_key' => ENV['ABSTRACAPI_API_KEY'], 'email' => @email }
      uri.query = URI.encode_www_form(params)


      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_PEER

      request =  Net::HTTP::Get.new(uri)
      response = http.request(request)
      body_request = JSON.parse(response.body)

      return body_request["quality_score"].to_f > 0.7

    rescue StandardError => error
      puts "Error (#{ error.message })"
    end
  end
end