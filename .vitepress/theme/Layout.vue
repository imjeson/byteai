<script setup lang="ts">
import { ref, onMounted, onUnmounted, computed } from 'vue';
import { useData } from 'vitepress';
import Home from './Home.vue';
import Article from './Article.vue';
import NotFound from './NotFound.vue';

const { page, frontmatter } = useData();

// 定义一个响应式变量存储窗口宽度
const windowWidth = ref(window.innerWidth);

// 定义一个计算属性来判断是否为小屏设备
const isSmallScreen = computed(() => windowWidth.value <= 768);

// 更新窗口宽度
const updateWidth = () => {
  windowWidth.value = window.innerWidth;
};

// 在组件挂载到DOM上后添加事件监听器，并在组件卸载前移除
onMounted(() => {
  window.addEventListener('resize', updateWidth);
});

onUnmounted(() => {
  window.removeEventListener('resize', updateWidth);
});
</script>

<template>
  <div class="antialiased dark:bg-slate-900">
    <div class="max-w-3xl mx-auto px-4 sm:px-6 xl:max-w-5xl xl:px-0">
      <nav class="flex justify-between items-center py-10 font-bold">
          <a class="text-xl flex items-center" href="/" aria-label="The Vue Point">
            <img
              class="inline-block mr-2"
              style="width: 66px; height: 57px"
              alt="logo"
              src="/public/logo.png"
            />
            <!-- <span
              v-if="!frontmatter.index"
              class="hidden md:inline dark:text-white"
            >The Vue Point</span> -->
            <span>
              <template v-if="isSmallScreen">
                GPTNB
              </template>
              <template v-else>
                GPTNB：您的AI新闻和博客之家
              </template>
            </span>
          </a>

          <!-- <a class="text-3xl text-gray-900 dark:text-white tracking-tight mt-0">
            
          </a> -->

        <div class="text-sm text-gray-500 dark:text-white leading-5">
          <a
            class="hover:text-gray-700 dark:hover:text-gray-200"
            href=""
            target="_blank"
            rel="noopener"
            ><span class="hidden sm:inline">AI </span>产品</a
          >
          <span class="mr-2 ml-2">·</span>
          <a
            class="hover:text-gray-700 dark:hover:text-gray-200"
            href=""
            >大模型<span class="hidden sm:inline"> 技术</span></a
          >
          <span class="mr-2 ml-2">·</span>
          <a
            class="hover:text-gray-700 dark:hover:text-gray-200"
            href=""
            target="_blank"
            rel="noopener"
            >加入我们 →</a
          >
        </div>
      </nav>
    </div>
    <main class="max-w-3xl mx-auto px-4 sm:px-6 xl:max-w-5xl xl:px-0">
      <Home v-if="frontmatter.index" />
      <NotFound v-else-if="page.isNotFound" />
      <Article v-else />
    </main>
  </div>
</template>
