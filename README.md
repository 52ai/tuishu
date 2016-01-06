果壳推书
===========================================
		组长：余文艳
		组员：姚攀、汤建明、魏珊珊、吕帅、莫思雨

###项目意义

1.通过果壳推书SaaS应用让国科大研一新生能更好更快的找到课程学习的方法以及适合自己的课程学习书籍。<br>
2.将高级软件工程所学到的Ruby on Rails 敏捷开发方法运用到实际项目当中去。<br>


###开发笔记

1.Cloud9 运行rails app 使用命令：rails s -p  $PORT   -b $IP<br>
2.生成图书模型命令：rails generate model book name:string author:string publish:string abstract:text picture_url:string   

		invoke  active_record
		create    db/migrate/20160103052837_create_books.rb  （关键脚本）
		create    app/models/book.rb    （关键脚本）
		invoke    test_unit
		create      test/models/book_test.rb
		create      test/fixtures/books.yml
		
3.使用rake 真正的创建数据表:rake db:migrate

		== 20160103052837 CreateBooks: migrating ======================================
		-- create_table(:books)
   		-> 0.0054s
		== 20160103052837 CreateBooks: migrated (0.0095s) =============================
      

4.生成控制器命令：rails generate controller books

		create  app/controllers/books_controller.rb
		invoke  erb
		create    app/views/books
		invoke  test_unit
		create    test/controllers/books_controller_test.rb
		invoke  helper
		create    app/helpers/books_helper.rb
		invoke    test_unit
		invoke  assets
		invoke    coffee
		create      app/assets/javascripts/books.coffee
		invoke    scss
		create      app/assets/stylesheets/books.scss
		
5.编写视图模板：show.html.erb<br>
6.设置路由：get 'books/:id' => 'books#show'<br>

7.编写原始数据并运行:rake db:seed

		books = [{:name => '算法导论', :author => 'G', :publish => '人民出版社',:abstract => 'XXXXXXX',:picture_url => 'www'},
		    	 {:name => '网络技术', :author => 'G', :publish => '清华出版社',:abstract => 'XXXXXXX',:picture_url => 'www'},
		
		  	 ]
		
		books.each do |book|
		  Book.create!(book)
		end
		
8.sqlite3数据库的操作

		1） 载入sqlite数据库 sqlite3 db/development.sqlite3
		2)  查看数据库中所含表 .tables
		3)  查看整个数据表的结构 .schema  查看某一个数据表的结构 .schema books
		4） 查询数据表的所有内容 select * from books  条件查询 
		5)  向数据表books中插入一条数据 insert into books(id,name,author,publish,abstract，picture_url) values('1','ruby基础教程','松本行弘','人民邮电出版社','这是一本……','www.example.com');
		
		注：在rails框架中不提倡直接使用sql插入语句，提倡使用seed.rb脚本向数据库中插入数据
		
		6） 删除数据表 drop table books
		7)  查看当前数据库 .database
		8） 删除数据表的所有内容 delete from books  条件删除
		9） 更新数据表中的数据 update books set name='python基础教程', picture_url='www.mryu.top' where id=1;
		10) 退出 .exit 或 .quit
		
9.新增图书编辑功能

10.新增图书删除以及编辑、删除权限验证功能

11.books表中添加了course字段

12.20160105 开发总结

		1.在books表中添加了course字段
		2.在搜索框中输入书名课查询到相关推荐书籍
		3.已推荐书籍的编辑、删除功能均已实现
		4.在用户没有登录之前，暂时性的添加了编辑和删除功能的权限设置
		
13.合并失败，版本回退