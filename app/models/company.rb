class Company < ActiveRecord::Base

  has_many :closing_prices
  has_many :reports
  has_many :directors, :through => :companies_directors
end
