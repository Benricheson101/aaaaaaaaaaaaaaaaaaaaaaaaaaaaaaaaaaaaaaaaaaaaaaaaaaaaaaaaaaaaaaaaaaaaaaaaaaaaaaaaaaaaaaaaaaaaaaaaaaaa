<template>
  <p>{{aaa}}</p>
</template>

<script>
  
  export default {
    name: 'Aaa',
    data: function() {
      return {
        aaa: ""
      }
    },
    created: function() {
      setInterval(() => this.aaa += "a", 1)
    }
  }
  
</script>
