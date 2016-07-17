# Homepage (Root path)
get '/' do
  erb :index
end

get '/assignments' do
  @assignment_date = params[:assignment_date].upcase
  @assignments = Assignment.where(assignment_date: @assignment_date)
  if @assignments.empty?
    erb :'assignments/error'
    # redirect '/'
  else
    erb :'assignments/index'
  end
end

get 'assignments/error' do
  erb :'assignments/error'
  @assignment_date = params[:assignment_date].upcase
  @assignments = Assignment.where(assignment_date: @assignment_date)
end

get '/assignments/:id' do
  @reviews = Review.where(assignment_id: params[:id])
  @assignment = Assignment.find_by(id: params[:id])
  erb :'assignments/show'
end

get '/build_json' do
  if request.xhr?
    @reviews.reviews.to_json
  else
    erb :index
  end
end
