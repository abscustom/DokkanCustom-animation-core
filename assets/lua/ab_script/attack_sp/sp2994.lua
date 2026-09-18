--1032920:LR_孫悟空(身勝手の極意"兆")+超サイヤ人ゴッドSSべジータ(進化)_超必殺技：未完成の極意
--sp_effect_a1_00519
--sp2994

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 164425; --カード後 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 94;

setupMovie(0, SP_02, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 110, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 146 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 118, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 124, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 48 );
SE004 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 118, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 74 );

--カメラパン
SE006 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 82, 1109, "",spep_0 + 112, 0, 12, -1);
SE008 = playSeVer2( spep_0 + 82, 1245, "",spep_0 + 112, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 82, SE008, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 650f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--構える
SE037 = playSeVer2( spep_1 + 86, 1233, "", 0, 0, 0, -1);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 1176;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 24 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 28 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 + OFFSET_X, 1, 101 );

y=70

setMoveKey( spep_2 + 0 + OFFSET_X, 1, -29.9, -86 + y , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -29.9, -86 + y , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -31.9, -86 + y , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -31.9, -86 + y , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -53.9, -58 + y , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -53.9, -58 + y , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -33.9, -74 + y , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -33.9, -74 + y , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -45.9, -52 + y , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -45.9, -52 + y , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -43.9, -30 + y , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -43.9, -30 + y , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -11.9, -20 + y , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -11.9, -20 + y , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -1.9, -32 + y , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -1.9, -32 + y , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 26.1, -68 + y , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 26.1, -68 + y , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 4.1, -84 + y , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 4.1, -84 + y , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -33.9, -90 + y , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -33.9, -90 + y , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -41.9, -98 + y , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -41.9, -98 + y , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -23.9, -84 + y , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -23.9, -84 + y , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -15.9, -68 + y , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -15.9, -68 + y , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -31.9, -54 + y , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -31.9, -54 + y , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -47.9, -42 + y , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -47.9, -42 + y , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -51.9, -42 + y , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -51.9, -42 + y , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -55.9, -48 + y , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -55.9, -48 + y , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -61.9, -52 + y , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -61.9, -52 + y , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -61.9, -56 + y , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -61.9, -56 + y , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -57.9, -60 + y , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -57.9, -60 + y , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -51.9, -58 + y , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -51.9, -58 + y , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -43.9, -56 + y , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -43.9, -56 + y , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -39.9, -56 + y , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -39.9, -56 + y , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -37.9, -52 + y , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -37.9, -52 + y , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -33.9, -50 + y , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -33.9, -50 + y , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -29.9, -48 + y , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -29.9, -48 + y , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -33.9, -50 + y , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -33.9, -50 + y , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -35.9, -52 + y , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -35.9, -52 + y , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -37.9, -56 + y , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -37.9, -56 + y , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -39.9, -58 + y , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -39.9, -58 + y , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -43.9, -62 + y , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -43.9, -62 + y , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -43.9, -64 + y , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -43.9, -64 + y , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, -321.9, -342 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -321.9, -342 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -261.9, -402 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -261.9, -402 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -221.9, -402 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -221.9, -402 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -215.9, -384 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -215.9, -384 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -277.9, -334 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -277.9, -334 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -293.9, -318 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -293.9, -318 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -59.9, -346 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -59.9, -346 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -71.9, -326 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -71.9, -326 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -81.9, -308 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -81.9, -308 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -63.9, -408 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -63.9, -408 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -63.9, -368 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -63.9, -368 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -63.9, -382 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -63.9, -382 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -65.9, -380 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -65.9, -380 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -67.9, -338 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -67.9, -338 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -63.9, -340 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -63.9, -340 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -61.9, -358 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -61.9, -358 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -63.9, -372 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -63.9, -372 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 436.6, 120.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 436.6, 120.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 433.6, 124.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 433.6, 124.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 430.7, 129.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 430.7, 129.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 427.8, 134.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 427.8, 134.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 424.8, 139.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 424.8, 139.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 421.9, 144.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 421.9, 144.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 419, 148.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 419, 148.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 416, 153.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 416, 153.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 413.1, 158.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 413.1, 158.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 410.2, 163.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 410.2, 163.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 407.2, 168.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 407.2, 168.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 404.3, 172.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 404.3, 172.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 401.4, 177.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 401.4, 177.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 398.4, 182.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 398.4, 182.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 395.5, 187.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 395.5, 187.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 392.6, 192.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 392.6, 192.1 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -45 );

