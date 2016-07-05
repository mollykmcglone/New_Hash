class NewHash
  define_method(:initialize) do
    @name_array = []
    @value_array = []
  end

  define_method(:myStore) do |name, value|
    @name = name
    @value = value
    @name_array.push(name)
    @value_array.push(value)
  end

  define_method(:myFetch) do |name|
    position = @name_array.index(name)
    @value_array[position]
  end

  define_method(:has_Key?) do |name|
    @name_array.include?(name)
  end

  define_method(:has_Value?) do |value|
    @value_array.include?(value)
  end

  define_method(:length) do
    @name_array.length()
  end
end
