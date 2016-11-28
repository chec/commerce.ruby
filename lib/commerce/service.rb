module Commerce
  class Service < BaseController

    def self.locale_list_countries( _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/services/locale/countries'



      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.locale_list_shipping_countries(checkout_token_id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/services/locale/{checkout_token_id}/countries'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'checkout_token_id' => checkout_token_id
          }


      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.locale_list_subdivisions(country_code,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/services/locale/{country_code}/subdivisions'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'country_code' => country_code
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
