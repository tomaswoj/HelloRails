class CreateCarInfos < ActiveRecord::Migration
  def up
    update "create view car_infos as select owner, registration from cars"
  end
  def down
    update "drop view car_infos"
  end
end
