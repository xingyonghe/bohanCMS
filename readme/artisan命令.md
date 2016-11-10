# Artisan
## 常用artisan 命令
``` 
php artisan
├──list                 	                    显示命令列表
├──migrate             	 	                    运行数据库迁移
├──make
	├──make:auth                                生成laravel自带的用户认证系统
	├──make:controller controllername           创建控制器
	├──make:middleware middlewarename           创建中间件
	├──make:migration migrationname             创建数据迁移文件
	├──make:model modelname                     创建模型
	├──make:model modelname -u                  创建模型并生成迁移文件
	├──make:request requestname        			创建http请求表单验证
├──key
  	├──key:generate           					生成加密key值
├──migrate
	├──migrate:rollback     					回滚最后一个数据库迁移



























├──make
	  
	  ├──make:command         Create a new Artisan command
	  
	  ├──make:event           Create a new event class
	  ├──make:job             Create a new job class
	  ├──make:listener        Create a new event listener class
	  ├──make:mail            Create a new email class
	  
	  
	  
	  ├──make:notification    Create a new notification class
	  ├──make:policy          Create a new policy class
	  ├──make:provider        Create a new service provider class
	  
	  ├──make:seeder          Create a new seeder class
	  ├──make:test            Create a new test class






























├──clear-compiled       		  Remove the compiled class file
├──down            			  Put the application into maintenance mode
├──env                 		  Display the current framework environment
├──help                		  显示命令帮助信息
├──inspire             		  Display an inspiring quote

├──optimize             	  Optimize the framework for better performance
├──serve                      Serve the application on the PHP development server
├──tinker                     Interact with your application
├──up                         Bring the application out of maintenance mode
├──app
  	├──app:name               Set the application namespace
├──auth
  	├──auth:clear-resets      Flush expired password reset tokens
├──cache
	  ├──cache:clear          Flush the application cache
	  ├──cache:table          Create a migration for the cache database table
├──config
	  ├──config:cache         Create a cache file for faster configuration loading
	  ├──config:clear         Remove the configuration cache file
├──db
  	db:seed                   Seed the database with records
├──debugbar
  	├──debugbar:clear         Clear the Debugbar Storage
├──event
  	├──event:generate         Generate the missing events and listeners based on ├──registration
├──ide-helper
	  ├──ide-helper:generate  Generate a new IDE Helper file.
	  ├──ide-helper:meta      Generate metadata for PhpStorm
	  ├──ide-helper:models    Generate autocompletion for models
├──key
  	├──key:generate           Set the application key

├──migrate
	  ├──migrate:install      Create the migration repository
	  ├──migrate:refresh      Reset and re-run all migrations
	  ├──migrate:reset        Rollback all database migrations
	  ├──migrate:rollback     Rollback the last database migration
	  ├──migrate:status       Show the status of each migration
├──notifications
  	├──notifications:table    Create a migration for the notifications table
├──queue
	  ├──queue:failed         List all of the failed queue jobs
	  ├──queue:failed-table   Create a migration for the failed queue jobs database ├──table
	  ├──queue:flush          Flush all of the failed queue jobs
	  ├──queue:forget         Delete a failed queue job
	  ├──queue:listen         Listen to a given queue
	  ├──queue:restart        Restart queue worker daemons after their current job
	  ├──queue:retry          Retry a failed queue job
	  ├──queue:table          Create a migration for the queue jobs database table
	  ├──queue:work           Start processing jobs on the queue as a daemon
├──route
	  ├──route:cache          Create a route cache file for faster route ├──registration
	  ├──route:clear          Remove the route cache file
	  ├──route:list           List all registered routes
├──schedule
  	├──schedule:run           Run the scheduled commands
├──session
  	├──session:table          Create a migration for the session database table
├──storage
  	├──storage:link           Create a symbolic link from "public/storage" to "storage/app/public"
├──vendor
  	├──vendor:publish         Publish any publishable assets from vendor packages
├──view
  	├──view:clear             Clear all compiled view files
```