--敵の動き3
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, -20.2, -319.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -20.2, -319.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -20.2, -321.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -20.2, -321.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -20.2, -327.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -20.2, -327.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -20.2, -333.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -20.2, -333.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -20.2, -337.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -20.2, -337.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -18.2, -335.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -18.2, -335.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 5.8, -291.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 5.8, -291.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 21.8, -265.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 21.8, -265.9 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 29.9 );

--敵の動き4
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, 212.1, -54 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 212.1, -54 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 208.3, -47.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 208.3, -47.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 205.3, -41.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 205.3, -41.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 202.9, -37.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 202.9, -37.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 201.1, -34.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 201.1, -34.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 200.1, -32.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 200.1, -32.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 199.8, -31.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 199.8, -31.6 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 15 );

--敵の動き5
setDisp( spep_2 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 282 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 266 + OFFSET_X, 1, 132.6, -5.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 132.6, -5.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 136.6, 4.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 136.6, 4.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 156.6, -0.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 156.6, -0.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 15, 16.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 15, 16.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 7, 6.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 7, 6.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -2, 24.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -2, 24.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 52, -66 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 52, -66 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 56, -56 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 56, -56 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -104, -70 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -104, -70 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -138, -88 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -138, -88 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -138, -80 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -138, -80 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -100, -90 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -100, -90 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -90.3, -89.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -90.3, -89.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -76.7, -88.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -76.7, -88.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -59.2, -87.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -59.2, -87.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -37.9, -86.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -37.9, -86.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 1.5, -84.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 1.5, -84.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 25.1, -83.5 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 25.1, -83.5 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 51.6, -92 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 51.6, -92 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 64, -94.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 64, -94.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 76.3, -96.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 76.3, -96.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 88.7, -98.4 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 88.7, -98.4 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 101.1, -100.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 101.1, -100.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 141.6, -80.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 141.6, -80.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 102.1, -82.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 102.1, -82.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 28.1, -69.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 28.1, -69.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -149.9, 107.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -149.9, 107.6 , 0 );

setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 7.7, 7.7 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 7.7, 7.7 );

setRotateKey( spep_2 + 266 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 30 );

setBlendColor(spep_2 + 292 + OFFSET_X, 1, 3, 0, 0, 0, 0.5)
setBlendColor(spep_2 + 316 + OFFSET_X, 1, 3, 0, 0, 0, 0)

--敵の動き6
setDisp( spep_2 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 332 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 332 + OFFSET_X, 1, -37.8, -380.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -37.8, -380.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 88.1, -301.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 88.1, -301.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 206.1, -221.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 206.1, -221.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 206.1, -219.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 206.1, -219.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 206.1, -199.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 206.1, -199.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 126.1, -159.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 126.1, -159.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -18, -362.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -18, -362.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -14, -452.6 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -14, -452.6 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -50, -872 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -50, -872 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -46, -896 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -46, -896 , 0 );

setScaleKey( spep_2 + 332 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 11.99, 11.99 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 11.99, 11.99 );

setRotateKey( spep_2 + 332 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -5 );

