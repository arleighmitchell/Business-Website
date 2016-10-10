require 'sinatra'
require 'sendgrid-ruby'

get '/' do
  "home"
  @family = ["Mother: Janie", "Father: Tony", "Brother: Clemens", "Sister: Arleigh"]
  erb :home
end

get'/photos' do
  "Pictures of Molly"
  erb :photos
end

get '/history' do
  "The History of Miss Molly"
  erb :history
end

get '/contact' do
  "Get in Touch with Molly"
  erb :contact
end

post '/contact-form' do
  erb :contactform
    from = SendGrid::Email.new(email: 'arleighmitchell@gmail.com')
    subject = 'Hello World from the SendGrid Ruby Library!'
    to = SendGrid::Email.new(email: 'arleighmitchell@gmail.com')
    content = SendGrid::Content.new(type: 'text/plain', value: 'Hello, Email!')

    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

    response = sg.client.mail._('send').post(request_body: mail.to_json)

    p response.status_code
    p response.body
end

get'/contact-form' do
  "hello"
  erb :contactform
end