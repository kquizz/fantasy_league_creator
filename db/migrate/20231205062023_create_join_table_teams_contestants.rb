class CreateJoinTableTeamsContestants < ActiveRecord::Migration[7.0]
  def change
    create_join_table :teams, :contestants do |t|
       t.index [:team_id, :contestant_id]
       t.index [:contestant_id, :team_id]
    end
  end
end
