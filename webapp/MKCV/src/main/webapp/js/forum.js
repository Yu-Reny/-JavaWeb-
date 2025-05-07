        document.addEventListener('DOMContentLoaded', () => {
            const postsPerPage = 4; // 每页显示的帖子数
            const posts = document.querySelectorAll('.post'); // 获取所有帖子
            const totalPosts = posts.length; // 总帖子数
            const totalPages = Math.ceil(totalPosts / postsPerPage); // 计算总页数
            let currentPage = 1; // 当前页码
    
            // 创建分页按钮
            const createPaginationButtons = () => {
                const pagination = document.getElementById('pagination');
                pagination.innerHTML = ''; // 清除现有的分页按钮
    
                if (totalPages <= 1) return; // 如果只有一页则无需分页
    
                for (let i = 1; i <= totalPages; i++) {
                    const button = document.createElement('button');
                    button.textContent = i; // 设置按钮文本为页码
                    button.classList.add('page-btn'); // 添加类
                    if (i === currentPage) {
                        button.classList.add('active'); // 当前页码添加激活类
                    }
                    button.addEventListener('click', () => {
                        currentPage = i; // 设置当前页码
                        showPage(currentPage); // 显示指定页码的帖子
                    });
                    pagination.appendChild(button); // 添加按钮到分页容器
                }
            };
    
            // 显示指定页码的帖子
            const showPage = (page) => {
                posts.forEach((post, index) => {
                    post.style.display = (index >= (page - 1) * postsPerPage && index < page * postsPerPage) ? 'block' : 'none'; // 显示或隐藏帖子
                });
    
                // 更新分页按钮的激活状态
                const buttons = document.querySelectorAll('.pagination button');
                buttons.forEach(button => {
                    button.classList.toggle('active', parseInt(button.textContent) === page); // 更新按钮样式
                });
            };
    
            createPaginationButtons(); // 创建分页按钮
            showPage(currentPage); // 显示初始页
        });
