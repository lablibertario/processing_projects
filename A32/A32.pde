void setup() {
    size(600, 720, P3D);
    textSize(10);
    drawGraph(values);
}

int[][] values = {{7, 40, 42, 45, 51, 59, 67, 110, 0, 150, 190, 209, 232, 245, 250, 249, 240, 230, 208, 180, 160, 110, 89,70 },{0, 0, 0, 0, 0, 0, 0, 0},{0,1}};

void drawGraph(int[][] v) { // draw graph
    int y = 0, yPos = 0;
    float ref = calcReference(calcMax(calcMaxAll(values)));
    for(int i = 0; i < v.length; i++) {
        for(int j = 0; j < v[i].length; j++) {
            fill(0,0,0);
            text(v[i][j],0,y+10);
            if(v[i][j] == 0) {
                ellipse(35,y+5,10,10);
            } else if(v[i][j] > 0 && v[i][j] <= 180) {
                rect(30,y,v[i][j]*ref, 10);
            } else {
                fill(255,0,0);
                rect(30,y,v[i][j]*ref, 10);
            }
            y += 20;
        }
        text("Min: " + calcMin(v[i]) + " Max: " + calcMax(v[i]) + " Avg: " + calcAvg(v[i]), 300, y - 10);
        rect(0, y, width, 6);
        y += 20;
    }
}

float calcAvg(int[] p) { // calc average value of 1D array
    int sum = 0;
    for(int i = 0; i < p.length; i++) {
        sum += p[i];
    }
    return (float) sum / p.length;
}

int calcMin(int[] p) { // calc min value of 1D array
    int min = p[0];
    for(int i = 1; i < p.length; i++) {
        min = (p[i] < min) ? p[i] : min;
    }
    return min;
}

int calcMax(int[] p) { // calc max value of 1D array
    int max = p[0];
    for(int i = 1; i < p.length; i++) {
        max = (p[i] > max) ? p[i] : max;
    }
    return max;
}

float calcDiff(int[] p) { // calc the percentage of difference
    return 100 - (calcMin(p) * 100) / calcMax(p);
}

int[] calcMaxAll(int[][] p) { // get max value from a 2D array
    int[] r = new int[p.length];
    for(int i = 0; i < p.length; i++) {
        r[i] = calcMax(p[i]);
    }
    return r;
}

float calcReference(int max) { // function to calc the reference with for the bars
    return (width * 0.8) / max;
}
