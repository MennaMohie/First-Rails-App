class User < ApplicationRecord
  validates:id, presence:true, length:{minimum:6, maximum:32}
  validates:name, presence:true, length:{minimum:6, maximum:32}
  validates:age, presence:true, numericality:{greater_than_or_equal_to:13, smaller_than_or_equal_to: 130}
  has_secure_password
end
