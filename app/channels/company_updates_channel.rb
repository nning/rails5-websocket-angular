class CompanyUpdatesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'company_updates'
  end
end
