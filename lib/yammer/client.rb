module Yammer
  # Wrapper for the Yammer REST API
  #
  # @note All methods have been separated into modules and follow the same grouping used in {http://developer.yammer.com/api/ the Yammer API Documentation}.
  # @note From Yammer: When polling for messages, do not exceed one poll per minute. Clients polling excessively will be blocked. However, you may sometimes need to fetch messages more frequently than once per minute, for example, if a user flips between "following", "sent" and "received" feeds quickly), and this is allowed for a few requests. Do not attempt to decrease message latency in your client by checking for new messages more frequently than once per minute.
  class Client < API
    # Require client method modules after initializing the Client class in
    # order to avoid a superclass mismatch error, allowing those modules to be
    # Client-namespaced.
    require 'yammer/client/activities'
    require 'yammer/client/feed'
    require 'yammer/client/groups'
    require 'yammer/client/messages'
    require 'yammer/client/networks'
    require 'yammer/client/search'
    require 'yammer/client/suggestions'
    require 'yammer/client/users'
    require 'yammer/client/opengraph'

    alias :api_endpoint :endpoint

    include Yammer::Client::Activities
    include Yammer::Client::Feed
    include Yammer::Client::Groups
    include Yammer::Client::Messages
    include Yammer::Client::Networks
    include Yammer::Client::Search
    include Yammer::Client::Suggestions
    include Yammer::Client::Users
    include Yammer::Client::OG
  end
end
