class CsvFile < ApplicationRecord
  attr_accessor :uploaded_file_csv
  has_attached_file :uploaded_file_csv
  #validates_attachment :uploaded_file_csv, content_type: { content_type: ['text/csv', 'text/comma-separated-values', 'application/csv', 'application/excel', 'application/vnd.ms-excel', 'application/vnd.msexcel']} , message: "is not in CSV format"

end
