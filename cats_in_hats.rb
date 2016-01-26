
# In one line loop through the initialized cats array and change hat status
# every time the cat number is divisible by the cat number
cats = Array.new
100.times { |index| 100.times{ |pass| cats[index] = !cats[index] if (index + 1) % (pass + 1) == 0 } }

# One line solution tot he same problem developed with Ed
(1..100).inject(Array.new(100, false)) { |cats, cat_number| cats.each_with_index.map { |cat,cat_index| ((cat_index + 1) % cat_number).zero? ? !cat : cat } }
# Not good code, but good practice using Range and Ennumerator methods