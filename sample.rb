require "slack-notify"
require 'clockwork'
require 'active_support/time'

module Clockwork
client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "# a",
  username: "Fumi",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)

client.notify("What's up?!")

handler do |job|
  client.notify("What's up?!")
  # job
end

every(3.minutes, 'sample.rb')
end