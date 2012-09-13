class Removecolumntrainingnotes < ActiveRecord::Migration
  def self.up
    	remove_column :training_notes, :document_file_name
      remove_column :training_notes, :document_content_type
      remove_column :training_notes, :document_file_size
      remove_column :training_notes, :document_updated_at
  end

  def self.down
    	add_column :training_notes, :document_file_name, :string
      add_column :training_notes, :document_content_type, :string
      add_column :training_notes, :document_file_size, :integer
      add_column :training_notes, :document_updated_at, :datetime
  end
end
