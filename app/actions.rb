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
  @assignments_and_tests = AssignmentsAndTests.find_by(id: params[:id])
  erb :'assignments_and_tests/show'
end
