class UserDecorator < Draper::Base
  decorates :user
  attr_accessor :params

  def as_json(*params)
    # FIND A WAY TO PASS TOKEN ONLY IF SCOPE => TOKEN
    model.as_json(:only => [:email, :name, :token])
  end
end
