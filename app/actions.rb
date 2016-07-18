# Homepage (Root path)
get '/' do
  erb :index
end


get '/assignments' do
  @assignment_date = params[:assignment_date].upcase
  @assignments = Assignment.where(assignment_date: @assignment_date)
  if @assignments.empty?
    erb :'assignments/error'
  else
    erb :'assignments/index'
  end
end

get 'assignments/error' do
  erb :'assignments/error'
  @assignment_date = params[:assignment_date].upcase
  @assignments = Assignment.where(assignment_date: @assignment_date)
end
get '/assg/:id' do
  @reviews = Review.where(assignment_id: params[:id])
  @assignment = Assignment.find_by(id: params[:id])
  erb :'assignments/show'
end

get '/review' do
  @assignment = Assignment.find_by(id: params[:id])
  erb :'assignments/review'
end

post '/review' do
  @review = Review.new(
  assignment_id:   params[:assignment_id],
  cohort_id:       params[:cohort_id],
  review_txt:      params[:review_txt],
  rating:          params[:rating],
  doItFIt:         params[:doItFIt]
   )
  if @review.save
    redirect "/assg/#{params[:assignment_id]}"
  else
    erb :'/review'
  end
end