--敵の動き7
setDisp( spep_2 + 534 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 546 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 534 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 534 + OFFSET_X, 1, -119.9, -360.1 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -119.9, -360.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -119.9, 520.1 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -119.9, 520.1 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -119.9, 1198.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -119.9, 1198.2 , 0 );

setScaleKey( spep_2 + 534 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 6, 6 );

setRotateKey( spep_2 + 534 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, -45 );

--敵の動き8
setDisp( spep_2 + 688 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 698 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 688 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 692 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 688 + OFFSET_X, 1, 37.9, 307.9 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 37.9, 307.9 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 39.9, -252.3 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 39.9, -252.3 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 117.6, 438 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 117.6, 438 , 0 );

setScaleKey( spep_2 + 688 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 4.4, 4.4 );

setRotateKey( spep_2 + 688 + OFFSET_X, 1, 150 );
setRotateKey( spep_2 + 691 + OFFSET_X, 1, 150 );
setRotateKey( spep_2 + 692 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 698 + OFFSET_X, 1, 100 );

--敵の動き9
setDisp( spep_2 + 886 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 902 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 906 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 922 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 886 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 886 + OFFSET_X, 1, -372.1, -400 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, -372.1, -400 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, -79.9, -34 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, -79.9, -34 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, 79.9, 168.3 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X, 1, 79.9, 168.3 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X, 1, 96.1, 193 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, 96.1, 193 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, 96.1, 188.1 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, 96.1, 188.1 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, 91.8, 184.5 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, 91.8, 184.5 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, 58.2, 81.5 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, 58.2, 81.5 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, -45.4, -8.7 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X, 1, -45.4, -8.7 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X, 1, -219.1, -383.6 , 0 );
setMoveKey( spep_2 + 922 + OFFSET_X, 1, -219.1, -383.6 , 0 );

setScaleKey( spep_2 + 886 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 887 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 888 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 891 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 892 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 899 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 900 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 907 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 908 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 911 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 912 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 913 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 914 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 915 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 916 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 919 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 920 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 922 + OFFSET_X, 1, 7, 7 );

setRotateKey( spep_2 + 886 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 887 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 888 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 922 + OFFSET_X, 1, -10 );

--敵の動き10
setDisp( spep_2 + 1002 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1012 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1002 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 1002 + OFFSET_X, 1, -408.2, -11.3 , 0 );
setMoveKey( spep_2 + 1003 + OFFSET_X, 1, -408.2, -11.3 , 0 );
setMoveKey( spep_2 + 1004 + OFFSET_X, 1, -342.6, 8.7 , 0 );
setMoveKey( spep_2 + 1007 + OFFSET_X, 1, -342.6, 8.7 , 0 );
setMoveKey( spep_2 + 1008 + OFFSET_X, 1, -322.7, 14.3 , 0 );
setMoveKey( spep_2 + 1012 + OFFSET_X, 1, -322.7, 14.3 , 0 );

setScaleKey( spep_2 + 1002 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 1003 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 1004 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 1007 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 1008 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 1012 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 1002 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 1012 + OFFSET_X, 1, -15 );

-- ** 音 ** --
--瞬間移動
SE010 = playSeVer2( spep_2 + 4, 1245, "",spep_2 + 34, 0, 14, -1);
SE011 = playSeVer2( spep_2 + 10, 1109, "", 0, 0, 0, -1);

--着地
SE012 = playSeVer2( spep_2 + 16, 1427, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 18, 1188, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止 

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--裏拳
SE014 = playSeVer2( spep_2 + 100, 1116, "",spep_2 + 140, 0, 20, -1);
SE015 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 142, 1245, "",spep_2 + 172, 0, 14, -1);
SE018 = playSeVer2( spep_2 + 148, 1109, "", 0, 0, 0, -1);

--回転蹴り
SE019 = playSeVer2( spep_2 + 170, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 180, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 184, 1179, "", 0, 0, 0, -1);

