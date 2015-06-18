FactoryGirl.define do
  factory :diorama_template do
    path    'foo/index'
    format  'html'
    locale  'en'
    handler 'erb'
    partial 'false'
    body    "something here in the body of the page: <%= 2 + 2 %>"
  end
end