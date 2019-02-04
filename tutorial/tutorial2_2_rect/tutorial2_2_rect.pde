/* tutorial2_2_rect_四角を描く */


void setup() {                                         //設定

  size(500, 500, P2D);                                 //カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 //背景色。この場合は白

  smooth();                                            //アンチエイリアスをon。線を滑らかにする。

  strokeWeight(1);                                     //線の太さ
}

void draw() {

  translate(width/2, height/2);                         // 描画する場所を中心にする。

  stroke(#000000);                                      // 線の色の指定。ここでは黒。

  rect(0, 0, 200, 200);                                 // (x軸,y軸,幅,高さ）ここではtranslateで指定した位置の左上から幅200px,高さ200pxの四角を描く

}
