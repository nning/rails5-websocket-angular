ActiveRecord::Base.logger = Logger.new($stdout)
10.times { FactoryGirl.create(:company) }
