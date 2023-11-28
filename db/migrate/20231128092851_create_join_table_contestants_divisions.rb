class CreateJoinTableContestantsDivisions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :contestants, :divisions do |t|
       t.index [:contestant_id, :division_id]
       t.index [:division_id, :contestant_id]
    end
  end
end
