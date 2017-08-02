require 'rails_helper'

describe Wrappers::Wit do 

  describe 'init' do 
    let(:wit_client) {double(:wit)}

    before {
      allow(WitInit).to receive(:client).and_return wit_client
      allow(wit_client).to receive(:message).and_return({"msg_id"=>"0xUur0MvhWiTpcvI8", "_text"=>"m)", "entities"=>{}})
    }

    it 'init without errors' do 
      # allow(wit_client).to receive(:message).and_return Hash
      expect{Wrappers::Wit.new(message: 'Hi')}.not_to raise_error
    end

    it 'requires a message to init' do 
      expect{Wrappers::Wit.new()}.to raise_error ArgumentError
    end
  end
end

