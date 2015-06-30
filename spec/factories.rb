FactoryGirl.define do
  factory :user do
  email 'test@email.com'
  end
end



FactoryGirl.define do
  factory :comment do
    title 'first comment'
    description 'Hello world'
  end
end
