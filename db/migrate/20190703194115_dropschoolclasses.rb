class Dropschoolclasses < ActiveRecord::Migration[5.0]
  def change
    drop_table :schoolclasses
  end
end
