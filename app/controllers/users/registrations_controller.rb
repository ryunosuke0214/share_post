class Users::RegistrationsController < Devise::RegistrationsController
    def create
      super
      UserMailer.welcome(resource).deliver if resource.valid?
    end
  end