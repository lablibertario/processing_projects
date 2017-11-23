/* @pjs preload="pic.jpg"; */
int[][] pic, o;
void setup() {
    size(600, 375); background(255,255,255); frameRate(10); // setup
    pic = load("pic.jpg"); o = load("pic.jpg");
    show(pic, 0, 0);
}

void draw() {
  if(keyPressed) {
      /*clear();*/ background(255,255,255); // clear canvas // clear() isn't implemented in js mode (is there a newer / fixed version) [fallback: background(255,255,255)]
      if (key == '1') {
          show(replace(pic, o), 0, 0); // restore original
      } else if(key == '2') {
          show(flipH(pic), 0, 0);
      } else if(key == '3') {
          show(flipV(pic), 0, 0);
      } else if(key == '4') {
          show(resize(pic), 0, 0);
      } else if(key == '5') {
          show(drawC(pic, 300, 100, 50), 0, 0);
      } else {
          show(o, 0, 0);
      }
    }
}

int[][] flipV(int[][] data) { // flip img vertically
    int buffer = 0;
    for(int i = 0; i < data.length / 2; i++) {
        for(int j = 0; j < data[0].length; j++) {
            buffer = data[i][j];
            data[i][j] = data[data.length - 1 - i][j];
            data[data.length - 1 - i][j] = buffer;
        }
    }
    return data;
}

int[][] flipH(int[][] data) { // flip img horizontally
    int buffer = 0;
    for(int i = 0; i < data[0].length / 2; i++) {
        for(int j = 0; j < data.length; j++) {
            buffer = data[j][i];
            data[j][i] = data[j][data[0].length - 1 - i];
            data[j][data[0].length - 1 - i] = buffer;
        }
    }
    return data;
}

int[][] resize(int[][] data) {
    int[][] r = new int[data.length/2][data[0].length/2];
    for(int i = 0, y = 0; i < r.length; i++, y += 2) {
        for(int j = 0, x = 0; j < r[0].length; j++, x += 2) {
            r[i][j] = data[y][x];
        }
    }
    return r;
}

int[][] drawC(int[][] data, int x, int y, int r) { // draw circle
    for(int i = x - r; i < x + r; i++) {
        for(int j = y - r; j < y + r; j++) {
            if(Math.pow(x-i, 2) + Math.pow(y-j, 2) <= r*r) {
                data[i][j] = color(0,0,0);
            }
        }
    }
    return data;
}

int[][] replace(int[][] o, int[][] r) { // replace one img with another one
    for(int i = 0; i < o.length; i++) {
        for(int j = 0; j < o[0].length; j++) {
            o[i][j] = r[i][j];
        }
    }
    return o;
}

void show(int[][]p, int xpos, int ypos){
    PImage pimage = createImage(p.length, p[0].length, ARGB);
    for (int x = 0;x<pimage.width;x++){
      for (int y= 0;y<pimage.height;y++) {
        pimage.pixels[x + pimage.width*y]=p[x][y];
      }
    }
    pimage.updatePixels();
    image(pimage,xpos,ypos);
}

int[][] load(String fn) {
    int[][] p = null;
    PImage img = loadImage(fn);
    if (img == null)
      println("Datei "+fn+" nicht gefunden - im /data-Ordner nachsehen!");
    else {
      img.loadPixels();
      p = new int [img.width][img.height];
      for(int x=0; x<img.width;x++){
        for(int y = 0; y<img.height;y++) {
          p[x][y] = img.pixels[x + img.width*y];
        } // end for y
      } // end for x
    }
    return p;
}
