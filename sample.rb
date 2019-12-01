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


# require "slack-notify"
# require 'clockwork'
# require 'active_support/time' # Allow numeric durations (eg: 1.minutes)

# module Clockwork
#   handler do |job|
#     puts "Running #{job}"
#   end

  # handler receives the time when job is prepared to run in the 2nd argument
  # handler do |job, time|
  #   puts "Running #{job}, at #{time}"
  # end

#   every(10.seconds, 'frequent.job')
#   every(3.minutes, 'less.frequent.job')
#   every(1.hour, 'hourly.job')

#   every(1.day, 'midnight.job', :at => '00:00')
# end