module Commerce
  class Cart < BaseController

    def self.add(id, _parameters, _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }


      _query_url = APIHelper.clean_url _query_builder

      _request = @@http_client.POST _query_url, parameters: _parameters


      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.contents(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}/items'

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

    def self.create( _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts'



      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.delete(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.DELETE _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.remove(id, line_item_id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}/items/{line_item_id}'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id,
              'line_item_id' => line_item_id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.DELETE _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.reset(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}/items'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.DELETE _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.retrieve(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}'

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

    def self.update(id, line_item_id, _parameters, _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/carts/{id}/items/{line_item_id}'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id,
              'line_item_id' => line_item_id
          }


      _query_url = APIHelper.clean_url _query_builder

      _request = @@http_client.PUT _query_url, parameters: _parameters


      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end


  end

end
