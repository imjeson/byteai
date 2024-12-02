---
title: '万字探讨：国内AI应用创业陷入恶性循环，问题在哪里，出路是什么？'
date: 2024-09-24
author: ByteAILab

---

<div class="article-content__container" data-v-0aea98aa="" data-v-7f057cc4="">
<div class="bbt-html" data-v-7f057cc4="">
<div class="ne-render-content" data-editby="ne">
<p>文章来源：<a href="https://mp.weixin.qq.com/s/Wo3z_U0GeuVdDoJ0UvxTyw" rel="noopener nofollow" target="_blank">Winshare看见</a></p>
<div class="ne-atomic">
<div class="ne-img-wrapper" data-align="c">
<img alt="图片来源：由GPTNB生成" src="http://www.jesonc.com/upload/8FD7B96F5E34993C64020C0DB54F4C00/1727060844850/FvuWhfBmRNhu85lFvZWFn37XU9X5.jpg" style="width:100%">
<div class="ne-img-desc">图片来源：由GPTNB生成</div>
</img>
</div>
</div>
<p>自从ChatGPT引起的大模型进化至今，没有人怀疑LLM和其应用范式将会对人类产生极其重大的影响。</p>
<p>无论是大模型本身的chatbot，multi-agent，多模态对话，还是大火的人形机器人，都在行业巨头和资本的助推下，开始攻城略地。

