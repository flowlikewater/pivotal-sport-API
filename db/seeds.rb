# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Event < ApplicationRecord

list=[
  ["Hockey Training", "5 on 5 hockey match in beautiful field in the Hockey Jockey Low Key Club", 1, 1, 1, "professional", "competitive", "indoor", 100, "https://static01.nyt.com/images/2012/07/13/sports/olympics/13rachel/13rachel-blog480.jpg", "10/10/2017", "15:00", "Hockey Jockey Low Key Club, 33 Lockhart Road, Wan Chai"],
  ["Frisbee Training", "5 on 5 frisbee match in beautiful field in the Frisbee Jockey Low Key Club", 2,2,2, "beginners", "friendly", "outdoor", 300, "http://www.wfdf.org/component/joomgallery/image?format=raw&type=img&id=7", "11/12/2017", "18:00", "Frisbee Jockey Low Key Club, 33 Lockhart Road, Wan Chai"]
]

list.each do |name,description,sport_id,district_id,user_id,level,intensity,terrain,price,imageUpload,date,time,address|
  Event.create(name:name,description:description,sport_id:sport_id,district_id:district_id,user_id:user_id,level:level,intensity:intensity,terrain:terrain,price:price,imageUpload:imageUpload,date:date,time:time,address:address)
  end
end

class District < ApplicationRecord
list = [
  ["Causeway Bay","22.2859787","114.1914919"],
  ["Central","22.2799907","114.1587983"],
  ["Discovery Bay","22.2921406","114.0101467"],
  ["Fanling","22.4916829","114.1414685"],
  ["Hung Hom","22.3055658","114.1887233"],
  ["Jordan","22.3048612","114.1692021"],
  ["Kowloon City","22.3232097","114.1855505"],
  ["Lantau Island","22.2664984","113.941751"],
  ["Mong Kok","22.3203648","114.169773"],
  ["Olympic","22.2736403","114.1875011"],
  ["Sai Kung","22.383689","114.2707867"],
  ["Sheung Wan","22.2863943","114.1491375"],
  ["Tin Hau","22.2823972","114.1922382"],
  ["Tseung Kwan O","22.3119357","114.2568776"],
  ["Tsim Sha Tsui","22.2988123","114.1721746"],
  ["Wan Chai","22.276022","114.1751471"],
  ["Yau Ma Tei","22.3068537","114.1714423"]
  ]
  list.each do |name, lat, lng|
    District.create( name: name , lat: lat , lng: lng)
  end
end

class Sport < ApplicationRecord
list = [
  ["Sport1"],
  ["Sport2"],
  ["Sport3"],
  ["Sport4"],
  ["Sport5"],
  ["Sport6"],
  ["Sport7"],
  ["Sport8"],
  ["Sport9"],
  ["Sport10"],
  ["Sport11"],
  ["Sport12"],
  ["Sport13"],
  ["Sport14"],
  ["Sport15"],
  ["Sport16"],
  ["Sport17"],
  ["Sport18"]
]
  list.each do |name, description, rules, imageUrl|
    Sport.create( name: name , description: description , rules: rules, imageUrl:imageUrl)
  end
end
