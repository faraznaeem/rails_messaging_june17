FactoryGirl.define do
  factory :user do
    name 'John Doe'
    password 'abcde123'
    email { "#{name}@example.com".gsub(/\s/,'.').downcase }
  end
end
