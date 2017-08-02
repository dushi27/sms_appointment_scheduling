require 'wit'

WIT_CLIENT = Wit.new(access_token: ENV.fetch('WIT_TOKEN', ''))