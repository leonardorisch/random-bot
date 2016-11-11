require 'slack-ruby-bot'

class MarcusBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'foda-se', channel: data.channel, as_user: true)
  end

  command 'blame' do |client, data, match|
    witch = data.text.split(' ').last
    response = ["vsf #{witch}", "daora seu bosta #{witch}", "valeu fdp #{witch}"].sample
    client.say(text: response, channel: data.channel, as_user: true)
  end

  command 'gostou do lanche?' do |client, data, match|
    witch = data.text.split(' ').last
    response = ["#doluxoaolixo", "só vegetar agora", "quantidade > qualidade"].sample
    client.say(text: response, channel: data.channel, as_user: true)
  end
end

MarcusBot.run
