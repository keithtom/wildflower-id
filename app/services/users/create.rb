module Users
  class Create
      # this code was copied from user.rb in the omniauth README.
      # we want it to be a service call because this is a critical creation event.
      def self.from_omniauth(access_token)
      data = access_token.info
      user = User.where(email: data['email']).first

      # Uncomment the section below if you want users to be created if they don't exist
      # unless user
      #     user = User.create(name: data['name'],
      #        email: data['email'],
      #        password: Devise.friendly_token[0,20]
      #     )
      # end
      user
    end
  end
end
