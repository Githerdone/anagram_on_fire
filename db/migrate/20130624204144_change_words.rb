class ChangeWords < ActiveRecord::Migration
  def change 
   change_table :words do |t|  
    t.index :value, :unique => true  
  end  
end  
end
