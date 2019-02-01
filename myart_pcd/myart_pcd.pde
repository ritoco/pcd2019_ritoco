/* オリジナルアートを作る！ */


float angle = 0;                                      //角度の初期値

void setup() {                                        //設定

   size(500, 500);                                    //カンバスサイズ。今回は500*500の正方形。

   background(#FFFFFF);                               //背景色。この場合は白。
   
   strokeWeight(1);                                   //線の太さ。
   
   fill(#aaaaaa,40);                                    //面の色の指定。黒、透明度20%
}


void draw() {

  translate(width/2, height/2);                     // 描画する場所を座標の中心にする

  rotate(angle);                                    // 座標を回転させる

  stroke(#000000,20);                               // 線の色の指定。黒、透明度20%
  
  ellipse(0,0,mouseX,20);                           // 原点にmouseYで取得した幅(px)、高さ20px

   angle += 1.0;                                   // 回転角度を足していく（いろいろな値で試してみてください！）

}


/*　画像保存のコード　*/

void keyPressed() {

  // sのキーが入力された時に保存
    if(key == 's' || key == 'S') {

    
  // 時間、分、秒を取得　
    int hour = hour(); 
    int min = minute();   
    int sec = second(); 

  // デスクトップのパスと時間取得
    String path  = System.getProperty("user.home") + "/Desktop/screenshot" + hour +  min + sec + ".png";

  // 保存する
    save(path);

  // 表示されるログ
    println("screenshot" + path); 
    
  }
}
