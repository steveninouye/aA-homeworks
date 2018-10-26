class Map
  def initialize
    @store = []
  end

  def set(key,value)
    value = value.is_a? Array ? Map.deep_dup(value) : value
    @store << [key, value] if @store.none? {|e| e[0] == key}
  end

  def get(key)
    key_val = @store.select {|kv| kv[0] == key}
    key_val[1]
  end

  def delete(key)
    val = get(key)
    @store.delete_if {|kv| kv[0] == key}
    [key,val]
  end

  def show
    Map.deep_dup(@store)
  end

  private
  self.deep_dup(arr)
    return arr.dup if arr.none? {|e| e.is_a? Array}
    result = []
    arr.each do |el|
      if el.is_a? Array
        result << Map.deep_dup(el)
      else
        result << el
      end
    end
    result
  end
end
