var app = new Vue({
  el: '#app',
  data: {
    emojis: false,
  },
  computed: {
    emojiText: function () {
      return this.emojis ? '🎉 Emojis' : '🙅 No Emojis';
    },
  },
  methods: {
    toggleEmojis: function () {
      this.emojis = !this.emojis;
    },
  },
});
