class LocationSerializer
  #Serializers generated by the Fast JSON API gem have two built-in methods 
#called serializable_hash and serialized_json which return a serialized hash 
#a JSON string respectively. However, we don't actually need either of these 
#in this example, as to_json will still be called on SightingSerializer.new(sighting) 
#implicitly. As we will see, once our serializers are configured and initialized
#we will not need to do any additional work
  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longitude
end
