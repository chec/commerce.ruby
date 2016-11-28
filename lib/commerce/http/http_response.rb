

module Commerce
  class HttpResponse
    attr_accessor :status_code, :headers, :raw_body, :array

    # The constructor.
    # @param [Integer] The status code returned by the server.
    # @param [Hash] The headers sent by the server in the response.
    # @param [String] The raw body of the response.
    def initialize(status_code,
                   headers,
                   raw_body)
      @status_code = status_code
      @headers = headers
      @raw_body = raw_body
      @array = JSON.parse(raw_body.strip)

    end
  end
end