--蹴り飛ばす
SE022 = playSeVer2( spep_2 + 224, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 224, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE024 = playSeVer2( spep_2 + 252, 1121, "",spep_2 + 400, 0, 54, -1);
SE025 = playSeVer2( spep_2 + 254, 1027, "", 0, 0, 0, -1);

--悟空に近づく
SE026 = playSeVer2( spep_2 + 318, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE026, 48 );

--水弾ける
SE027 = playSeVer2( spep_2 + 374, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 374, SE027, 162 );
SE028 = playSeVer2( spep_2 + 376, 1514, "", 0, 0, 0, -1);
setPitch( spep_2 + 374, SE028, 400 );
setTimeStretch( SE028, 1.27, 30, 4 );

--手にオーラまとう
setSeVolumeByWorkId( spep_2 + 410, SE029, 133 );
SE030 = playSeVer2( spep_2 + 412, 1271, "",spep_2 + 522, 0, 40, -1);
SE031 = playSeVer2( spep_2 + 424, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE031, 76 );
setPitch( spep_2 + 424, SE031, 400 );
setTimeStretch( SE031, 1.27, 30, 4 );
SE032 = playSeVer2( spep_2 + 424, 1407, "",spep_2 + 622, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 424, SE032, 132 );
SE033 = playSeVer2( spep_2 + 424, 1176, "",spep_2 + 626, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 424, SE033, 48 );
SE034 = playSeVer2( spep_2 + 428, 1499, "",spep_2 + 480, 0, 22, -1);

--敵宙になげる
SE035 = playSeVer2( spep_2 + 524, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 524, 1170, "", 0, 0, 0, -1);

--構える
SE037 = playSeVer2( spep_2 + 550, 1233, "", 0, 0, 0, -1);

--空で光る
SE038 = playSeVer2( spep_2 + 568, 235, "", 0, 0, 0, -1);

--追いかける
SE039 = playSeVer2( spep_2 + 610, 1452, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 610, 1182, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 610, 1117, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 622, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 622, SE042, 58 );
setTimeStretch( SE042, 1.4, 30, 4 );

--昇竜拳
SE043 = playSeVer2( spep_2 + 684, 1187, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 684, 1120, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 684, 1190, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 690, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 702, 1479, "", 0, 0, 0, -1);

--光の輪が広がる
SE048 = playSeVer2( spep_2 + 770, 1440, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 772, 1307, "", 0, 0, 0, -1);

--爆風
SE050 = playSeVer2( spep_2 + 804, 1427, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 814, 1188, "", 0, 0, 0, -1);

--追い抜く
SE052 = playSeVer2( spep_2 + 872, 1121, "",spep_2 + 1052, 0, 32, -1);
SE053 = playSeVer2( spep_2 + 880, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 880, SE053, 158 );
SE054 = playSeVer2( spep_2 + 904, 1278, "",spep_2 + 1048, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 904, SE054, 63 );

--気弾溜め
SE055 = playSeVer2( spep_2 + 920, 1490, "",spep_2 + 1064, 0, 52, -1);
SE056 = playSeVer2( spep_2 + 932, 1313, "", 0, 0, 0, -1);

--気弾発射
SE057 = playSeVer2( spep_2 + 1014, 1145, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 1014, 1027, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 1014, 1478, "",spep_2 + 1134, 0, 54, -1);
SE060 = playSeVer2( spep_2 + 1028, 1305, "",spep_2 + 1166, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 1028, SE060, 123 );
SE061 = playSeVer2( spep_2 + 1056, 1296, "",spep_2 + 1164, 0, 62, -1);
setPitch( spep_2 + 1056, SE061, 500 );
setTimeStretch( SE061, 1.33, 30, 4 );
SE062 = playSeVer2( spep_2 + 1056, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1056, SE062, 138 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 1060); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 1176F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 94;

setupMovie(0, SP_02, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
-- spep_x = spep_0 + 0;

-- -- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 110, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 146 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 118, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 124, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 48 );
SE004 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 118, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 74 );

