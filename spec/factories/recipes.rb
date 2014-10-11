# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
    recipeid 1
    title "MyText"
    description "MyText"
    ingredients "MyText"
    preptime 1
    cooktime 1
    totaltime 1
    publisher nil
    diet nil
    course nil
    ease nil
    ratenum 1
    commentnum 1
    facebooknum 1
    twitternum 1
    pinnum 1
    stumblenum 1
    gplusnum 1
    sumofall 1
    cscore 1
  end
end
