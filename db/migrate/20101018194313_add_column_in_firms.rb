class AddColumnInFirms < ActiveRecord::Migration
  def self.up
    add_column :workers, :firm_id, :integer
  end

  def self.down
    remove_column :workers, :firm_id
  end
end
