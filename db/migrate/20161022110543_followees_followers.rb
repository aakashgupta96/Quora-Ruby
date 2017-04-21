class FolloweesFollowers < ActiveRecord::Migration
  def change
  	create_table "followees_followers", id: false, force: :cascade do |t|
    	t.integer "follower_id"
    	t.integer "followee_id"
 	end
  end
end
