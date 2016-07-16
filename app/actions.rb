# Homepage (Root path)
get '/' do
  erb :index
end

#default page W1D1
get '/assignments_and_tests' do
  @assignment_date = params[:assignment_date]
  @assignments_and_tests = Assignment.where(assignment_date: @assignment_date)
  erb :'assignments_and_tests/index'
end

get '/assignments_and_tests/:id' do
  @assignments_and_tests = Assignment.find_by(id: params[:id])
  erb :'assignments_and_tests/show'
end
