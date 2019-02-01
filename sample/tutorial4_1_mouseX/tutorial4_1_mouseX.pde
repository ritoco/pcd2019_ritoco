/* tutorial4_1_mouseX */


float angle = 0;                                       //角度の初期値

void setup() {                                         //設定

  size(500, 500, P2D);                                 //カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 //背景色。この場合は白
  
  smooth();                                            //アンチエイリアスをON                      

  strokeWeight(1);                                     //線の太さの指定
  
  noFill();
}

void draw() {

  translate(width/2, height/2);                        // 描画する場所を中心にする

  rotate(angle);                                       // 座標を回転させる
  
  stroke(#000000);                                     //線の色の指定。黒。

  rect(0, 0, mouseX, 20);                              // (x軸,y軸,mouseX,高さ）ここでは原点から幅はmouseX座標（px）,高さ20pxの四角を描く

 // ellipse(0, 0, mouseX, 20);                         // (x軸,y軸,幅,高さ）ここでは原点に幅50px,高さ20pxの円を描く

  angle += 0.1;                                        // 回転角度を足していく（いろいろな値で試してみてください！）
}
