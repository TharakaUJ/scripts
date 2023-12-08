echo "This converts png files in given path to webp format"

sleep 5

echo "running..."
path=$1
echo "path: $path"
for file in  $path/*.png
do
echo "converting.. $file"
filename="${file%.*}"
cwebp "$file" -o  "$filename.webp"
rm "$file"
done
