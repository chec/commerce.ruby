

module Commerce
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = FaradayClient.new(60)

    @@global_headers = {
      'user-agent' => 'Commerce.ruby/v1'
    }

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
    end
    
  end
end
