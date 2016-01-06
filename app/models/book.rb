class Book < ActiveRecord::Base
    validates :course, presence:true
    validates :name, presence:true
    validates :author, presence:true
    validates :publish, presence:true
    validates :abstract, presence:true,length: { minimum:  40}
    validates :picture_url, presence:true
                       
                                                                                                                       
end
