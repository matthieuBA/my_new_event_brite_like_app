class TestController < ApplicationController
  def index
       user=User.create(first_name: Time.now.to_i.to_s, email: "matthieubacheley@gmail.com")
      puts "#"*100
      puts user.errors
      puts "#"*100
       UserMailer.welcome_email(user).deliver_now
      #  UserMailer.attendance_email(user).deliver_now
       
  end
end
