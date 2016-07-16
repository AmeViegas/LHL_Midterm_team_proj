# Homepage (Root path)
get '/' do
  erb :index
end

get '/assignments_and_tests' do
  @line_chart = Gchart.meter(:data => [0.5])#, :label => "50%")
  @assignments_and_tests = AssignmentsAndTests.all
  erb :'assignments_and_tests/index'
end

get '/assignments_and_tests/:id' do
  @reviews = Reviews.where(assignments_and_tests_id: params[:id])
  @assignments_and_tests = AssignmentsAndTests.find_by(params[:id])
  erb :'assignments_and_tests/show'
end

get '/build_json' do
  if request.xhr?
    @reviews.reviews.to_json
  else
    erb :index
  end
end
