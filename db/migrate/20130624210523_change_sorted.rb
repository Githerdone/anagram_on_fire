class ChangeSorted < ActiveRecord::Migration
  def change
    add_column :words, :sorted, :string
  

    Word.all.each do |word|
      new_word = word.value.chars.sort.join
      word.update_attributes!(:sorted => new_word)
    end
  end
end
