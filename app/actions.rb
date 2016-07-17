# Homepage (Root path)
get '/' do
  erb :index
end

#default page W1D1
get '/assignments' do
  @assignment_date = params[:assignment_date]
  @assignments = Assignment.where(assignment_date: @assignment_date)
  erb :'assignments/index'
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
