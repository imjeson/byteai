<template>
    <div class="dropdown">
      <button @click="toggleDropdown" class="dropdown-button">
        {{ title }}
      </button>
      <div v-show="isOpen" class="dropdown-content">
        <slot></slot>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      title: String
    },
    data() {
      return {
        isOpen: false
      };
    },
    methods: {
      toggleDropdown() {
        this.isOpen = !this.isOpen;
        console.log('Dropdown toggled', this.isOpen);
      }
    }
  };
  </script>
  
  <style scoped>
  .dropdown {
    position: relative;
    display: inline-block;
  }
  
  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }
  
  .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }
  
  .dropdown-button {
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    font-size: 10px;
    border: none;
    cursor: pointer;
  }
  
  .dropdown-button:focus {
    outline: none;
  }
  </style>
  