module Commerce
  class Checkout < BaseController

    def self.capture(identifier, _parameters, _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{identifier}'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'identifier' => identifier
          }


      _query_url = APIHelper.clean_url _query_builder

      _request = @@http_client.POST _query_url, parameters: _parameters


      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.check_discount(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/discount'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.check_pay_what_you_want(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/pay_what_you_want'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.check_paypal_order_captured(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/paypal/captured'

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

    def self.check_paypal_status(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/paypal/payment'

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

    def self.check_quantity(id, line_item_id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/{line_item_id}/quantity'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id,
              'line_item_id' => line_item_id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.check_shipping_option(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/shipping'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.check_variant(id, line_item_id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/{line_item_id}/variant'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id,
              'line_item_id' => line_item_id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.generate_token(identifier,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{identifier}'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'identifier' => identifier
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.get_live(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/live'

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

    def self.get_location_from_ip(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/helper/location_from_ip'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.get_shipping_options(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/helper/shipping_options'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.helper_validation(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/helper/validation'

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

    def self.is_free(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/check/is_free'

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
      _query_builder << '/checkouts/{id}/receipt'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

      _query_url = APIHelper.clean_url _query_builder


      _request = @@http_client.GET _query_url

      CustomHeaderAuth.apply(_request)

      _request.headers = @@global_headers.clone.merge(_request.headers)

      _response = @@http_client.execute_as_string(_request)

      context = HttpContext.new(_request, _response)

      return context.response.array

    end

    def self.set_tax_zone(id,  _query_parameters = [])

      _query_builder = Commerce.api_base.dup
      _query_builder << '/checkouts/{id}/helper/set_tax_zone'

      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
              'id' => id
          }

      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, _query_parameters

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