--カメラパン
SE006 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 82, 1109, "",spep_0 + 112, 0, 12, -1);
SE008 = playSeVer2( spep_0 + 82, 1245, "",spep_0 + 112, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 82, SE008, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 650f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--構える
SE037 = playSeVer2( spep_1 + 86, 1233, "", 0, 0, 0, -1);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 1176;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 24 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 28 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 + OFFSET_X, 1,1 );

y=70

setMoveKey( spep_2 + 0 + OFFSET_X, 1, 29.9, -86 + y , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 29.9, -86 + y , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 31.9, -86 + y , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 31.9, -86 + y , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 53.9, -58 + y , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 53.9, -58 + y , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 33.9, -74 + y , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 33.9, -74 + y , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 45.9, -52 + y , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 45.9, -52 + y , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 43.9, -30 + y , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 43.9, -30 + y , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 11.9, -20 + y , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 11.9, -20 + y , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 1.9, -32 + y , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 1.9, -32 + y , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -26.1, -68 + y , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -26.1, -68 + y , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -4.1, -84 + y , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -4.1, -84 + y , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 33.9, -90 + y , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 33.9, -90 + y , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 41.9, -98 + y , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 41.9, -98 + y , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 23.9, -84 + y , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 23.9, -84 + y , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 15.9, -68 + y , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 15.9, -68 + y , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 31.9, -54 + y , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 31.9, -54 + y , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 47.9, -42 + y , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 47.9, -42 + y , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 51.9, -42 + y , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 51.9, -42 + y , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 55.9, -48 + y , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 55.9, -48 + y , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 61.9, -52 + y , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 61.9, -52 + y , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 61.9, -56 + y , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 61.9, -56 + y , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 57.9, -60 + y , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 57.9, -60 + y , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 51.9, -58 + y , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 51.9, -58 + y , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 43.9, -56 + y , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 43.9, -56 + y , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 39.9, -56 + y , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 39.9, -56 + y , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 37.9, -52 + y , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 37.9, -52 + y , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 33.9, -50 + y , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 33.9, -50 + y , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 29.9, -48 + y , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 29.9, -48 + y , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 33.9, -50 + y , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 33.9, -50 + y , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 35.9, -52 + y , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 35.9, -52 + y , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 37.9, -56 + y , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 37.9, -56 + y , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 39.9, -58 + y , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 39.9, -58 + y , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 43.9, -62 + y , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 43.9, -62 + y , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 43.9, -64 + y , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 43.9, -64 + y , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 108  );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106  );
changeAnime( spep_2 + 162 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 321.9, -342 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 321.9, -342 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 261.9, -402 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 261.9, -402 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 221.9, -402 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 221.9, -402 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 215.9, -384 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 215.9, -384 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 277.9, -334 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 277.9, -334 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 293.9, -318 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 293.9, -318 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 59.9, -346 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 59.9, -346 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 71.9, -326 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 71.9, -326 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 81.9, -308 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 81.9, -308 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 63.9, -408 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 63.9, -408 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 63.9, -368 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 63.9, -368 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 63.9, -382 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 63.9, -382 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 65.9, -380 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 65.9, -380 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 67.9, -338 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 67.9, -338 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 63.9, -340 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 63.9, -340 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 61.9, -358 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 61.9, -358 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 63.9, -372 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 63.9, -372 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -436.6, 120.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -436.6, 120.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -433.6, 124.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -433.6, 124.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -430.7, 129.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -430.7, 129.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -427.8, 134.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -427.8, 134.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -424.8, 139.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -424.8, 139.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -421.9, 144.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -421.9, 144.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -419, 148.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -419, 148.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -416, 153.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -416, 153.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -413.1, 158.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -413.1, 158.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -410.2, 163.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -410.2, 163.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -407.2, 168.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -407.2, 168.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -404.3, 172.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -404.3, 172.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -401.4, 177.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -401.4, 177.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -398.4, 182.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -398.4, 182.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -395.5, 187.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -395.5, 187.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -392.6, 192.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -392.6, 192.1 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 12, 12 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 45 );

