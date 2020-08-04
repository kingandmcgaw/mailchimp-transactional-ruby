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
  class SubaccountsApi
    attr_accessor :api_client

    attr_accessor :api_key

    def initialize(api_key = '', api_client = ApiClient.default)
      @api_key = api_key
      @api_client = api_client
    end
    # Add subaccount
    # Add a new subaccount.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20048]
    def add(body = {}, opts = {})
      data = add_with_http_info(body, opts)
      data
    end

    # Add subaccount
    # Add a new subaccount.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20048, Fixnum, Hash)>] InlineResponse20048 data, response status code and response headers
    def add_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/add'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Delete subaccount
    # Delete an existing subaccount. Any email related to the subaccount will be saved, but stats will be removed and any future sending calls to this subaccount will fail.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20051]
    def delete(body = {}, opts = {})
      data = delete_with_http_info(body, opts)
      data
    end

    # Delete subaccount
    # Delete an existing subaccount. Any email related to the subaccount will be saved, but stats will be removed and any future sending calls to this subaccount will fail.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20051, Fixnum, Hash)>] InlineResponse20051 data, response status code and response headers
    def delete_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/delete'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Get subaccount info
    # Given the ID of an existing subaccount, return the data about it.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20049]
    def info(body = {}, opts = {})
      data = info_with_http_info(body, opts)
      data
    end

    # Get subaccount info
    # Given the ID of an existing subaccount, return the data about it.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20049, Fixnum, Hash)>] InlineResponse20049 data, response status code and response headers
    def info_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/info'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # List subaccounts
    # Get the list of subaccounts defined for the account, optionally filtered by a prefix.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse20047>]
    def list(body = {}, opts = {})
      data = list_with_http_info(body, opts)
      data
    end

    # List subaccounts
    # Get the list of subaccounts defined for the account, optionally filtered by a prefix.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse20047>, Fixnum, Hash)>] Array<InlineResponse20047> data, response status code and response headers
    def list_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/list'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Pause subaccount
    # Pause a subaccount's sending. Any future emails delivered to this subaccount will be queued for a maximum of 3 days until the subaccount is resumed.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20052]
    def pause(body = {}, opts = {})
      data = pause_with_http_info(body, opts)
      data
    end

    # Pause subaccount
    # Pause a subaccount&#39;s sending. Any future emails delivered to this subaccount will be queued for a maximum of 3 days until the subaccount is resumed.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20052, Fixnum, Hash)>] InlineResponse20052 data, response status code and response headers
    def pause_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/pause'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Resume subaccount
    # Resume a paused subaccount's sending.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20053]
    def resume(body = {}, opts = {})
      data = resume_with_http_info(body, opts)
      data
    end

    # Resume subaccount
    # Resume a paused subaccount&#39;s sending.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20053, Fixnum, Hash)>] InlineResponse20053 data, response status code and response headers
    def resume_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/resume'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Update subaccount
    # Update an existing subaccount.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20050]
    def update(body = {}, opts = {})
      data = update_with_http_info(body, opts)
      data
    end

    # Update subaccount
    # Update an existing subaccount.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20050, Fixnum, Hash)>] InlineResponse20050 data, response status code and response headers
    def update_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/subaccounts/update'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
  end
end