class AddFilenameToImplog < ActiveRecord::Migration
  def change
    add_column :imp_logs, :origin_filename, :string
    add_column :imp_logs, :filename, :string
  end
end