--敵の動き3
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 107  );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 20.2, -319.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 20.2, -319.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 20.2, -321.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 20.2, -321.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 20.2, -327.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 20.2, -327.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 20.2, -333.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 20.2, -333.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 20.2, -337.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 20.2, -337.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 18.2, -335.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 18.2, -335.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -5.8, -291.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -5.8, -291.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -21.8, -265.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -21.8, -265.9 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -29.9 );

--敵の動き4
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, -212.1, -54 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -212.1, -54 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -208.3, -47.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -208.3, -47.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -205.3, -41.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -205.3, -41.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -202.9, -37.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -202.9, -37.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -201.1, -34.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -201.1, -34.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -200.1, -32.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -200.1, -32.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -199.8, -31.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -199.8, -31.6 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -15 );

--敵の動き5
setDisp( spep_2 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 282 + OFFSET_X, 1, 108  );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 105  );
changeAnime( spep_2 + 306 + OFFSET_X, 1,5 );
changeAnime( spep_2 + 316 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 266 + OFFSET_X, 1, -132.6, -5.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -132.6, -5.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -136.6, 4.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -136.6, 4.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -156.6, -0.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -156.6, -0.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -15, 16.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -15, 16.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -7, 6.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -7, 6.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 0, 18.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 2, 24.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 2, 24.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -52, -66 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -52, -66 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -56, -56 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -56, -56 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 104, -70 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 104, -70 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 138, -88 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 138, -88 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 138, -80 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 138, -80 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 100, -90 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 100, -90 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 90.3, -89.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 90.3, -89.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 76.7, -88.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 76.7, -88.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 59.2, -87.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 59.2, -87.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 37.9, -86.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 37.9, -86.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -1.5, -84.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -1.5, -84.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -25.1, -83.5 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -25.1, -83.5 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -51.6, -92 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -51.6, -92 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -64, -94.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -64, -94.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -76.3, -96.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -76.3, -96.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -88.7, -98.4 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -88.7, -98.4 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -101.1, -100.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -101.1, -100.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -141.6, -80.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -141.6, -80.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -102.1, -82.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -102.1, -82.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -28.1, -69.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -28.1, -69.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 149.9, 107.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 149.9, 107.6 , 0 );

setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 7.7, 7.7 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 7.7, 7.7 );

setRotateKey( spep_2 + 266 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -30 );

setBlendColor(spep_2 + 292 + OFFSET_X, 1, 3, 0, 0, 0, 0.5)
setBlendColor(spep_2 + 316 + OFFSET_X, 1, 3, 0, 0, 0, 0)

--敵の動き6
setDisp( spep_2 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 332 + OFFSET_X, 1,5 );

setMoveKey( spep_2 + 332 + OFFSET_X, 1, 37.8, -380.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 37.8, -380.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -88.1, -301.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -88.1, -301.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -206.1, -221.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -206.1, -221.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -206.1, -219.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -206.1, -219.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -206.1, -199.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -206.1, -199.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -126.1, -159.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -126.1, -159.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 18, -362.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 18, -362.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 14, -452.6 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 14, -452.6 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 50, -872 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 50, -872 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 46, -896 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 46, -896 , 0 );

setScaleKey( spep_2 + 332 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 11.99, 11.99 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 11.99, 11.99 );

setRotateKey( spep_2 + 332 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 5 );

--敵の動き7
setDisp( spep_2 + 534 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 546 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 534 + OFFSET_X, 1,7 );

setMoveKey( spep_2 + 534 + OFFSET_X, 1, 119.9, -360.1 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 119.9, -360.1 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 119.9, 520.1 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 119.9, 520.1 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 119.9, 1198.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 119.9, 1198.2 , 0 );

