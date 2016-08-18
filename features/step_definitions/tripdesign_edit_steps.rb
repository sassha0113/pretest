When /^I click first draft$/ do
  first(".trip-wrapper").find('.fa-pencil').click
end

Then /^jump to the draft page$/ do
  expect(find('#step-nav')).not_to be_nil
end

When /^I select a meeting point$/ do
  #find('#map').first('.leaflet-tile').click
  find('#map').click_at(50, 50)
  sleep(0.5)
end 

And /^input the addresses$/ do
  fill_in 'meeting-point', :with => '中国最牛比的公司'
  sleep(1)
end

When /^I input highlights$/ do
  find('#highlights').all('input')[0].set('喝喝茶聊聊天吹吹水')
  #find('#highlights').all('input')[1].set('煮一杯泡面')
  #find('#highlights').all('input')[2].set('看一场球赛')
end 

When /^I input stories$/ do
  content = 'Why Exercise? Working out controls weight, combats health conditions and diseases, improves mood, boosts energy, promotes better sleep and because is fun! Your body is designed to do exercise not to be in a chair 8 hours! '
  fill_in 'story', with: content
end

When /^I input description$/ do
  content = 'In this trip we are gonna have a professional personal trainer session with me in the Gym Physical at Skyline tower. We are gonna train: Legs, Back, Chest and Shoulders in one sessions. Its a beginner session to introduce yourself to the fitness world. It will take around 45min up to 1hour.'
  fill_in 'description', with: content
end

When /^I input details$/ do
  find("#max-num").first('.minus').click
end

When /^I upload pictures$/ do
  file_dir = File.expand_path('./../../../media/', __FILE__)
  p file_dir
  find('#first-upload-wrapper').first('input[type=file]').set(file_dir + '/photo1.jpeg')
  sleep(1)

  find('#upload-sec').first('input[type=file]').set(file_dir + '/photo2.jpg')
  sleep(1)
  find('#upload-sec').first('input[type=file]').set(file_dir + '/photo3.jpeg')
end
