require 'sinatra'
require 'sendgrid-ruby'

get '/' do
  "home"
  @names = ["joey", "mike", "anthony"]
  erb :home
end

get'/photos' do
  "here are some pictures"
end

get '/history' do
  "Hello World"
end

get '/contact' do
  p "contact us"

  from = SendGrid::Email.new(email: 'arleighmitchell@gmail.com')
  subject = 'Hello World from the SendGrid Ruby Library!'
  to = SendGrid::Email.new(email: 'arleighmitchell@gmail.com')
  content = SendGrid::Content.new(type: 'text/plain', value: 'Hello, Email!')

  mail = SendGrid::Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])

  response = sg.client.mail._('send').post(request_body: mail.to_json)

  p "omg"

  p response.status_code
  p response.body
end