---
</p>
<p>2023开启的foundation model 投资，让国内的基础模型和清华系都得到了大量的资源倾斜。</p>
<p>2024年，大家又把名义重心放到了应用层上。但快两年过去，**恶劣的外部环境，不清晰的商业化路径，判断力和现金源的缺失**，资本的观望情绪已经使得国内的大模型应用投资乏善可陈</p>
<p>大量的套壳应用也是这个资金不足的现状的深刻反映。所以陷入了下面的死循环：</p>
<ul>
<li>因为大模型的缺陷和问题，不能用在高价值场景，只能用来trash talk，做套壳</li>
<li>没有底层技术创新的套壳，无法收钱，导致没有产品壁垒，只能靠负担token成本，把foundation model的能力对用户进行让利。</li>
<li>低价值场景泛滥应用和过多的让利，又导致用户心智觉得这就是该是免费的，并且可有可无</li>
<li>收不上钱导致需要降低运营成本，于是做大量的模型压缩导致模型降智，用户发现模型变差，结果无用，于是离开。</li>
<li>用户减少，资本对于应用标的进一步减少投入</li>
</ul>
<p>做最简单的事，挣最快的钱，只能内卷，导致整个生态/模式恶性循环。</p>
<p>2024年秋这个时间点，当大环境的冷，碰到了小环境的恶性循环。大家又开始审视，问题在哪里呢？</p>
<p class="ne-empty-p"><br/></p>
<h2><strong>01、跟上游卖铲子的NVIDIA算算账</strong></h2>
<p class="ne-empty-p"><br/></p>
<p>对于英伟达的过度依赖体现在了各个领域，CUDA十年如一日的迭代，预先定义了无数的标准，最佳实践，算子库，造就的护城河，已经不是一个单一的单位再造一套轮子就能解决的了。软件领域的正反馈增长，锁定效应，不是某个国家战略或企业能够改变的。实体的意志力能够推动和造势，却完不成逆势。</p>
<ul>
<li>季度收入创下 260 亿美元的纪录，较上一财年第四季度增长 18%，较去年同期增长 262%</li>
<li>数据中心季度收入创下 226 亿美元的纪录，较上一财年第四季度增长 23%，较去年同期增长 427%</li>
<li>宣布拆股计划：从 2024 年 6 月 7 日起对股票进行 1 拆 10</li>
<li>拆股后，季度现金分红提高 150%，每股 0.01 美元</li>
</ul>
<p>可以说风头正盛的nvidia正成为这个地球上最有价值的企业之一。但上游垄断对于整个市场来说一般不是什么好事情。就像日本对氢能源上游专利的垄断，使得后续产业入局的玩家讳莫如。而锂矿资源的分配均衡，也让EV市场发展了起来，反过来最近两三年中国对动力电池的话语权过重，又使得美欧开始对EV市场产生退缩。</p>
<p>我们可以用一个朴素的概念形容这个过程</p>
<p><strong>单次推理用户价值：即平均来计算，你的一次推理能给客户带来多少价值</strong></p>
<p><strong>单次推理成本：即平均一次你生成的token count 计算下来的单价是多少</strong></p>
<p>如果在单次推理成本上nvidia收走了绝大部分，电费又是一个部分，那留给其他部分的商业价值空间将会无比的小。</p>
<p>因为很朴素的道理，大模型应用的价值或者说利润来自于【单次推理用户价值】减去【单次推理成本】</p>
<p>基于这个极简的分析框架可以看到，nvidia的过于强大和垄断基本上没给下游留下什么商业空间了。</p>
<p>对整个生态来说这个<strong>高昂的成本支出项成为了整体大模型走向规模化应用的巨大限制。也是上游AI半导体设计制造厂商得到更大资源倾注的原因。</strong></p>
<p class="ne-empty-p"><br/></p>
<h2><strong>02、场景和需求不匹配</strong></h2>
<p class="ne-empty-p"><br/></p>
<p>刚才我们提到了【单次推理用户价值】</p>
<p>这个字面意思很好理解的所以以不同的场景来看这个值,虽然很难绝对量化，但是可以以现有的经济结构和人类的需求层级在场景上做一个对比。</p>
<div class="ne-atomic">
<div class="ne-img-wrapper" data-align="c">
<img alt="" src="http://www.jesonc.com/FvMqfrj-W0vZ05cz_sJF3fV4hOvS" style="width:677px"/>
</div>
</div>
<p>从马斯洛需求层级理论来看，大模型在各个层次上的应用都面临不同程度的问题：</p>
<h4>基本需求（生理与安全）</h4>
<ul>
<li>普遍性：每个人都需要满足基本的生理和安全需求，如食物、水、住所、安全等。这些是人类生存的基础，因此应用场景广泛。</li>
<li>市场规模大：由于这些需求是每个人都必须满足的，相关产品和服务通常具有巨大的市场潜力。</li>
<li>技术门槛相对低：在很多情况下，满足这些基本需求不需要非常复杂或前沿的技术。</li>
</ul>
<h4>自我实现需求</h4>
<ul>
<li>个性化：自我实现涉及到个人成长、创意表达、自我认知等高度个性化的内容，每个人的具体表现形式不同。</li>
<li>市场规模有限：虽然这些应用可能在特定小众市场中有较高价值，但整体市场规模相对较小，不足以支撑高昂的开发和运营成本。</li>
<li>技术门槛高：满足自我实现类需求通常需要最前沿的大模型技术，如高级AI创作工具、个性化教育平台等，这增加了研发成本。</li>
</ul>
<p>在各个层次上的应用都面临着“单次推理用户价值”与“单次推理成本”之间的不平衡。</p>
<p>虽然从总量上看，</p>
<ul>
<li><strong>越接近基本的需求，所能覆盖的场景也就越广市场规模越大，越顺人性。</strong></li>
<li><strong>越接近自我实现的需求市场规模就越小，越反人性。</strong></li>
</ul>
<p>但我们忽略了一个重要的问题，在无法边际效应递减的情况下，有一个最重要的指标，客单价。</p>
<p><strong>指标基本需求（生理与安全）高层次需求（尊重与自我实现）</strong>市场规模非常大 (10万亿+ RMB)较大 (2.8万亿+ RMB)单次服务价值较低 (100-500 RMB)较高 (500-5000 RMB)技术门槛中等到高高到非常高市场竞争激烈且分散相对集中但技术壁垒高客单价低至中等 (100-500 RMB/次)高至非常高 (500-5000 RMB/次)</p>
<p>我们量化的来看，低层次的需求，根本支撑不了现在的大模型商用，<strong>而大模型的商用也根本不应该从低层次的需求开始</strong>。甚至不应该从中层次的需求开始。</p>
<p>站在这个角度看CharacterAI类应用他只是满足了中层偏下层需求，他们都不会是先发展起来的应用。</p>
<p><strong>他们在这个时间点，根本就是和时间站在了对立面。</strong></p>
<p class="ne-empty-p"><br/></p>
<h2><strong>03、成为时间的朋友，PMF的教训</strong></h2>
<p class="ne-empty-p"><br/></p>
<p>任何一项革命性的技术/产品理念在一开始都会显得高不成低不就，我们每个人的手上就有最好的例子</p>
<div class="ne-atomic">
<div class
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。