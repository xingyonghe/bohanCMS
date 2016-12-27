#  日期控件
## datetimepicker
> 使用前提
```php
//基础jquery文件自行引入
<link href="datetimepicker.css" rel="stylesheet">
<script src="jquery.datetimepicker.full.js"></script>
```
> 使用方式及参数说明
```php
$('#dead_time').datetimepicker({
    format:"Y-m-d",//格式化日期
    todayButton:false,//关闭选择今天按钮
    minDate:true,
    timepicker:false,//关闭时间选项
});
```
> 其他说明
```php
$.datetimepicker.setLocale('ch');//使用中文语言
```


















