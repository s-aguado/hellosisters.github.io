module SlackSisBot
    module Commands
      class Prueba < SlackSisBot::Commands::Base
        command 'add' do |client, data, _match|
          client.say(channel: data.channel, text: '4') # TODO Actualmente siempre devuelve cuatro
        end
      end
    end
  end