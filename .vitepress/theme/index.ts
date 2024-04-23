import './style.css'
import Layout from './Layout.vue'
import DropdownMenu from './DropdownMenu.vue'

export default {
  Layout,
  enhanceApp({ app }) {
    app.component('DropdownMenu', DropdownMenu);
  }
}
