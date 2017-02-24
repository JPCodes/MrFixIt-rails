FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "user#{n}@factory.com" }
    password '123456'
  end

  factory :worker do
    sequence(:email){|n| "worker#{n}@factory.com" }
    password '123456'
  end

  factory :job do
    sequence(:title){|n| "#{n} Acre lawn needs mowing" }
    description 'Have 1 acre lawn that needs mowing asap, extra $$$ if weeds are pulled'
    completed false
    pending false
    active_job false
  end
end
