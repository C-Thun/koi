function _koi.help -d 'show manual' -a url
  set -l specs 帮助信息 更新KLib库 注册/取消域名指向 远程安装deb 拉取远程文件 重置仓库 放弃仓库当前未提交变更 开关nginx站点配置
  for var in (_koi._command)$specs
    echo $var
  end
end