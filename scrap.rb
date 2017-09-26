h = {:z => ["z", "d", "a"], :a => ["w", "f", "v"]}

h.each do | k , v |
  v.sort
end
# does nothing - returns the hash.

h.collect do | k , v |
  v.sort
end
# returns an array, with the arrays sorted. Keys are not there and there's the extra array - [["a", "d", "z"], ["f", "v", "w"]]

h.collect do | k , v |
  k[v].sort
end
#error - no implicit conversion of Array into Integer -- which means it probably thought I was trying to convert an array (v) into an integer that would be the element number of k

h.each do | k , v |
  h[k].sort
end
#returns the original hash

h.collect do | k , v |
  h[k].sort
end
# returns an array, with the arrays sorted. Keys are not there and there's the extra array - [["a", "d", "z"], ["f", "v", "w"]]
