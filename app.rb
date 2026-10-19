require 'sinatra'

get '/dawid_juch2_gmail_com' do
  content_type 'text/plain'

  x = params['x']
  y = params['y']

  if x.nil? || y.nil? ||
     !x.match?(/\A[0-9]+\z/) ||
     !y.match?(/\A[0-9]+\z/)
    'NaN'
  else
    x = x.to_i
    y = y.to_i
    x.lcm(y).to_s
  end
end
