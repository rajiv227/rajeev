class User < ActiveRecord::Base
has_one :mba
  # @param [Object] password
  def User.authenticate(email, password)
     if user = find_by_email(email)
      user if user.password == password
    end
  end

end
