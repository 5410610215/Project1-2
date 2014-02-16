Given /the following unsolveds exist/ do |unsolveds_table|
  unsolveds_table.hashes.each do |unsolveds|
    Unsolved.create!(unsolveds)
  end
end
