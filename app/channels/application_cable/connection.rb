module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user #This line will identify each connection by the current_user who's connected to the app.

    def connect
      self.current_user = find_verified_user
    end

    def disconnect

    end

    protected

    def find_verified_user
      if verified_user = request.env['warden'].user
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
