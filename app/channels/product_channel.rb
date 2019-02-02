class ProductChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    #stream_from "product_channel" #6.14 commented out to set up def listen and seperate channels for each product page
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def listen(data)
    stop_all_streams #This is a default method provided by ActionCable to stop all previous streams. If you want to make sure a user only streams from a single channel it can be very helpful to stop all streams just to make sure.
    stream_for data["product_id"] #Since we want to stream from a channel that's specific to one of the products, we can use stream_for and refer to the product ID (or even the product record itself).
  end
end
