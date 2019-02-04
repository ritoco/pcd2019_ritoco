/* tutorial3_1_stroke_線で描画 */


float angle = 0;                                       //角度の初期値

void setup() {                                         //設定

  size(500, 500, P2D);                                 //カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 //背景色。この場合は白
  
  smooth();                                            //アンチエイリアスをON。線を滑らかにする。

  strokeWeight(1);                                     //線の太さ
  
  noFill();                                            //面をなしにする
  
}

void draw() {

  translate(width/2, height/2);                         // 描画する場所を中心にする

  rotate(angle);                                        // 座標を回転させる

  stroke(#000000,10);                                   // 線の色の指定。黒、透明度10%

  rect(0, 0, 50, 200);                                  // (x位置,y位置,幅,高さ）ここでは原点の中心にして左上から幅50px,高さ200pxの四角を描く

// ellipse(0, 0, 50, 200);                              // (x位置,y位置,幅,高さ）ここでは原点を中心に幅50px,高さ200pxの円を描く

  angle += 0.1;                                         // 回転角度を足していく（いろいろな値で試してみてください！）
}
