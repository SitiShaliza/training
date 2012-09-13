class CreateAnalysispaperexams < ActiveRecord::Migration
  def self.up
    create_table :analysispaperexams do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :analysispaperexams
  end
end
