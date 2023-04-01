class Article < ApplicationRecord
  mount_uploader :banner, BannerUploader
end
