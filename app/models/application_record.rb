class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  URL_REGEX = /\A^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$\z/ix
  HEX_REGEX = /\A#?(?:[A-F0-9]{3}){1,2}\z/i
end
