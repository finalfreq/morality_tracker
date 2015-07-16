FactoryGirl.define do
  factory :user  do
    name 'jake rake'
    email 'rake123@mail.com'
    password 'password'
    password_confirmation 'password'
    
    factory :admin do
      admin true
    end
  end

  factory :item  do
    name 'this is a duel'
    morality -20
  end

  factory :activity  do
    name 'built project using rails'
    morality -10
  end
end
