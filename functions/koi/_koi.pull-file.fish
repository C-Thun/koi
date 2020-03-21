function _koi.pull-file -d '拉取并下载某个文件' -a url dist
  echo pull-file $url $dist
end

# pull-file() {
#     local url=$1
#     local file=$2
#     local check=$3
#     if [[ $check && -e $file && $(file.include $file $check) == 'yes' ]] {
#         return
#     }
#     echo "$(curl -fsSL $url)" >$file
# }
