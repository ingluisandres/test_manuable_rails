class AccountVerificationDocument < ActiveRecord::Base 
  include ImageUploader::Attachment(:file)
end
