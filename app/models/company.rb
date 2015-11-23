class Company < ActiveRecord::Base
  after_save :broadcast

  def change!
    self.name     = Faker::Company.name
    self.slogan   = Faker::Company.catch_phrase
    self.logo_url = Faker::Company.logo

    save!
  end

  private

  def broadcast
    ActionCable.server.broadcast 'company_updates', self
  end
end
