function handleComplete(event:Event):void {
  var loaderInfo:LoaderInfo = event.target as LoaderInfo;
  if (loaderInfo && loaderInfo.content) {
    var image:DisplayObject = loaderInfo.content as DisplayObject; 
    if (image) {
      trace("Image width:", image.width);
      trace("Image height:", image.height);
    } else {
      trace("Error: Could not load image or content is not a DisplayObject");
    }
  } else {
    trace("Error: LoaderInfo or content is null");
  }
}

// ... later in your code ...

loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);
loader.load(new URLRequest("myImage.jpg"));