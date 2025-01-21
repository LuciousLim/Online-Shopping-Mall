const { defineConfig } = require('@vue/cli-service')
<<<<<<< HEAD
=======
require('events').EventEmitter.defaultMaxListeners = 0;
>>>>>>> b945c7a5019bc26a0ff98a50a671ab3f81f23094
module.exports = defineConfig({
  transpileDependencies: true,
  devServer: {
    port: 8080
  },
  chainWebpack: config =>{
    config.plugin('html')
        .tap(args => {
          args[0].title = "管理系统";
          return args;
        })
  }
})
