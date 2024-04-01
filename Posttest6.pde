  int i = 0;
  int mataharix = -230; // kordinat matahari
  //float balonx = 1179; // koordinat titik x awal balon
  //float balony = 356; // koordinat titik y awal balon
  float talix  = 1072; // koordinat titik x awal tali
  float taliy  = 399; // koordinat titik y awal tali
  boolean awan = true;
  boolean mataTerbuka = true; // Variabel untuk mengontrol apakah mata terbuka atau tertutup
  int waktuKedip = 60; // Waktu dalam frame antara kedipan mata
  float sinar = 0;
  
  PVector lightDirection; // Untuk arah lampu arah
  PVector lightPosition;  // Untuk posisi lampu spot
  PVector spotlightDirection; // Arah lampu spotlight
  float angle = radians(30); // Sudut untuk cahaya spot
  float angleSpeed = 0.02;
  
  void setup(){
    size(1500, 800, P3D);
    background(0);
    noStroke();
  
    lightDirection = new PVector(1, -1, -1); // Arah lampu arah
    lightPosition = new PVector(width / 2, height / 2, 400); // Posisi lampu spot
    spotlightDirection = new PVector(0, 0, -1);
    
    // Aktifkan pencahayaan
    lights();
    
  }
  void draw (){
    background(0, i, 0);
    int s = second();
    stroke(1);
   
     //Bulan
    pushMatrix(); //menyimpan status saat ini
    translate(i * 2, 0);
    fill(277, 211, 211);
    strokeWeight(0);
    arc(1110, 92, 156, 156, radians(0), radians(360));
    popMatrix(); // mengembalikkan status sebelumnya
  
    //Matahari
    pushMatrix();
    translate(mataharix, 0);
    fill(255, 248, 31);
    strokeWeight(0);
    arc(0, 92, 132, 131, radians(0), radians(360)); 
    popMatrix();
    mataharix += 3;
    if (mataharix > 830) {
      mataharix = 830;
    }
    
    pushMatrix();
    translate(mataharix,100);
    rotate(sinar);
    rect(-16, 75, 15, 50, 5, 5, 5, 5);
    rect(4, -130, 15, 52, 5, 5, 5, 5);
  
    rotate(radians(497));
    rect(-8, 75, 15, 50, 5, 5, 5, 5);
    rect(11, -130, 15, 50, 5, 5, 5, 5);
    rotate(radians(272));
    rect(-11, 75, 15, 50, 5, 5, 5, 5);
    rect(-1, -128, 15, 50, 5, 5, 5, 5);
    rotate(radians(46));
    rect(-4, 84, 15, 50, 5, 5, 5, 5);
    rect(13, -126, 15, 51, 5, 5, 5, 5);
    
    popMatrix();
    sinar +=0.01;
    mataharix += 2; // Kecepatan perpindahan matahari
  
    
    // Jika matahari mencapai batas kanan layar, reset ke posisi awal di sebelah kiri
    if (mataharix > width + 200) {
      mataharix = 50;

  }
    
    //Warna
    fill(35, 216, 26);
    strokeWeight(0);
    i++;
    
    //titik koordinat
    fill(#E4FF1A);
    text("x: "+ mouseX +"\n y: " + mouseY, 13,37);
    
    //Tanah
    fill(224, 214, 18); //warna dasar tanah
    quad(0, 592, 1932, 592, 2300, 810, 0, 2400);
    
    //BERUANG COKLAT
    fill(#884A39);
    strokeWeight(1);
    
     //Kepala
    strokeWeight(5);
    ellipse(497, 419, 238, 198);
    
    //tangan
    //kiri
    beginShape();
    vertex(449, 512);
    quadraticVertex(400,572,448,570);
    endShape();
    //kanan
    beginShape();
    vertex(547, 507);
    quadraticVertex(606,575,551,569);
    endShape();
    
    //badan
    beginShape();
    vertex(453, 512);
    quadraticVertex(438,573,453,650); //Badan kiri
    quadraticVertex(418,692,497,680); //kaki kiri
    quadraticVertex(503,678,499,617); //kaki kiri
    quadraticVertex(503,677,506,679); //kaki Kanan
    quadraticVertex(592,692,548,649); // kaki kanan
    quadraticVertex(557,573,545,512); //Badan Kanan
    endShape();
    
   
    
    //Telinga
    //kanan
    beginShape();
    vertex(591, 361);
    quadraticVertex(602,277,536,328);
    endShape();
    //Kiri
    beginShape();
    vertex(394, 374);
    quadraticVertex(369,286,452,329);
    endShape();
    
    //kanan
    fill(#6C3428);
    strokeWeight(0);
    beginShape();
    vertex(581, 342);
    quadraticVertex(589,297,552,328);
    endShape();
    //kiri
    strokeWeight(0);
    beginShape();
    vertex(407, 362);
    quadraticVertex(383,310,434,340);
    endShape();
    
    //mata
    //kiri
    strokeWeight(17);
    point(480,410);
    //kanan
    strokeWeight(17);
    point(515,410);
    
    //Mulut
    strokeWeight(0);
    fill(#EAC696);
    ellipse(496,456,47,69);
    
    strokeWeight(5);
    fill(#0A0101);
    arc(496,433,24,23,0, PI);
    line(496,447, 496,455 );
    line(492,471, 495,456 );
    line(505,466, 496,452 );
    
    
    // KELINCI BERUANG
    fill(255);
    strokeWeight(7);
    
    //Kepala
    strokeWeight(-4);
    ellipse(898, 419, 238, 198);
    
    //tangan
    //kiri
    beginShape();
    vertex(847, 510);
    quadraticVertex(794,612,835,578);
    quadraticVertex(833,617,848,576);
    endShape();
    //kanan
    beginShape();
    vertex(947, 508);
    quadraticVertex(1009,603,965,571);
    quadraticVertex(958,614,951,558);
    endShape();
  
    //Telinga
    fill(255);
    arc(929,330,48,221,PI, TWO_PI);
    arc(852,335,48,223,PI, TWO_PI);
    
    strokeWeight(0);
    fill(#F08FC0);
    arc(854,325,31,133,PI, TWO_PI);
    arc(930,325,30,133,PI, TWO_PI);
    
    //badan
    strokeWeight(5);
    fill(255);
    beginShape();
    vertex(853, 512);
    quadraticVertex(838,573,853,650); //Badan kiri
    quadraticVertex(818,692,889,680); //kaki kiri
    quadraticVertex(903,678,899,617); //kaki kiri
    quadraticVertex(903,677,910,681); //kaki Kanan
    quadraticVertex(992,692,956,655); // kaki kanan
    quadraticVertex(957,573,945,512); //Badan Kanan
    endShape();
    
    //mata
    //kiri
    strokeWeight(17);
    point(880,410);
    //kanan
    strokeWeight(17);
    point(915,410);
    
    //Mulut + hidung
    strokeWeight(3);
    fill(255);
    circle(898, 427, 17);
    arc(899,441,27,22,0, PI);
    line(899,437,899, 452);
  
    //pipi
    fill(#FFBCBC);
    strokeWeight(0);
    ellipse(845,436,37,24);
    ellipse(945,436,37,24);
    
    //Garis Tangan
    strokeWeight(5);
    line(966,574,960, 551);
    line(834,583,837, 558);
    
     //Tebing
    pushMatrix();
    translate(0, 43);  // Menggeser koordinat ke kanan
    //scale(-1, 1); 
    strokeWeight(0);
    fill(#765827); 
  
    beginShape();
    curveVertex(-146, 352);  // Menambahkan titik kontrol untuk kurva
    curveVertex(1, 96);  // Titik kontrol kedua
    curveVertex(125, 300);  // Titik kontrol ketiga
    curveVertex(207, 375);  // Titik kontrol keempat
    curveVertex(256, 529);  // Titik kontrol kelima
    curveVertex(188, 551);  // Titik kontrol keenam
    curveVertex(-269, 492);  // Titik kontrol ketujuh
    curveVertex(879, 177);  // Titik kontrol terakhir
    endShape();
    popMatrix();
    
    //POHON
    strokeWeight(0);
    fill(#500909);
    square(95,689,74);
    
    //daun
    fill(#0BD320);
    triangle(201,696,55,694,100,100);
    strokeWeight(2);
    triangle(169,657,125,691,98,100);
    
    fill(#B3A492);
    // Menggunakan beberapa kurva bezier untuk menggambarkan bentuk batu
    bezier(146, 780, 151, 795, 203, 620, 294, 780);  // Kurva bezier pertama
    bezier(-23, 790, 31, 819, 137, 631, 194, 780);  // Kurva bezier kedua
    bezier(-5, 798, -19, 773, 11, 657, 112, 727);  // Kurva bezier ketiga
    
  
    
    
    //BEBEK
    fill(#F4E869);
    //ellipse(1245, 597, 97, 89);
    strokeWeight(4);
    circle(1278, 510, 85); //kepala
    beginShape();
    vertex(1249, 542);
    quadraticVertex(1228,530,1216,554); //sayap1
    quadraticVertex(1209,572,1251,583); //sayap2
    quadraticVertex(1243,615,1279,614); //badan1
    quadraticVertex(1319,616,1310,580); //badan2 
    quadraticVertex(1339,563,1333,542); //sayap3
    quadraticVertex(1321,527,1301,546); //sayap3
    endShape();
    
    //Kaki
    fill(#E55604);
    strokeWeight(2);
    beginShape();
    vertex(1296, 614);
    quadraticVertex(1292,641,1280,615); //kaki1
    quadraticVertex(1271,641,1262,612); //kaki2 
    endShape();
    
     // Percabangan If-Else dan Operator Logika
    // Logika untuk mengedipkan mata
    if (frameCount % waktuKedip == 0) {
      mataTerbuka =! mataTerbuka; // Mengubah status mata terbuka/tertutup
    }

    // Jika mata terbuka, mewarnai bola mata hijau dan hitam
    if (mataTerbuka) {
      strokeWeight(13); // setelah delay maka akan muncul lagi
      point(1289,503);
      point(1269,503);
    } else {
      line(1264,503,1275,503);
      line(1283,503,1294,503);
    }
   
    
    // Gambar paruh bebek
    fill(#E55604); // Warna oranye
    strokeWeight(3); // Warna tepi hitam
    beginShape();
    vertex(1294, 516); // Titik awal di koordinat 
    bezierVertex(1229, 525, 1324, 551, 1285, 526); // Titik kontrol dan akhir untuk membentuk paruh
    endShape(CLOSE);
    
    //balon bergerak
    strokeWeight(3);
    beginShape();
    noFill();
    pushMatrix(); // Menyimpan status saat ini
    translate(1237, 515); // Pindahkan tali ke koordinat yang sesuai
    //rotate(radians(180)); // Putar tali sebesar 180 derajat
    vertex(-16, 31);
    quadraticVertex(-85, -26, -38, -170); // bagian tali
    //quadraticVertex(-317, -204, -243, -257); // bagian tali
    endShape();
    popMatrix(); // Mengembalikan status sebelumnya    
    
    fill(random(100, 255), random(100, 255), 0);
    pushMatrix(); // Menyimpan status saat ini
    translate(1201, 293); // Pindahkan balon ke koordinat yang diinginkan
    scale(0.7); // untuk menambah/mengurangi ukuran balon
    circle(0, 0, 156); 
    popMatrix(); // Mengembalikan status sebelumnya

    ////perulangan untuk balon
    //balonx += 1;
    //balony -=1;
    //if (balonx > 1209){
    //    balonx = 1137;
    //    balony = 342;
    //}
  
  // Gambar awan
  noStroke(); // Tanpa tepi
  fill(255);   // Warna putih
 // awan 1
  for (int j = 0; j < 3; j++) {
    ellipse(0 + j * 30 + 10*s, 130, 80, 40); // Elips untuk membuat awan
  }
  for (int j = 0; j < 2; j++) {
    ellipse(0 + 20 + j * 30 + 10*s, 130 - 20, 60, 40);
  }
  //awan 2
  for (int k = 0; k < 3; k++) {
    ellipse(400 + k * 30 + 10*s, 100, 80, 40); // Elips untuk membuat awan
  }
  for (int k = 0; k < 2; k++) {
    ellipse(400 + 20 + k * 30 + 10*s, 100 - 20, 60, 40);
  }
  
  pushMatrix();
  // Update posisi lampu spot
  lightPosition = new PVector(cos(angle) * 300 + width / 2, sin(angle) * 300 + height / 2, 100);
  
  // Arah cahaya spot
  float targetX = mouseX - width / 2;
  float targetY = mouseY - height / 2;
  spotlightDirection = new PVector(targetX, targetY, -1);
  spotlightDirection.normalize();
  popMatrix();
  

  // Gambar telur bebek
  pushMatrix();
  translate(1233, 619); // Memindahkan posisi telur
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  directionalLight(255, 255, 255, lightPosition.x, lightPosition.y, lightPosition.z);
  spotLight(200, 200, 200, lightPosition.x, lightPosition.y, lightPosition.z, spotlightDirection.x, spotlightDirection.y, spotlightDirection.z, angle, 2);
  sphere(17); // atur ukuran telur bebek
  popMatrix();
  
  angle += angleSpeed;

    //Tulisan  
    fill(#050000);
    text("Nama : Febyola Pappang Allo " + "\n NIM    : 2109106137 ", 1113, 54);
    textSize(30);
  }  
