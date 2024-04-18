// useTodayMessage.js
import { ref, computed } from 'vue';

export function useTodayMessage() {
  const today = ref(new Date());

  const message = computed(() => {
    const formattedDate = today.value.toISOString().split('T')[0];
    return `${formattedDate}，今天有如下AI资讯及技术你值得关注`;
  });

  return { message };
}