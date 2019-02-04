/* tutorial4_1_mouseX */


float angle = 0;                                       //角度の初期値

void setup() {                                         //設定

  size(500, 500, P2D);                                 //カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 //背景色。この場合は白

  smooth();                                            //アンチエイリアスをON。線を滑らかにする。

  strokeWeight(1);                                     //線の太さの指定

  noFill();
}

void draw() {

  translate(width/2, height/2);                        // 描画する場所を中心にする

  rotate(angle);                                       // 座標を回転させる

  stroke(#000000);                                     //線の色の指定。黒。

  // rect(0, 0, mouseX, 20);                           // (x位置,y位置,mouseX,高さ）

  ellipse(0, 0, mouseX, 20);                           // (x位置,y位置,mouseX,高さ）

  angle += 0.1;                                        // 回転角度を足していく（いろいろな値で試してみてください！）
}
