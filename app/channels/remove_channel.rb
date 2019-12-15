class RemoveChannel < ApplicationCable::Channel
  def subscribed
    stream_from "remove_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
