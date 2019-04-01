// 接收数据
onmessage=function(e){
    var n=e.data;
    // 计算累加和
    var sum=0;
    for(var i=1;i<=n;i++){
        sum+=i;
    }
    // 将累加和发送到UI主线程
    postMessage(sum);
}