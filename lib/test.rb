def sort(hash)
  sorted_keys = Array.new
  sorted_values = Array.new
  sorted_roster = Hash.new
  counter = 0
  roster.each { |grade|
    sorted_keys[counter].push(grade)
    counter += 1
  }
end

sorted_keys.push(roster.keys)
sorted_values.push(roster.values) { |a, b| a <=> b }
