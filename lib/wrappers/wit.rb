require 'wit'

class Wrappers::Wit
	attr_reader :message, :response, :entities, :intents, :datetime

	def initialize(message:)
		@message = message
		@response = WitInit.client.message(message)
		@entities = @response['entities'].try(:keys)
		@intents = @response['entities']['intent'] ? @response['entities']['intent'].map {|intent|  intent["value"]} : nil
		@datetime = @response['entities']['datetime'] ? @response['entities']['datetime'].map {|datetime|  datetime["value"]}: nil
	end
end