
/* sample_04(palletableを参考にした配色) */



float angle = 0;                                       // 角度の初期値

void setup() {                                         // 設定

  size(500, 500);                                      // カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                 // 背景色。この場合は白

  smooth();                                            // アンチエイリアスをon。線を滑らかにする。

  strokeWeight(5);                                     // 線の太さを5pxにする

  noFill();                                            // 面の色をなしにする
}

void draw() {

  translate(width/2, height/2);                        // 描画する場所を中心にする 
  rotate(angle);                                       // 座標を回転させる

  stroke(#dab07e);                                     // 薄い茶色
  rect(0, 0, 100, mouseY);                             // 四角の高さをmouseYで垂直方向の座標に反応させる                            

  stroke(#5a8371);                                     // 深緑色
  rect(0, 0, 55, mouseY);                              // 四角の高さをmouseYで垂直方向の座標に反応させる  



  angle += 11.0;                                        // 回転角度を足していく（いろいろな値で試してみてください！）
}



/*　画像保存のコード　*/

void keyPressed() {

  // sのキーが入力された時に保存
  if (key == 's' || key == 'S') {


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
