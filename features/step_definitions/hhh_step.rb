When 'hhh1' do
  visit('/trip/10260000/photos')
end

Then 'upload the first photo' do
  click_button('btn-first-upload')
  file_dir = File.expand_path('./../../../media/', __FILE__)
  p find(:xpath, '//*[@id="first-upload"]/div[8]')
end
