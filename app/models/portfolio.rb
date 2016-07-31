class Portfolio < ActiveRecord::Base
  mount_uploader :avatar, PortfolioUploader
end
