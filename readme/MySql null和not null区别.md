# MYSQL NULL和NOT NULL

## 区别

> MySql“空值” 和 “NULL” 的概念

- 空值是不占用空间的
- mysql中的NULL其实是占用空间的,所以NULL其实并不是空值

> 判断字段不为空的时候，到底要 where column <> '' 还是要用 where column is not null 呢?

```
........................
. column1  .  column1  .
.          .      2    .
.          .	null   .
.    1     .      1    .
........................

SELECT * FROM `test` WHERE column1 IS NOT NULL 结果如下：

........................
. column1  .  column1  .
.          .      2    .
.          .	null   .
.    1     .      1    .
........................

SELECT * FROM `test` WHERE column1 <> '' 结果如下：

........................
. column1  .  column1  .
.    1     .      1    .
........................

```
### 总结：

1. MySQL建议列属性尽量为NOT NULL不要用NULL
2. NOT NULL的效率比NULL高