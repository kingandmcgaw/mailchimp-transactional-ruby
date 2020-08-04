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
  class ExportsApi
    attr_accessor :api_client

    attr_accessor :api_key

    def initialize(api_key = '', api_client = ApiClient.default)
      @api_key = api_key
      @api_client = api_client
    end
    # Export activity history
    # Begins an export of your activity history. The activity will be exported to a zip archive containing a single file named activity.csv in the same format as you would be able to export from your account's activity view. It includes the following fields: Date, Email Address, Sender, Subject, Status, Tags, Opens, Clicks, Bounce Detail. If you have configured any custom metadata fields, they will be included in the exported data.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def activity(body = {}, opts = {})
      data = activity_with_http_info(body, opts)
      data
    end

    # Export activity history
    # Begins an export of your activity history. The activity will be exported to a zip archive containing a single file named activity.csv in the same format as you would be able to export from your account&#39;s activity view. It includes the following fields: Date, Email Address, Sender, Subject, Status, Tags, Opens, Clicks, Bounce Detail. If you have configured any custom metadata fields, they will be included in the exported data.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def activity_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/exports/activity'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # View export info
    # Returns information about an export job. If the export job's state is 'complete', the returned data will include a URL you can use to fetch the results. Every export job produces a zip archive, but the format of the archive is distinct for each job type. The api calls that initiate exports include more details about the output format for that job type.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def info(body = {}, opts = {})
      data = info_with_http_info(body, opts)
      data
    end

    # View export info
    # Returns information about an export job. If the export job&#39;s state is &#39;complete&#39;, the returned data will include a URL you can use to fetch the results. Every export job produces a zip archive, but the format of the archive is distinct for each job type. The api calls that initiate exports include more details about the output format for that job type.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def info_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/exports/info'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # List exports
    # Returns a list of your exports.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2001>]
    def list(body = {}, opts = {})
      data = list_with_http_info(body, opts)
      data
    end

    # List exports
    # Returns a list of your exports.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2001>, Fixnum, Hash)>] Array<InlineResponse2001> data, response status code and response headers
    def list_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/exports/list'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Export blacklist
    # Begins an export of your rejection blacklist. The blacklist will be exported to a zip archive containing a single file named rejects.csv that includes the following fields: email, reason, detail, created_at, expires_at, last_event_at, expires_at.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def rejects(body = {}, opts = {})
      data = rejects_with_http_info(body, opts)
      data
    end

    # Export blacklist
    # Begins an export of your rejection blacklist. The blacklist will be exported to a zip archive containing a single file named rejects.csv that includes the following fields: email, reason, detail, created_at, expires_at, last_event_at, expires_at.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def rejects_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/exports/rejects'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
    # Export whitelist
    # Begins an export of your rejection whitelist. The whitelist will be exported to a zip archive containing a single file named whitelist.csv that includes the following fields: email, detail, created_at.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2003]
    def whitelist(body = {}, opts = {})
      data = whitelist_with_http_info(body, opts)
      data
    end

    # Export whitelist
    # Begins an export of your rejection whitelist. The whitelist will be exported to a zip archive containing a single file named whitelist.csv that includes the following fields: email, detail, created_at.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def whitelist_with_http_info(body, opts = {})
      # add api key to request body
      body[:key] = @api_key

      # resource path
      local_var_path = '/exports/whitelist'

      # http body (model)
      data = @api_client.call_api(:POST, local_var_path, :body => body)
      return data
    end
  end
end