#
# 该脚本封装 nginx 调用，可在任意位置执行
#
# 启动：./run.sh 
# 重启：./run.sh -s reload
# 关闭：./run.sh -s quit 
# 
NGX_BIN=/usr/local/openresty/nginx/sbin/nginx
CUR_DIR=/root/server

if [ $1 ]; then
  PARAM="-s $1"
fi

$NGX_BIN -c $CUR_DIR/nginx.conf -p $CUR_DIR/nginx $PARAM