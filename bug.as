function handleComplete(event:Event):void {
  // Assuming 'event.target' is a Loader that loaded an image
  var image:Bitmap = event.target.content as Bitmap;
  if (image != null) {
    trace("Image width:", image.width);
    trace("Image height:", image.height);
  } else {
    trace("Error: Could not load image");
  }
}

// ... later in your code ...

loader.contentLoaderInfo.addEventListener(Event.COMPLETE, handleComplete);
loader.load(new URLRequest("myImage.jpg"));