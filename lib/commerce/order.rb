module Commerce
  class Order < BaseController

    def self.all( _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/orders'


      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.fulfillment(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/orders/{id}/fulfillment'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.payments(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/orders/{id}/payments'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.receipt(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/orders/{id}/receipt'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end


  end

end
