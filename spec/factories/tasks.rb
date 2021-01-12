FactoryBot.define do
  factory :task do
    title { 'Task' }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
    association :project

    trait :done do
      status { :done }
      project_id { project.id }
      completion_date { Time.current.yesterday }
    end
  end
end
