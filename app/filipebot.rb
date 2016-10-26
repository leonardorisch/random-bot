require 'slack-ruby-bot'

class FilipaoBot < SlackRubyBot::Bot
  command 'how do I look?' do |client, data, match|
    filipe_text = ['um luxo', 'dahora', 'tu gosta de laranja?'].sample
    client.say(text: filipe_text, channel: data.channel)
  end
end
