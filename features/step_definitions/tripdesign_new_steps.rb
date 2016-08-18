When /^I click Create new trip$/ do
  find('.trip-list-bar').first(".create-trip").click
end

Then /^jump to the new trip page$/ do
  expect(find('#user-form-sec')).not_to be_nil
end

When /^I input title$/ do
  fill_in 'title', :with => 'PRE TEST title'
  sleep(0.5)
end

And /^select city$/ do
  within('.location-group') do
    first('.selected').click
    find('li', :text => '中国').click
    sleep(1)

    all('.selected')[1].click
    find('li', :text => '浙江').click
    sleep(1)
    
    all('.selected')[2].click
    find('li', :text => '杭州').click
    sleep(1)
  end

end

And /^choose the category$/ do
  find('.tags-sec').find('li', :text => '摄影').click
  sleep(1)
end


When /^I choose a meeting point$/ do
  find('#map').first('.leaflet-tile').click
  sleep(0.5)
end 

And /^input the address$/ do
  fill_in 'meeting-point', :with => '中国最牛比的公司'
  sleep(1)
end

When /^I input highlight$/ do
  within('#highlights') do
    @input = find('input', :text => '和茶专家一起品茗')
      @input.click
    fill_in '@input', :with => '每天可以喝喝下午茶唱唱歌吹吹水'
  end
end 