setScaleKey( spep_2 + 534 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 6, 6 );

setRotateKey( spep_2 + 534 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, 45 );

--敵の動き8
setDisp( spep_2 + 688 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 698 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 688 + OFFSET_X, 1, 106  );
changeAnime( spep_2 + 692 + OFFSET_X, 1, 108  );

setMoveKey( spep_2 + 688 + OFFSET_X, 1, -37.9, 307.9 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -37.9, 307.9 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -39.9, -252.3 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -39.9, -252.3 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -117.6, 438 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, -117.6, 438 , 0 );

setScaleKey( spep_2 + 688 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 4.4, 4.4 );

setRotateKey( spep_2 + 688 + OFFSET_X, 1, -150 );
setRotateKey( spep_2 + 691 + OFFSET_X, 1, -150 );
setRotateKey( spep_2 + 692 + OFFSET_X, 1, -100 );
setRotateKey( spep_2 + 698 + OFFSET_X, 1, -100 );

--敵の動き9
setDisp( spep_2 + 886 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 902 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 906 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 922 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 886 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 886 + OFFSET_X, 1, 372.1, -400 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, 372.1, -400 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, 79.9, -34 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, 79.9, -34 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, -79.9, 168.3 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X, 1, -79.9, 168.3 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X, 1, -96.1, 193 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, -96.1, 193 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, -96.1, 188.1 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, -96.1, 188.1 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, -91.8, 184.5 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, -91.8, 184.5 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, -58.2, 81.5 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, -58.2, 81.5 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, 45.4, -8.7 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X, 1, 45.4, -8.7 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X, 1, 219.1, -383.6 , 0 );
setMoveKey( spep_2 + 922 + OFFSET_X, 1, 219.1, -383.6 , 0 );

setScaleKey( spep_2 + 886 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 887 + OFFSET_X, 1, 8.5, 8.5 );
setScaleKey( spep_2 + 888 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 891 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 892 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 899 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 900 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 907 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 908 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 911 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 912 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 913 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 914 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 915 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 916 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 919 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 920 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_2 + 922 + OFFSET_X, 1, 7, 7 );

setRotateKey( spep_2 + 886 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 887 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 888 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 922 + OFFSET_X, 1, 10 );

--敵の動き10
setDisp( spep_2 + 1002 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1012 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1002 + OFFSET_X, 1,7 );

setMoveKey( spep_2 + 1002 + OFFSET_X, 1, 408.2, -11.3 , 0 );
setMoveKey( spep_2 + 1003 + OFFSET_X, 1, 408.2, -11.3 , 0 );
setMoveKey( spep_2 + 1004 + OFFSET_X, 1, 342.6, 8.7 , 0 );
setMoveKey( spep_2 + 1007 + OFFSET_X, 1, 342.6, 8.7 , 0 );
setMoveKey( spep_2 + 1008 + OFFSET_X, 1, 322.7, 14.3 , 0 );
setMoveKey( spep_2 + 1012 + OFFSET_X, 1, 322.7, 14.3 , 0 );

setScaleKey( spep_2 + 1002 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 1003 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 1004 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 1007 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 1008 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 1012 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 1002 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 1012 + OFFSET_X, 1, 15 );

-- ** 音 ** --
--瞬間移動
SE010 = playSeVer2( spep_2 + 4, 1245, "",spep_2 + 34, 0, 14, -1);
SE011 = playSeVer2( spep_2 + 10, 1109, "", 0, 0, 0, -1);

--着地
SE012 = playSeVer2( spep_2 + 16, 1427, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 18, 1188, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止 

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--裏拳
SE014 = playSeVer2( spep_2 + 100, 1116, "",spep_2 + 140, 0, 20, -1);
SE015 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 142, 1245, "",spep_2 + 172, 0, 14, -1);
SE018 = playSeVer2( spep_2 + 148, 1109, "", 0, 0, 0, -1);

