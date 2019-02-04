
/* sample_05(color_mindを参考にした配色) */



float angle = 0;                                       // 角度の初期値

void setup() {                                         // 設定

  size(500, 500,P2D);                                  // カンバスサイズ。今回は500*500の正方形。

  background(#6F7763);                                 // 背景色、灰色。

  smooth();                                            // アンチエイリアスをon。線を滑らかにする。

  noStroke();                                          // 線の色をなしにする

}

void draw() {

  translate(width/2, height/2);                        // 描画する場所を中心にする 
  rotate(angle);                                       // 座標を回転させる

  fill(#0CAE9D);                                       // 面の色、水色
  rect(mouseX, 0, 20, mouseY);                         // 四角のx位置をmouseXの座標に、高さをmouseYの座標に反応させる                            

  fill(#F64535);                                       // 面の色、赤色
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
