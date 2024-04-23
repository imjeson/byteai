<script setup lang="ts">
import { ref, onMounted, onUnmounted, computed } from 'vue';
import QRCode from './utils/QRCode.vue';
import Date from './Date.vue'
import { data as posts } from './posts.data.js'
import { useData } from 'vitepress'

const { frontmatter } = useData()
import { useTodayMessage } from './TodayMessage';
const { message } = useTodayMessage();

// 定义一个响应式变量存储窗口宽度
const windowWidth = ref(window.innerWidth);

// 定义一个计算属性来判断是否为小屏设备
const isSmallScreen = computed(() => windowWidth.value <= 768);

// 更新窗口宽度
const updateWidth = () => {
  windowWidth.value = window.innerWidth;
};

const showQR = ref(false);  // State to toggle QR code visibility

const randomColor = () => {
  // 生成随机颜色
  return `#${Math.floor(Math.random() * 16777215).toString(16)}`;
};

// 设置按钮背景颜色的响应式引用
const buttonBgColor = ref(randomColor());

// 定义一个响应式变量存储窗口滚动位置
const lastScrollTop = ref(0);  // Last scroll position
const stickTop = ref(false);  // State to manage sticky behavior
const showTopMessage = ref(true); // 控制顶部消息显示的状态

const handleScroll = () => {
  const st = window.scrollY || document.documentElement.scrollTop;
  if (st > lastScrollTop.value) {
    stickTop.value = true;
  } else {
    stickTop.value = false;
  }
  lastScrollTop.value = st <= 0 ? 0 : st; // For Mobile or negative scrolling
};

const handleClose = () => {
  showTopMessage.value = false; // 关闭顶部消息
};

// 在组件挂载到DOM上后添加事件监听器，并在组件卸载前移除
onMounted(() => {
  window.addEventListener('resize', updateWidth);
  window.addEventListener('scroll', handleScroll); // 添加滚动事件监听器
  // 页面加载时设置随机颜色
  buttonBgColor.value = randomColor();
});

onUnmounted(() => {
  window.removeEventListener('resize', updateWidth);
  window.removeEventListener('scroll', handleScroll); // 移除滚动事件监听器
});

</script>

<template>
  <div class="divide-y divide-gray-200 dark:divide-slate-200/5">
    <div class="pt-6 pb-8 space-y-2 md:space-y-5">
      <!-- <h1
        class="text-3xl leading-9 font-extrabold text-gray-900 dark:text-white tracking-tight sm:text-4xl sm:leading-10 md:text-6xl md:leading-14"
      >
        {{ frontmatter.title }}
      </h1> -->
      <template v-if="isSmallScreen">
        GPTNB：前沿AI资讯与深度分析平台 
        <!-- 浮动按钮 -->
        <button @click="showQR = !showQR" :style="{ backgroundColor: buttonBgColor,fontSize: '70%'}" class="fixed bottom-10 right-10 bg-blue-500 text-white p-2 rounded-full z-10">
          扫一扫知AI天下事
        </button>
        <!-- 二维码模态框 -->
        <div v-if="showQR" class="fixed bottom-20 right-10 p-2 bg-white border rounded shadow-lg">
          <QRCode value="http://imoocc.com" />
          <button @click="showQR = false" class="text-sm text-gray-600 hover:text-gray-800">
            ×
          </button>
        </div>
      </template>
      <template v-else>
        <p class="text-lg leading-7 text-gray-500 dark:text-white">
          {{ frontmatter.subtext }}
        </p>
      </template>
      <!-- <p class="text-lg leading-7 text-gray-500 dark:text-white fixed top-0 left-0 right-0 z-20 bg-white" style="padding: 10px; box-shadow: 0 2px 4px rgba(0,0,0,0.1);"> -->
      <p v-if="showTopMessage" :class="['text-lg leading-7 text-gray-500 dark:text-white', { 'fixed-top-message': stickTop }]">
        <!-- <p class="text-lg leading-7 text-gray-500 dark:text-white"> -->
        {{ message }}
        <button @click="handleClose" class="close-button">
            ×
        </button>
      </p>
      
    </div>
    <ul class="divide-y divide-gray-200 dark:divide-slate-200/5">
      <li class="py-12" v-for="{ title, url, date, excerpt } of posts">
        <article
          class="space-y-2 xl:grid xl:grid-cols-4 xl:space-y-0 xl:items-baseline"
        >
          <div class="space-y-5 xl:col-span-3">
            <div class="space-y-6">
              <h2 class="text-2xl leading-8 font-bold tracking-tight">
                <a class="text-gray-900 dark:text-white" :href="url">{{
                  title
                }}</a>
                <a class="text-gray-900 dark:text-white" :href="url"> | {{
                  date.string
                }}</a>
              </h2>
              <div v-if="excerpt">
                <a :href="url" class="prose dark:prose-invert max-w-none text-gray-500 dark:text-gray-300" v-html="excerpt"></a>
              </div>
            </div>
            <div class="text-base leading-6 font-medium">
              <a class="link" aria-label="read more" :href="url">Read more →</a>
            </div>
            <!-- <div class="text-base leading-6 font-medium">
               {{ date.string }}
            </div> -->
          </div>
          <!-- <Date :date="date" /> -->
        </article>
      </li>
    </ul>
  </div>
</template>
./TodayMessage.js

<style scoped>
.fixed-top-message {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  background: white;
  padding: 10px 20px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  z-index: 20;
}

.close-button {
  float: right;
  font-size: 1.5rem;
  line-height: 1rem;
  cursor: pointer;
  border: none;
  background: none;
  padding: 0 8px;
  color: #666;
}

.close-button:hover {
  color: #333;
}

</style>
