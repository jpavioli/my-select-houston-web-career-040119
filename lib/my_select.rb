def my_select(collection)
  counter = 0
  new_collection = []
  if collection == [] 
    new_collection = []
  else 
    collection_count = collection.size  
    while counter < collection_count
    true_or_not = yield collection[counter]
    if  true_or_not
      new_collection << collection[counter]
    end
      counter += 1
    end
  end
  new_collection
end

my_select("") {|i| i.even?}

