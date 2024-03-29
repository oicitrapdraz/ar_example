# This migration creates the `actions` table, the only schema CT requires.
class CreateActions < ActiveRecord::Migration[5.2]
  # PostgreSQL supports native JSON data type since version 9.2
  # MySQL MySQL 5.7.8, MySQL supports a native JSON data type 5.7.8

  def change
    create_table :actions do |t|
      t.string :trackable_type
      t.integer :trackable_id, limit: 8
      t.string :owner_type,     null: false
      t.bigint :owner_id,       null: false, limit: 8
      t.string :key
      t.json :parameters
      t.string :recipient_type
      t.bigint :recipient_id

      # Known issue in MySQL: fractional second precision
      # -------------------------------------------------
      #
      # MySQL timestamp columns do not support fractional seconds unless
      # defined with "fractional seconds precision". MySQL users should manually
      # add fractional seconds precision to this migration, specifically, to
      # the `created_at` column.
      # (https://dev.mysql.com/doc/refman/5.6/en/fractional-seconds.html)
      #
      # MySQL users should also upgrade to at least rails 4.2, which is the first
      # version of ActiveRecord with support for fractional seconds in MySQL.
      # (https://github.com/rails/rails/pull/14359)

      t.datetime :created_at
    end
    add_index :actions, %i(trackable_type trackable_id), name: 'track_type_track_id_index'
  end
end
