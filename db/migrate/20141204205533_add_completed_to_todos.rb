class AddCompletedToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :completed, :datetime
  end
end
