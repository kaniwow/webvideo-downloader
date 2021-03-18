clear
stty -echo
echo '开始安装'
echo '更新系统库并查找系统更新'
apt-get update -y && apt-get upgrade -y
echo '完成'
echo '开始安装 python 环境'
apt-get install python -y
echo '完成'
echo '开始安装 git 环境'
apt-get install git -y
echo '完成'
echo '开始安装 ffmpeg 环境'
apt-get install ffmpeg -y
echo '完成'
echo '开始更新 pip 版本'
pip install pip --upgrade 
echo '完成'
echo '使用 git '
git clone https://github.com/kaniwow/webvideo-downloader.git
echo '完成'
echo '开始安装 webvideo-downloader 所需依赖'
pip install -r webvideo-downloader/downloader/requirements.txt
echo '完成'
echo '开始生成自动更新项目及自动启动脚本'
mkdir /storage/emulated/0/DCIM/webvideo-downloader
echo "stty -echo" > run.sh
echo "cd webvideo-downloader" >> run.sh
echo "git pull" >> run.sh
echo "cd.." >> run.sh
echo "stty echo" >> run.sh
echo "python webvideo-downloader/downloader/daemon.py" >> run.sh
echo '完成'
echo '你现在可以直接输入 sh run.py 开启服务啦！'
echo "安装结束"
stty echo