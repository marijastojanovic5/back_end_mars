require 'byebug'
require 'rest-client'
require 'json'
MarsCard.destroy_all
User.destroy_all







nasa_key = Rails.application.credentials[:api_key]
response_nasa = RestClient.get("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?&sol=1000&api_key=#{nasa_key}")
response_hash = JSON.parse(response_nasa)
mars_details = response_hash["photos"]



mars_details.each do |mars_camera|
    mars_camera_image= mars_camera["img_src"]
    mars_camera_full_name= mars_camera["camera"]["full_name"]
    mars_camera_status= mars_camera["rover"]["status"]
    mars_camera_launch_date= mars_camera["rover"]["launch_date"]
    mars_camera_landing_date= mars_camera["rover"]["landing_date"]
    

    MarsCard.create(image: mars_camera_image,name: mars_camera_full_name,status: mars_camera_status,launch_date: mars_camera_launch_date, landing_date: mars_camera_landing_date)
end

User.create(name: "Marija", username: "Kai")

   




# byebug
0

