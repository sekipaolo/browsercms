class CreateHtmlBlocks < ActiveRecord::Migration
  def self.up
    create_versioned_table :html_blocks do |t|
      t.string :name
      t.text :content, :limit => 64.kilobytes + 1      
      t.string :status
      t.datetime :deleted_at
    end
  end

  def self.down
    drop_versioned_table :html_blocks
  end
end
