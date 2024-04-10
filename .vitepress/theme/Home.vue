<script setup lang="ts">
import { ref, onMounted, onUnmounted, computed } from 'vue';
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

// 在组件挂载到DOM上后添加事件监听器，并在组件卸载前移除
onMounted(() => {
  window.addEventListener('resize', updateWidth);
});

onUnmounted(() => {
  window.removeEventListener('resize', updateWidth);
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
        您的AI新闻(News)和博客(Blog)之家
      </template>
      <template v-else>
        <p class="text-lg leading-7 text-gray-500 dark:text-white">
          {{ frontmatter.subtext }}
        </p>
      </template>
      <p class="text-lg leading-7 text-gray-500 dark:text-white">
        {{ message }}
      </p>
      
    </div>
    <ul class="divide-y divide-gray-200 dark:divide-slate-200/5">
      <li class="py-12" v-for="{ title, url, date, excerpt } of posts">
        <article
          class="space-y-2 xl:grid xl:grid-cols-4 xl:space-y-0 xl:items-baseline"
        >
          <Date :date="date" />
          <div class="space-y-5 xl:col-span-3">
            <div class="space-y-6">
              <h2 class="text-2xl leading-8 font-bold tracking-tight">
                <a class="text-gray-900 dark:text-white" :href="url">{{
                  title
                }}</a>
              </h2>
              <div
                v-if="excerpt"
                class="prose dark:prose-invert max-w-none text-gray-500 dark:text-gray-300"
                v-html="excerpt"
              ></div>
            </div>
            <div class="text-base leading-6 font-medium">
              <a class="link" aria-label="read more" :href="url">Read more →</a>
            </div>
          </div>
        </article>
      </li>
    </ul>
  </div>
</template>
./TodayMessage.js