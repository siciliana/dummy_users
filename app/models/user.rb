class User < ActiveRecord::Base

  def self.authenticate(email,password)
    user = self.find_by_email(email)
    if user != nil
        if user.password == password
          true 
        elsif
          user.email == nil 
          false
        else
          false 
        end 
    else 
      false
    end 
  end
end
