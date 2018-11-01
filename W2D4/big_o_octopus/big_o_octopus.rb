# O(n^2)
def sluggish_octopus(fishes)
  fishes.each_with_index do |f1, i1|
    biggest_fish = true
    fishes.each_with_index do |f2, i2|
      biggest_fish = false if f2.length > f1.length
    end
    return f1 if biggest_fish
  end
end

# O(n log n)
def dominant_octopus(array, &prc)
  return array if array.length <= 1
  prc ||= Proc.new { |x, y| x <=> y }
  mid = array.length / 2
  left = dominant_octopus(array[0...mid], &prc)
  right = dominant_octopus(array[mid..-1], &prc)

  merge(left,right,&prc)
end

def merge(left, right, &prc)
  result = []
  until left.empty? || right.empty?
    if prc.call(left[0],right[0])
      result << right.shift
    else
      result << left.shift
    end
  end
  result + left + right
end

# O(n)
def clever_octopus(fishes)
  result = fishes.first
  fishes.each do |fish|
    result = fish if fish.length > result.length
  end
  result
end

# O(n)
def slow_dance(direction, array)
  array.each_with_index do |direc, i|
    return i if direc == direction
  end
end

# tiles_hash = {
#     "up" => 0,
#     "right-up" => 1,
#     "right"=> 2,
#     "right-down" => 3,
#     "down" => 4,
#     "left-down" => 5,
#     "left" => 6,
#     "left-up" => 7
# }

# O(1)
def fast_dance(direction, hash)
  tiles_hash[direction]
end
