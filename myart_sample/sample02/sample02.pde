
/* sample_02 */



float angle = 0;                                        //角度の初期値
  
void setup() {                                          // 設定

  size(500, 500,P2D);                                   // カンバスサイズ。今回は500*500の正方形。

  background(#FFFFFF);                                  // 背景色。この場合は白

  smooth();                                             // アンチエイリアスをon。滑らかにする。
  
  strokeWeight(8);                                      // 線の太さを8pxにする

  noFill();                                             // 面の色をなしにする
}

void draw() {

  translate(width/2, height/2);                         // 描画する場所を中心にする
  rotate(angle);                                        // 座標を回転させる

  stroke(#8888ff, 20);                                  // 淡い紫、不透明度20%
  rect(0, 0, 20, mouseY);                               // 四角の高さをmouseYで垂直方向の座標に反応させる

  stroke(#ff00ff, 10);                                  // 桃色、不透明度10%
  rect(0, 0, 5, mouseY);                                // 四角の高さをmouseYで垂直方向の座標に反応させる



  angle += 0.04;                                        // 回転角度を足していく（いろいろな値で試してみてください！）
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
