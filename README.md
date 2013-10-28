.....build

mkdir patchrom-miui-v5

git clone https://github.com/xiangxin19960319/Patch-Miui-V5 patchrom-miui-v5

cd patchrom-miui-v5

./build/envsetup.sh

cd st25i

make fullota

cp out/fullota.zip .
