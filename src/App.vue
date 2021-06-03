<template>
  <NavBar></NavBar>
  <p></p>
  <Generator/>
</template>

<script>
import NavBar from './components/navigationbar.vue'
import Generator from './components/generator.vue'

export default {
  name: 'App',
  components: {
    NavBar,
    Generator
  },
  data() {
    return{
    }
  },
  }
  
</script>
