void setup() {
    size(500, 500, P3D);
    calcAvg(p);
    println(calcAvg(p));
    println(calcMin(p));
    println(calcMax(p));
    println(calcDiff(p));
}

float[] p = {12.99, 24.49, 9.99, 10.00, 23.79, 17.30};

float calcAvg(float[] p) {
    float sum = 0;
    for(int i = 0; i < p.length; i++) {
        sum += p[i];
    }

    return sum / p.length;
}

float calcMin(float[] p) {
    float min = p[0];
    for(int i = 1; i < p.length; i++) {
        min = (p[i] < min) ? p[i] : min;
    }
    return min;
}

float calcMax(float[] p) {
    float max = p[0];
    for(int i = 1; i < p.length; i++) {
        max = (p[i] > max) ? p[i] : max;
    }
    return max;
}

float calcDiff(float[] p) {
    return 100 - (calcMin(p) * 100) / calcMax(p);
}
