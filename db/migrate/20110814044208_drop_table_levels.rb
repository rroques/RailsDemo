class DropTableLevels < ActiveRecord::Migration
  def self.up
    drop_table :levels
  end

  def self.down
  end
end
