<template>
  <q-popover>
    <q-list separator link>
      <q-item v-close-overlay
              @click.native="paste(val)"
              v-for="(val, index) in headings"
              :key="`heading-${index}`"
      >
        H{{ index }}
      </q-item>

      <q-item v-close-overlay
              @click.native="paste(link)"
      >
        Link
      </q-item>

      <q-item v-close-overlay
              @click.native="paste(image)"
      >
        Image
      </q-item>

      <q-item v-close-overlay
              @click.native="paste(quote)"
      >
        Blockquote
      </q-item>
    </q-list>
  </q-popover>
</template>

<script>
export default {
  props: ['paste'],

  data () {
    return {
      headings: {
        1: '# '
      },

      link: '[Text](https://github.com/ExNG/vuenote/)',

      image: '![Text](https://github.com/ExNG/vuenote/blob/master/src/statics/icon.png?raw=true)',

      quote: '> '
    }
  }
}
</script>

<style>
</style>
