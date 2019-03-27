def my_select(collection)
  counter = 0
  new_collection = []
  if collection == [] 
    new_collection = []
  else 
    collection_count = collection.size  
    while counter < collection_count
      new_value = yield collection[counter]
      new_collection << new_value
      counter += 1
    end
  end
  new_collection
end

my_select {|i| i % 2 == 0 ? "#{i}" : ""}

