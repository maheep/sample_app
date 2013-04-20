class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :photo
  has_attached_file :photo,
                    :styles => { :micro => '40x36>', :thumb => '185x185>', :avatar => '200x200>' },
                    :storage => :s3,
                    :s3_credentials => AppConfig.s3_creds,
                    :s3_permissions => "public-read",
                    :path => "sitter_photos/:style/:id",
                    :bucket => AppConfig.s3_bucket,
                    :default_url => 'missing_:style.png'

  # attr_accessible :title, :body
end
