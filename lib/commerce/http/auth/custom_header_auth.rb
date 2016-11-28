

module Commerce
  class CustomHeaderAuth
    # Add custom authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will be added.
    def self.apply(http_request)
      http_request.add_header("X-Authorization", Commerce.api_key)
    end
  end
end
