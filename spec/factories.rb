FactoryGirl.define do
  factory :job do
    title '1 Acre lawn needs mowing'
    description 'Have 1 acre lawn that needs mowing asap, extra $$$ if weeds are pulled'
    completed false
    pending false
    active_job false    
  end
end
