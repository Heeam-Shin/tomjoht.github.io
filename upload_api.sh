myvenv() {
    source .venv/bin/activate
}
myvenv
aws s3 cp ~/projects/idratherbewriting/images/api/$1 s3://idbwmedia.com/images/api/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<a href=""><img src="{{site.api_media}}/'$1
echo '" alt="" /></a>'
