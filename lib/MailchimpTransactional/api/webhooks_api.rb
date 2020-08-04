=begin
#Mailchimp Transactional API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0.9
Contact: apihelp@mandrill.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpTransactional
  class WebhooksApi
    attr_accessor :api_client

    attr_accessor :api_key

    def initialize(api_key = '', api_client = ApiClient.default)
      @api_key = api_key
      @api_client = api_client
    end
    # Add webhook
    # Add a new webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20072]
    def add(body = {}, opts = {})
      data = add_with_http_info(body, opts)
      data
    end

    # Add webhook
    # Add a new webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20072, Fixnum, Hash)>] InlineResponse20072 data, response status code and response headers
    def add_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/webhooks/add'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Delete webhook
    # Delete an existing webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20075]
    def delete(body = {}, opts = {})
      data = delete_with_http_info(body, opts)
      data
    end

    # Delete webhook
    # Delete an existing webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20075, Fixnum, Hash)>] InlineResponse20075 data, response status code and response headers
    def delete_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/webhooks/delete'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Get webhook info
    # Given the ID of an existing webhook, return the data about it.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20073]
    def info(body = {}, opts = {})
      data = info_with_http_info(body, opts)
      data
    end

    # Get webhook info
    # Given the ID of an existing webhook, return the data about it.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20073, Fixnum, Hash)>] InlineResponse20073 data, response status code and response headers
    def info_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/webhooks/info'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # List webhooks
    # Get the list of all webhooks defined on the account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20071>]
    def list(body = {}, opts = {})
      data = list_with_http_info(body, opts)
      data
    end

    # List webhooks
    # Get the list of all webhooks defined on the account.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20071>, Fixnum, Hash)>] Array<InlineResponse20071> data, response status code and response headers
    def list_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/webhooks/list'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Update webhook
    # Update an existing webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20074]
    def update(body = {}, opts = {})
      data = update_with_http_info(body, opts)
      data
    end

    # Update webhook
    # Update an existing webhook.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20074, Fixnum, Hash)>] InlineResponse20074 data, response status code and response headers
    def update_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/webhooks/update'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
  end
end