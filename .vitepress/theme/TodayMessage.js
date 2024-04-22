// useTodayMessage.js
import { ref, computed } from 'vue';

export function useTodayMessage() {
  const today = ref(new Date());

  const message = computed(() => {
    const formattedDate = today.value.toISOString().split('T')[0];
    return `${formattedDate}AI资讯,开启你的AI之门!`;
  });

  return { message };
}