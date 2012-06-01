cd $WORKSPACE
export WORKSPACE2=$PWD
mkdir -p ../android
cd ../android
export WORKSPACE=$PWD
echo $ANDROID_JAVA_HOME

if [ ! -d hudsonrodries ]
then
  git clone git://github.com/rodries/hudsonGummy.git
fi

cd hudsonrodries
git pull

exec ./build.sh
