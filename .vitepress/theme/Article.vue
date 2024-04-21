<script setup lang="ts">
import Date from './Date.vue'
import Author from './Author.vue'
import { computed } from 'vue'
import { useData, useRoute } from 'vitepress'
import { data as posts } from './posts.data.js'

const { frontmatter: data } = useData()

const route = useRoute()

function findCurrentIndex() {
  return posts.findIndex((p) => p.url === route.path)
}

// use the customData date which contains pre-resolved date info
const date = computed(() => posts[findCurrentIndex()].date)
const nextPost = computed(() => posts[findCurrentIndex() - 1])
const prevPost = computed(() => posts[findCurrentIndex() + 1])


function openMOOC() {
  // Logic to open the MOOC platform goes here
}

console.log(data)

</script>

<template>
  <article class="xl:divide-y xl:divide-gray-200 dark:xl:divide-slate-200/5">
    <header class="pt-6 xl:pb-10 space-y-1 text-center">
      <Date :date="date" />
      <h1
        class="text-3xl leading-9 font-extrabold text-gray-900 dark:text-white tracking-tight sm:text-4xl sm:leading-10 md:text-5xl md:leading-14"
      >
        {{ data.title }}
      </h1>
    </header>

    <div
      class="divide-y xl:divide-y-0 divide-gray-200 dark:divide-slate-200/5 xl:grid xl:grid-cols-4 xl:gap-x-10 pb-16 xl:pb-20"
      style="grid-template-rows: auto 1fr"
    >
      <Author />
      <div
        class="divide-y divide-gray-200 dark:divide-slate-200/5 xl:pb-0 xl:col-span-3 xl:row-span-2"
      >
        <Content class="prose dark:prose-invert max-w-none pt-10 pb-8" />
      </div>

      <footer
        class="text-sm font-medium leading-5 divide-y divide-gray-200 dark:divide-slate-200/5 xl:col-start-1 xl:row-start-2"
      >
        <div v-if="nextPost" class="py-8">
          <h2
            class="text-xs tracking-wide uppercase text-gray-500 dark:text-white"
          >
            Next Article
          </h2>
          <div class="link">
            <a :href="nextPost.url">{{ nextPost.title }}</a>
          </div>
        </div>
        <div v-if="prevPost" class="py-8">
          <h2
            class="text-xs tracking-wide uppercase text-gray-500 dark:text-white"
          >
            Previous Article
          </h2>
          <div class="link">
            <a :href="prevPost.url">{{ prevPost.title }}</a>
          </div>
        </div>
        <div class="py-8">
          <div class="qr-code">
            <img src="/public/qr-code.jpg" alt="QR Code" />
            <!-- <img class="logo" src="logo.png" alt="Logo" /> -->
          </div>
          <div class="content">
            <!-- <img src="message-bubble-icon.png" alt="Message Bubble" /> -->
            <span>微信搜一搜</span>
            <button @click="openMOOC">ByteAI实验室</button>
          </div>
        </div>
        <div class="pt-8">
          <a class="link" href="/">← Back to the blog</a>
        </div>
      </footer>
    </div>
  </article>
</template>


<style scoped>
.qr-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  border: 1px solid #000;
  padding: 16px;
  width: 300px; /* Adjust as needed */
}

.qr-code {
  position: relative;
  margin-bottom: 8px;
}

.qr-code .logo {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 20%; /* Adjust as needed */
}

.content {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.content img {
  max-width: 100%; /* 让图片最大宽度不超过div的宽度 */
  height: auto; /* 保持图片的原始宽高比 */
  display: block; /* 防止图片下方出现额外空间 */
  margin: 0 auto; /* 图片居中显示 */
}

button {
  background-color: green;
  color: white;
  border: none;
  padding: 8px 16px;
  cursor: pointer;
  margin-top: 8px;
}
</style>