--回転蹴り
SE019 = playSeVer2( spep_2 + 170, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 180, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 184, 1179, "", 0, 0, 0, -1);

--蹴り飛ばす
SE022 = playSeVer2( spep_2 + 224, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 224, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE024 = playSeVer2( spep_2 + 252, 1121, "",spep_2 + 400, 0, 54, -1);
SE025 = playSeVer2( spep_2 + 254, 1027, "", 0, 0, 0, -1);

--悟空に近づく
SE026 = playSeVer2( spep_2 + 318, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE026, 48 );

--水弾ける
SE027 = playSeVer2( spep_2 + 374, 1510, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 374, SE027, 162 );
SE028 = playSeVer2( spep_2 + 376, 1514, "", 0, 0, 0, -1);
setPitch( spep_2 + 374, SE028, 400 );
setTimeStretch( SE028, 1.27, 30, 4 );

--手にオーラまとう
SE029 = playSeVer2( spep_2 + 410, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 410, SE029, 133 );
SE030 = playSeVer2( spep_2 + 412, 1271, "",spep_2 + 522, 0, 40, -1);
SE031 = playSeVer2( spep_2 + 424, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 424, SE031, 76 );
setPitch( spep_2 + 424, SE031, 400 );
setTimeStretch( SE031, 1.27, 30, 4 );
SE032 = playSeVer2( spep_2 + 424, 1407, "",spep_2 + 622, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 424, SE032, 132 );
SE033 = playSeVer2( spep_2 + 424, 1176, "",spep_2 + 626, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 424, SE033, 48 );
SE034 = playSeVer2( spep_2 + 428, 1499, "",spep_2 + 480, 0, 22, -1);

--敵宙になげる
SE035 = playSeVer2( spep_2 + 524, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 524, 1170, "", 0, 0, 0, -1);

--構える
SE037 = playSeVer2( spep_2 + 550, 1233, "", 0, 0, 0, -1);

--空で光る
SE038 = playSeVer2( spep_2 + 568, 235, "", 0, 0, 0, -1);

--追いかける
SE039 = playSeVer2( spep_2 + 610, 1452, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 610, 1182, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 610, 1117, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 622, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 622, SE042, 58 );
setTimeStretch( SE042, 1.4, 30, 4 );

--昇竜拳
SE043 = playSeVer2( spep_2 + 684, 1187, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 684, 1120, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 684, 1190, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 690, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 702, 1479, "", 0, 0, 0, -1);

--光の輪が広がる
SE048 = playSeVer2( spep_2 + 770, 1440, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 772, 1307, "", 0, 0, 0, -1);

--爆風
SE050 = playSeVer2( spep_2 + 804, 1427, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 814, 1188, "", 0, 0, 0, -1);

--追い抜く
SE052 = playSeVer2( spep_2 + 872, 1121, "",spep_2 + 1052, 0, 32, -1);
SE053 = playSeVer2( spep_2 + 880, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 880, SE053, 158 );
SE054 = playSeVer2( spep_2 + 904, 1278, "",spep_2 + 1048, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 904, SE054, 63 );

--気弾溜め
SE055 = playSeVer2( spep_2 + 920, 1490, "",spep_2 + 1064, 0, 52, -1);
SE056 = playSeVer2( spep_2 + 932, 1313, "", 0, 0, 0, -1);

--気弾発射
SE057 = playSeVer2( spep_2 + 1014, 1145, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 1014, 1027, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 1014, 1478, "",spep_2 + 1134, 0, 54, -1);
SE060 = playSeVer2( spep_2 + 1028, 1305, "",spep_2 + 1166, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 1028, SE060, 123 );
SE061 = playSeVer2( spep_2 + 1056, 1296, "",spep_2 + 1164, 0, 62, -1);
setPitch( spep_2 + 1056, SE061, 500 );
setTimeStretch( SE061, 1.33, 30, 4 );
SE062 = playSeVer2( spep_2 + 1056, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1056, SE062, 138 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 1060); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 1176F


end