require_relative "version"
require_relative 'endpoints'
require 'net/http'
require 'net/https'
require 'uri'
require 'json'

# USAGE:
# @client = TestRail::APIClient.new('YourBaseURLHere')
# @client.user = 'UserName'
# @client.password = 'Password'


module TestRail
  class APIClient
    @url = ''
    @user = ''
    @password = ''

    include Endpoints
    attr_accessor :user
    attr_accessor :password

    def initialize(base_url)
      if !base_url.match(/\/$/)
        base_url += '/'
      end
      @url = base_url + 'index.php?/api/v2/'
    end


    def send_get(uri, data)
      _send_request('GET', uri, data)
    end


    def send_post(uri, data)
      _send_request('POST', uri, data)
    end

    private
    def _send_request(method, uri, data)
      url = URI.parse(@url + uri)
      if method == 'POST'
        request = Net::HTTP::Post.new(url.path + '?' + url.query)
        request.body = JSON.dump(data)
      else
        request = Net::HTTP::Get.new(url.path + '?' + url.query)
      end
      request.basic_auth(@user, @password)
      request.add_field('Content-Type', 'application/json')

      conn = Net::HTTP.new(url.host, url.port)
      if url.scheme == 'https'
        conn.use_ssl = true
        conn.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end
      response = conn.request(request)

      if response.body && !response.body.empty?
        result = JSON.parse(response.body)
      else
        result = {}
      end

      if response.code != '200'
        if result && result.key?('error')
          error = '"' + result['error'] + '"'
        else
          error = 'No additional error message received'
        end
        raise APIError.new('TestRail API returned HTTP %s (%s)' %
          [response.code, error])
      end

      result
    end
  end

  class APIError < StandardError
  end
end
