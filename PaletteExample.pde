PImage img, oldImg;
Palette palette;
int numColors = 4;

void setup() {
  size(50, 50, P2D);
  img = loadImage("jaws.jpg");
  oldImg = img.get();
  surface.setSize(img.width/2, img.height);
  palette = new Palette(numColors, img);
  palette.posterize(img);
}

void draw() {
  image(oldImg, 0, 0, width, height/2);
  image(img, 0, height/2, width, height/2);
}
