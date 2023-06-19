class UserMailer < ApplicationMailer
  def welcome(user)
    @greeting = "Hi #{user.email}"

    sleep 100

    mail to: user.email
  end
end