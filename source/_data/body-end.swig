<script src="//sdk.jinrishici.com/v2/browser/jinrishici.js"></script>
<script>
  console.log('今日诗词 - 开始加载...');
  jinrishici.load((result) => {
    let jrsc = document.getElementById('jrsc');
    if (jrsc) {
      console.log('今日诗词 - 标签获取成功.');
    } else {
      console.log('今日诗词 - 标签获取失败!');
      return;
    }
    const data = result.data;
    let author = data.origin.author;
    let title = '《' + data.origin.title + '》';
    let content = data.content.substr(0, data.content.length - 1);
    let dynasty = data.origin.dynasty.substr(0, data.origin.dynasty.length - 1);
    jrsc.innerText = content + ' @ ' + dynasty + '·' + author + title;
    console.log('今日诗词 - 载入完毕.');
    if (data.origin.author == '李白') {
      let audio = document.createElement("audio");
      audio.src = "/ding.mp3";
      audio.play();
    }
  });
</script>