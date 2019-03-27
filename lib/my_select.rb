def my_select(collection)
 # your code here!
  counter = 0
  new_collection = []
  if collection == [] 
    new_collection = []
  else 
    collection_count = collection.size  
    while counter < collection_count
      new_value = yield collection[counter]
      if new_value != nil 
        new_collection << new_value
      end
      counter += 1
    end
  end
  new_collection
end

my_select("0") |i| i.even? }

