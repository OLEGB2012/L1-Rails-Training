class HomeController < ApplicationController
  def set_cookies
    cookies.permanent.signed[:user_name] = 'Smith'
    cookies.permanent.signed[:customer_number] = '1234567890'
  end

  def show_cookies
    @user_name = cookies.signed[:user_name]
    @customer_number = cookies.signed[:customer_number]
  end

  def delete_cookies
    cookies.delete :user_name
    cookies.delete :customer_number
  end
end
