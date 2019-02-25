<template lang="pug">
div
  b-navbar(type="dark" variant="primary")
    b-navbar-brand DockerVueDjango

    b-navbar-toggle(target="nav_collapse")

    b-collapse#nav_collapse(is-nav)
      b-navbar-nav
        b-nav-item(
          v-for="(link, index) in navLinks"
          :key="index"
          :to="link.route"
        )  {{ link.label }}

  router-view
</template>

<script>
export default {
  data() {
    return {
      navLinks: [
        {
          label: 'Home',
          route: '/'
        }, {
          label: 'About',
          route: '/about'
        }
      ]
    }
  },

  created() {

  }
}
</script>

<style lang="scss">

</style>
