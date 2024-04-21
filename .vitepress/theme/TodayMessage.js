// useTodayMessage.js
import { ref, computed } from 'vue';

export function useTodayMessage() {
  const today = ref(new Date());

  const message = computed(() => {
    const formattedDate = today.value.toISOString().split('T')[0];
    return `掌握今日（${formattedDate}）最前沿的AI资讯与技术，开启你的AI之门！`;
  });

  return { message };
}