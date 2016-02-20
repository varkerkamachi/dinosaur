# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dino do
    name "MyString"
    description "MyText"
    metadata ""
    era nil
    diet "MyString"
    location nil
  end
end
