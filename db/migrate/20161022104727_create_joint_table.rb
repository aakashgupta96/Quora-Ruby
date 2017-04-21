class CreateJointTable < ActiveRecord::Migration
  def change
    create_join_table :answers, :users do |t|
       t.index [:answer_id, :user_id]
       t.index [:user_id, :answer_id]
    end
  end
end
