if Rails.env.production?
  ActionMailer::Base.delivery_method = :mailgun
elsif Rails.env.development?
  ActionMailer::Base.delivery_method = :letter_opener
else
  ActionMailer::Base.delivery_method = :test
end
