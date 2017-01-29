class Card < ApplicationRecord
  validates :CardNumber, numericality: { :greater_than_or_equal_to => 0 }, uniqueness: true
  validates :RealName, presence: true, length: { minimum: 5}
  validates :TypeOfCard, presence: true
  validates :EgoBalance, numericality: { :greater_than_or_equal_to => 0 }


  self.per_page = 30

  def self.import_csv(file)
    # Load from csv file
    SmarterCSV.process(file)

  end
end
