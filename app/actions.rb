# Homepage (Root path)
get '/' do
  erb :index
end

get '/assignments_and_tests' do
  @assignments_and_tests = AssignmentsAndTests.all
  erb :'assignments_and_tests/index'
end
