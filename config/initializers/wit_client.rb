require 'wit'

wit_client = Wit.new(access_token: ENV.fetch('WIT_TOKEN', ''))