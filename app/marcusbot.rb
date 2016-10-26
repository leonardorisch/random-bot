require 'slack-ruby-bot'

class MarcusBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.chat_postMessage(text: 'foda-se', channel: data.channel, as_user: true)
  end
end

MarcusBot.run
