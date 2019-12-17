module Square
  # ReportingApi
  class ReportingApi < BaseApi
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Returns a list of refunded transactions (across all possible originating
    # locations) relating to monies
    # credited to the provided location ID by another Square account using the
    # `additional_recipients` field in a transaction.
    # Max results per [page](#paginatingresults): 50
    # @param [String] location_id Required parameter: The ID of the location to
    # list AdditionalRecipientReceivableRefunds for.
    # @param [String] begin_time Optional parameter: The beginning of the
    # requested reporting period, in RFC 3339 format.  See [Date
    # ranges](#dateranges) for details on date inclusivity/exclusivity.  Default
    # value: The current time minus one year.
    # @param [String] end_time Optional parameter: The end of the requested
    # reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for
    # details on date inclusivity/exclusivity.  Default value: The current
    # time.
    # @param [SortOrder] sort_order Optional parameter: The order in which
    # results are listed in the response (`ASC` for oldest first, `DESC` for
    # newest first).  Default value: `DESC`
    # @param [String] cursor Optional parameter: A pagination cursor returned by
    # a previous call to this endpoint. Provide this to retrieve the next set of
    # results for your original query.  See [Paginating
    # results](#paginatingresults) for more information.
    # @return [ListAdditionalRecipientReceivableRefundsResponse Hash] response from the API call
    def list_additional_recipient_receivable_refunds(location_id:,
                                                     begin_time: nil,
                                                     end_time: nil,
                                                     sort_order: nil,
                                                     cursor: nil)
      warn 'Endpoint list_additional_recipient_receivable_refunds in Reporting'\
           'Api is deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/locations/{location_id}/additional-recipient-receivable-refunds'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'location_id' => location_id
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'begin_time' => begin_time,
        'end_time' => end_time,
        'sort_order' => sort_order,
        'cursor' => cursor
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(_response, data: decoded, errors: _errors)
    end

    # Returns a list of receivables (across all possible sending locations)
    # representing monies credited
    # to the provided location ID by another Square account using the
    # `additional_recipients` field in a transaction.
    # Max results per [page](#paginatingresults): 50
    # @param [String] location_id Required parameter: The ID of the location to
    # list AdditionalRecipientReceivables for.
    # @param [String] begin_time Optional parameter: The beginning of the
    # requested reporting period, in RFC 3339 format.  See [Date
    # ranges](#dateranges) for details on date inclusivity/exclusivity.  Default
    # value: The current time minus one year.
    # @param [String] end_time Optional parameter: The end of the requested
    # reporting period, in RFC 3339 format.  See [Date ranges](#dateranges) for
    # details on date inclusivity/exclusivity.  Default value: The current
    # time.
    # @param [SortOrder] sort_order Optional parameter: The order in which
    # results are listed in the response (`ASC` for oldest first, `DESC` for
    # newest first).  Default value: `DESC`
    # @param [String] cursor Optional parameter: A pagination cursor returned by
    # a previous call to this endpoint. Provide this to retrieve the next set of
    # results for your original query.  See [Paginating
    # results](#paginatingresults) for more information.
    # @return [ListAdditionalRecipientReceivablesResponse Hash] response from the API call
    def list_additional_recipient_receivables(location_id:,
                                              begin_time: nil,
                                              end_time: nil,
                                              sort_order: nil,
                                              cursor: nil)
      warn 'Endpoint list_additional_recipient_receivables in ReportingApi is '\
           'deprecated'
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/locations/{location_id}/additional-recipient-receivables'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'location_id' => location_id
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'begin_time' => begin_time,
        'end_time' => end_time,
        'sort_order' => sort_order,
        'cursor' => cursor
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(_response, data: decoded, errors: _errors)
    end
  end
end
