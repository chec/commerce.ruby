require 'json'
require 'faraday'
require 'certifi'

# Common files
require_relative 'commerce/api_helper.rb'

# Http
require_relative 'commerce/http/http_call_back.rb'
require_relative 'commerce/http/http_client.rb'
require_relative 'commerce/http/http_method_enum.rb'
require_relative 'commerce/http/http_request.rb'
require_relative 'commerce/http/http_response.rb'
require_relative 'commerce/http/http_context.rb'
require_relative 'commerce/http/faraday_client.rb'
require_relative 'commerce/http/auth/custom_header_auth.rb'

# APIs
require_relative 'commerce/base_controller.rb'
require_relative 'commerce/cart.rb'
require_relative 'commerce/checkout.rb'
require_relative 'commerce/order.rb'
require_relative 'commerce/product.rb'
require_relative 'commerce/service.rb'

module  Commerce

    @api_base = 'https://api.chec.io/v1'
    @uploads_base = 'https://uploads.chec.io'

    class << self
      attr_accessor :api_key, :api_base
      def Auth(api_key)
        @api_key = api_key
      end
    end

end
