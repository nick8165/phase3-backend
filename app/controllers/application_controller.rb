class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    students = Student.all
    students.to_json
  end

  get "/houses" do
    houses = House.all
    houses.to_json
  end

  get "/patronus_animals" do
    animals = PatronusAnimal.all
    animals.to_json
  end

  get '/students/:id' do
    student = Student.find(params[:id])
    student.to_json
  end

  get '/patronus_animals/:id' do
    animal = PatronusAnimal.find(params[:id])
    animal.to_json
  end

  post '/students' do
    student = Student.create(first_name:params[:first_name], last_name:params[:last_name], age:params[:age], gender:params[:gender])
    student.to_json
  end

  patch '/students/:id' do
    student = Student.find(params[:id])
    student.update(
      house_id: params[:house_id],
      patronus_animal_id: params[:patronus_animal_id]
    )
    student.to_json
  end

  delete '/students/:id' do
    student = Student.find(params[:id])
    student.destroy
    student.to_json
  end

end
