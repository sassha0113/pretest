When /^login in$/ do
  visit('/user/login')
  fill_in 'login-account', :with => 'xuefei.yu@tripinsiders.com'
  fill_in 'login-password', :with => 'Hi123456'
  sleep(1)
  click_button '登录'
end

When /^visit home page$/ do
  visit('/')
end

When /^login in from home page$/ do
  find('#user-sec .login').click
  sleep(1)
  within_frame(find('#account_iframe_login')) do
    fill_in 'login-account', with: 'xuefei.yu@tripinsiders.com'
    fill_in 'login-password', :with => 'Hi123456'
    click_button '登录'
  end
  p '123123'
end

When /^Mouse over username$/ do
  find('#login-user-name').hover
  sleep(1)
end

When /^Go to the trip design page$/ do
  find('#nav-user-info-detail').find_link('行程设计').click
end

Then /^save and next$/ do
  click_button '保存 & 下一步'
end
