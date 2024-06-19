layui.use(function(){
  var layer = layui.layer
  ,form = layui.form
  ,laypage = layui.laypage
  ,element = layui.element
  ,laydate = layui.laydate
  ,util = layui.util;

  //欢迎信息
  ///layer.msg('Hello World');

  //输出版本号
  //lay('#version').html(layui.v);

  //日期
  laydate.render({
    elem: '#test2'
    ,value: new Date()
    ,isInitValue: true
  });

  //触发事件
  util.event('test-active', {
    'test-form': function(){
      //alert(fhmodel);
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '数据选择向导:'
        ,area: ['700px', '500px']
        ,shade: 0
        ,maxmin: true
        ,content: '/myappbase/static/major2.html'
        ,success: function(layero){
          layero.find('.layui-layer-content').css('overflow', 'visible');

          form.render().on('submit(*)', function(data){
            layer.msg(JSON.stringify(data.field));
          });
        }
      });
    }
  });
});

