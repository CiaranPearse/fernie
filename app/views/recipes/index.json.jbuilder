json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :recipeid, :title, :description, :ingredients, :preptime, :cooktime, :totaltime, :publisher_id, :diet_id, :course_id, :ease_id, :ratenum, :commentnum, :facebooknum, :twitternum, :pinnum, :stumblenum, :gplusnum, :sumofall, :cscore
  json.url recipe_url(recipe, format: :json)
end
