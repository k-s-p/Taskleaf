class AddUserToTasks < ActiveRecord::Migration[6.0]
  def up
    execute 'delete from tasks;'
    add_reference :tasks, :user, null: false, index: true
  end

  def  down
    remove_reference :tasks, :user, index: true
  end
end
