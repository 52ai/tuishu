# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

books = [{:name => '黑客与画家', 
          :author => ' [美] Paul Graham ', 
          :publish => '人民邮电出版社',
          :abstract => '本书是硅谷创业之父Paul Graham 的文集，主要介绍黑客即优秀程序员的爱好和动机，讨论黑客成长、黑客对世界的贡献以及编程语言和黑客工作方法等所有对计算机时代感兴趣的人的一些话题。书中的内容不但有助于了解计算机编程的本质、互联网行业的规则，还会帮助读者了解我们这个时代，迫使读者独立思考。
本书适合所有程序员和互联网创业者，也适合一切对计算机行业感兴趣的读者。',
          :picture_url => 'http://img3.douban.com/lpic/s4669554.jpg'},
          
    	 {:name => '编程人生', 
    	  :author => ' Peter Seibel ', 
    	  :publish => '人民邮电出版社',
    	  :abstract => '界顶尖的程序员是怎么走上编程道路的？他们的编程工作创造和改变了人类历史，在这一过程中都有哪些经验和教训？
他们对计算机软件行业的过去、现在和未来有什么独到的看法和见解？他们对培养、发现、选拔、面试优秀的程序员有什么建议？
放下手头的工作，听听这些软件先驱们的故事和建议，眼界可以更开阔，思路可以更清晰，方向可以更明确，人生可以更精彩。
作者Peter Seibel采访了下面这15位世界级编程大师，本书是他在近80个小时的访谈录音基础上整理汇编而成的。',
    	  :picture_url => 'http://img3.douban.com/lpic/s4549954.jpg'},
    	  
    	 {:name => '设计原本', 
          :author => 'Frederick P. Brooks, Jr. ', 
          :publish => ' 机械工业出版社',
          :abstract => '无论是软件开发、工程还是建筑，有效的设计都是工作的核心。《设计原本:计算机科学巨匠Frederick P. Brooks的思考》将对设计过程进行深入分析，揭示进行有效和优雅设计的方法。
本书包含了多个行业设计者的特别领悟。Frederick P. Brooks, Jr.精确发现了所有设计项目中内在的不变因素，揭示 了进行优秀设计的过程和模式。通过与几十位优秀设计者的对话，以及他自己在几个设计领域的经验，作者指出，大胆的设计决定会产生更好的结果。
作者追踪了设计过程的演进，探讨了协作和分布式设计，阐明了哪些条件造就了真正卓越的设计者。他探讨了设计过程的具体细节，包括多种预算约束条件、美学考虑、设计经验主义及工具。同时，他将这些讨论与现实中的案例结合起来，这些案例从房屋建造到IBM的Operating System/360。成功的关键因素贯穿全书，每个设计者、设计项目经理和设计研究者都应该知道。',
          :picture_url => 'http://img4.douban.com/lpic/s4571846.jpg'},

  	 ]

books.each do |book|
  Book.create!(book)
end