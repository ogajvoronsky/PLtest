class AddAttachmentUploadedFileCsvToCsvFiles < ActiveRecord::Migration
  def self.up
    change_table :csv_files do |t|
      t.attachment :uploaded_file_csv
    end
  end

  def self.down
    remove_attachment :csv_files, :uploaded_file_csv
  end
end
