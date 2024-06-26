---
title: '这款AI神器一个月更新3次，我们用它搞了个动漫风《玫瑰的故事》'
date: 2024-06-27
author: ByteAILab
---

AI 视频圈子正卷生卷死。
前两周，快手可灵、Luma、Runway 互相扬大锤，让 AI 视频陷入「累死自己卷死同行」的胶着局面。

---

这周，AI 动漫转绘应用也发力了，无论是 Domo AI 推出融合风格功能，还是阿里巴巴开源类似项目 Diffutoon，均在社交媒体上引发关注。
截至目前，Diffutoon 项目已在 GitHub 上斩获 1.7k 颗星。
一个月更新3次，还上线了网页版
DomoAI 是一款 AI 动漫转绘工具，由映刻科技推出，主要用于将图片和视频转化为动漫风格。
整个 6 月份，DomoAI 都在马不停蹄地更新：
6 月 22 日上线融合风格，允许用户通过提示词自定义视频的风格、角色形象和环境；
6 月 14 日推出「Subject Only」功能，用户可根据需要仅改变主角风格；
视频链接：https://mp.weixin.qq.com/s/gmAM7rc4LpSzprmCp7O_Lg
6 月 7 日新增三种模型风格 —— 文艺复兴风格、素描动漫风格、故事书风格。
视频链接：https://mp.weixin.qq.com/s/gmAM7rc4LpSzprmCp7O_Lg
DomoAI 还提供多种其他功能，如文生图、动漫图像真人化等。
- 文生图：用户可以通过输入文本提示词快速生成绘画和艺术作品。
- 动漫图像真人化：一键将动漫图像转换为真人风格。
- 角色动态：上传一张人物图像和一个动作视频，DomoAI 可以让图像中的人物做出同样的动作。
- 口型同步：能够精确同步人物说话时的唇部动作，目前仅支持浮世绘、日式动漫、黏土卡通风以及 3D 卡通风格四种风格。
视频链接：https://mp.weixin.qq.com/s/gmAM7rc4LpSzprmCp7O_Lg
此外，5 月中旬，DomoAI 正式上线网页版，用户们再也不用趴在 Discord 社区中一遍遍呼唤小机器人了。
一手测评：效果还行，免费体验额度太少
目前，DomoAI 既可在网页上使用，也可以在 discord 社区中免费体验。
其玩法很简单，我们就以网页版为例。
第一步：访问 DomoAI 的官网，使用谷歌邮箱登录，然后点击「Try on website」。
链接：https://domoai.app/
DomoAI 主要有四大功能，包括 AI 转绘、图生视频、文生图以及角色动态。
第二步：我们点击「Video」图标，进入操作界面。
第三步：上传视频并输入提示词。
需要注意的是，上传的文件大小不超过 50MB，视频不超过 60 秒。
例如，我们上传了《玫瑰故事》里刘亦菲的一段视频，输入提示词「女孩边走边看」。
接着，选择 AI 模型并调整参数。
DomoAI 提供 34 种风格，涵盖素描风、日本动漫风、粘土风等。我们选择了文艺复兴风格。
影片长度选择默认的 3 秒、参考选择更偏原片，长宽比选择自动。
如果只想转绘画面主角、保留背景，则可以打开「只画主体」功能。
等待大约三分钟，即可生成一段3秒的视频。我们来看一下效果：
不过，不管是网页版还是 Discord 社区，新注册用户只有 15 个免费积分，生成一个 3 秒视频就用完了。如果需要更多服务，则需要付费。
卷起来！阿里开源 Diffutoon
实际上，阿里巴巴也悄咪咪的涉足该领域。
最近，阿里巴巴和华东师范大学联合开源了 Diffutoon。这是一种卡通渲染技术，可以将逼真的视频转换成动画风格，而且能够处理高分辨率、长时长的视频，还可以根据提示来编辑内容。
- 代码: https://github.com/modelscope/DiffSynth-Studio/tree/main/examples/Diffutoon
- 论文: https://arxiv.org/abs/2401.16224
- 地址：https://ecnu-cilab.github.io/DiffutoonProjectPage/
具体来说，它利用扩散模型将现实风格的视频转换成动画风。这种转换不仅包括颜色和纹理的变化，还涉及对光影、轮廓等元素的艺术化处理，以模仿手绘动画的视觉效果。
视频链接：https://mp.weixin.qq.com/s/gmAM7rc4LpSzprmCp7O_Lg
同时，它通过特定的算法和技术，确保视频序列中的每一帧在风格和内容上保持一致性，避免了视频播放时可能出现的闪烁、颜色突变或内容不连贯的问题。
视频链接：https://mp.weixin.qq.com/s/gmAM7rc4LpSzprmCp7O_Lg
此外，它还具备自动着色功能，能够根据视频内容和风格要求自动选择合适的颜色进行填充。
视频链接：https://mp.weixin.qq.com/s/gmAM7rc4LpSzprmCp7O_Lg
为了展示自家技术过硬，研发团队还将 Diffutoon 与市面上的竞品进行了对比，其中就包括 DomoAI。
真是「撞衫」不可怕，谁丑谁尴尬。
以后我们会通过新专栏带来更多 AIGC 案例演示，也欢迎大家进群交流。
![图片](https://mmbiz.qpic.cn/sz_mmbiz_jpg/DT8udUick9sKv3R2n7asNToLB76ZmfEV8z10O02lm0OF7whhRyKGFKibffU4uSREcsp90oY9DtkwglPsMgEahiaMQ/640?wx_fmt=other&from=appmsg&tp=webp&wx_lazy=1&wx_co=1)
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。