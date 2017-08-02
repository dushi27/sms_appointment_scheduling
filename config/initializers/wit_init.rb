require 'wit'

module WitInit
  class << self
    def client
      @client ||= Wit.new(access_token: ENV.fetch('WIT_TOKEN', ''))
    end
  end
end