class AddLevelToTracks < ActiveRecord::Migration
  def self.up
    add_column :tracks, :level, :text
  end

  def self.down
    remove_column :tracks, :level
  end
end
