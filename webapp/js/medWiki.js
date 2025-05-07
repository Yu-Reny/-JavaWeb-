// 获取"左边栏的a的链接"
const theLink=document.querySelectorAll('.category a');

// forEach() 方法对数组的每个元素执行 一次 给定的函数
theLink.forEach(link => {
    link.addEventListener('click',function(event){
        event.preventDefault(); //阻止默认跳转

        //获取a的链接的值
        const targetId=this.getAttribute('href');

        //先通过class名:content-section获取,随后每个进行隐藏
        document.querySelectorAll('.content-section').forEach(section=>{
            section.style.display = 'none';
        });

        //显示
        document.querySelector(targetId).style.display='block';
    });


});
