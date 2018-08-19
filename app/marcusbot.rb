require 'slack-ruby-bot'

class MarcusBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'xunda', channel: data.channel, as_user: true)
  end

  command 'blame' do |client, data, match|
    witch = data.text.split(' ').last
    response = ["text #{witch}", "daora #{witch}", "valeu #{witch}"].sample
    client.say(text: response, channel: data.channel, as_user: true)
  end

  command 'gostou do lanche?' do |client, data, match|
    witch = data.text.split(' ').last
    response = ["#doluxo", "só ficar de boa agora", "quantidade > qualidade"].sample
    client.say(text: response, channel: data.channel, as_user: true)
  end
end

MarcusBot.run
