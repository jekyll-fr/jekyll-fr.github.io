module.exports = {
  plugins: {
    "@fullhuman/postcss-purgecss": {
      content: ["./layouts/**/*.html"],
      whitelist: ["highlight", "notice", "info", "tip", "update", "pre", "code", "chroma", "blockquote", "fill-current"]
    },
    autoprefixer: {
      overrideBrowserslist: ["> 0.2% in my stats", "> 2% in FR"]
    }
  }
};
