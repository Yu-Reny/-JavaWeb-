document.addEventListener('DOMContentLoaded', function() {
    const hospitalInfo = document.getElementById('hospital-info');
    const commentsSection = document.getElementById('comments-section');
    const sidebarLinks = document.querySelectorAll('.sidebar a');
    
    let isCommentSubmitted = false; // 状态标记：是否已提交评论
    let userRating = 0; // 用户评分
    let userCommentText = ''; // 用户评论文本

    sidebarLinks.forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const hospital = this.getAttribute('data-hospital');
            updateHospitalInfo(hospital);
            updateComments(hospital);
        });
    });

    function updateHospitalInfo(hospital) {
        // 清除现有内容
        hospitalInfo.innerHTML = '';

        // 根据选择的医院显示相关信息
        const hospitalData = {
            'A': {
                title: '医院 A',
                meta: '位置: 城市 X',
                description: '这是医院 A 的简要介绍...',
                rating: 4 // 静态星级评分
            },
            'B': {
                title: '医院 B',
                meta: '位置: 城市 Y',
                description: '这是医院 B 的简要介绍...',
                rating: 3 // 静态星级评分
            },
            'C': {
                title: '医院 C',
                meta: '位置: 城市 Z',
                description: '这是医院 C 的简要介绍...',
                rating: 5 // 静态星级评分
            },
            'D': {
                title: '医院 D',
                meta: '位置: 城市 W',
                description: '这是医院 D 的简要介绍...',
                rating: 2 // 静态星级评分
            }
        };

        if (hospitalData[hospital]) {
            const data = hospitalData[hospital];
            hospitalInfo.innerHTML = `
                <div class="hospital">
                    <h3 class="hospital-title">${data.title}</h3>
                    <p class="hospital-meta">${data.meta}</p>
                    <p>${data.description}</p>
                    <div class="hospital-rating">
                        <div class="rating-stars read-only">
                            ${[1, 2, 3, 4, 5].map(i => `
                                <label data-value="${i}" class="${i <= data.rating ? 'active' : ''}">&#9733;</label>
                            `).join('')}
                        </div>
                    </div>
                </div>
            `;
        } else {
            hospitalInfo.innerHTML = '<p>请选择医院</p>';
        }
    }

    function updateComments(hospital) {
        // 根据选择的医院显示相关评论
        const comments = {
            'A': [
                { user: '用户1', date: '2024年9月1日', text: '医院 A 的服务非常好，医生很专业。' },
                { user: '用户2', date: '2024年9月2日', text: '医院 A 的环境不错。' }
            ],
            'B': [
                { user: '用户3', date: '2024年9月3日', text: '医院 B 的环境不错，但等候时间较长。' }
            ],
            'C': [
                { user: '用户4', date: '2024年9月4日', text: '医院 C 的医生很细心，环境也很舒适。' }
            ],
            'D': [
                { user: '用户5', date: '2024年9月5日', text: '医院 D 的服务一般，等待时间较长。' }
            ]
        };

        const hospitalRatings = {
            'A': 4,
            'B': 3,
            'C': 5,
            'D': 2
        };

        if (comments[hospital]) {
            const commentsHtml = comments[hospital].map(comment => `
                <div class="comment">
                    <p class="comment-meta">${comment.user} - ${comment.date}</p>
                    <p>${comment.text}</p>
                    <div class="comment-fixed-rating">
                        ${[1, 2, 3, 4, 5].map(i => `
                            <label class="${i <= hospitalRatings[hospital] ? 'active' : ''}">&#9733;</label>
                        `).join('')}
                    </div>
                </div>
            `).join('');
            commentsSection.innerHTML = `
                <h3>评论</h3>
                ${commentsHtml}
                <div class="comment-form ${isCommentSubmitted ? 'read-only' : ''}">
                    <h4>添加评论</h4>
                    <div class="rating-stars">
                        <label data-value="1">&#9733;</label>
                        <label data-value="2">&#9733;</label>
                        <label data-value="3">&#9733;</label>
                        <label data-value="4">&#9733;</label>
                        <label data-value="5">&#9733;</label>
                    </div>
                    <textarea rows="4" placeholder="在此输入您的评论..." ${isCommentSubmitted ? 'disabled' : ''}></textarea>
                    <button id="submit-comment">${isCommentSubmitted ? '您已提交评论' : '提交评论'}</button>
                    <p id="submission-message" class="submission-success" style="display:none;">评论提交成功!</p>
                </div>
            `;

            const ratingStars = document.querySelectorAll('.comment-form .rating-stars label');
            ratingStars.forEach(star => {
                star.addEventListener('click', function() {
                    if (!isCommentSubmitted) {
                        userRating = this.getAttribute('data-value');
                        ratingStars.forEach(s => {
                            s.classList.remove('active');
                            if (parseInt(s.getAttribute('data-value')) <= userRating) {
                                s.classList.add('active');
                            }
                        });
                    }
                });
            });

            document.querySelector('.comment-form textarea').addEventListener('input', function() {
                userCommentText = this.value;
            });

            document.getElementById('submit-comment').addEventListener('click', function() {
                if (!isCommentSubmitted) {
                    const commentForm = document.querySelector('.comment-form');
                    const submissionMessage = document.getElementById('submission-message');

                    // 禁用评论表单
                    commentForm.querySelector('textarea').disabled = true;
                    commentForm.querySelectorAll('.rating-stars label').forEach(label => {
                        label.classList.remove('active');
                        label.removeEventListener('click', null); // 移除点击事件
                    });

                    // 显示提交成功消息
                    submissionMessage.style.display = 'block';
                    
                    // 显示用户提交的星级评分和文本评论
                    const commentFixedRating = document.createElement('div');
                    commentFixedRating.classList.add('comment-fixed-rating');
                    commentFixedRating.innerHTML = `
                        ${[1, 2, 3, 4, 5].map(i => `
                            <label class="${i <= userRating ? 'active' : ''}">&#9733;</label>
                        `).join('')}
                    `;
                    commentsSection.innerHTML += `
                        <div class="comment">
                            <p class="comment-meta">您 - 当前时间</p>
                            <p>您的评论内容</p>
                            <p>${userCommentText}</p>
                        </div>
                    `;
                    commentsSection.querySelector('.comment:last-child').appendChild(commentFixedRating);

                    // 更新按钮文本
                    this.textContent = '您已提交评论';
                    
                    // 更新状态标记
                    isCommentSubmitted = true;
                } else {
                    this.textContent = '您已提交评论';
                }
            });
        } else {
            commentsSection.innerHTML = '';
        }
    }
});
