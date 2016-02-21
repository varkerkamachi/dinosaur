# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gallery do
    large_image1 "MyString"
    large_image2 "MyString"
    large_image3 "MyString"
    map_image "MyString"
    thumbnail "MyString"
    dino nil
    user_uploaded false
  end
end
