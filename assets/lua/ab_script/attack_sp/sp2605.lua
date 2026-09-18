--1027510:UR_人造人間18号(GT)_インフィニットバレット
--sp_effect_a9_00107
--sp2605

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162255;	--開幕～カードまで　前面	ef_001
SP_01b = 162257;	--開幕～カードまで　背面	ef_002
SP_02 = 162259;	--フィニッシュまで	ef_003

--エフェクト(てき)
SP_01r = 162256;	--開幕～カードまで　前面　敵側	ef_001r
SP_01br = 162258;	--開幕～カードまで　背面　敵側	ef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで（386F）
-------------------------------------------------

MAX_FRAME_0 = 386;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, -30, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 120 + OFFSET_X, 1, 1);
setDisp( spep_0 + 214 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 36.5, -110.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 41.2, -103.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 45.9, -96.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 50.7, -89.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 55.4, -83.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 58, -77.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 60.6, -72.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 63.3, -67.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 65.9, -62.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 65.9, -62.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -10.5, 13 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -10.5, 13 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -5.4, 24.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -5.4, 24.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -0.2, 36.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -0.2, 36.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 5, 48.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 5, 48.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 10.2, 59.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 10.2, 59.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 15.4, 71.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 15.4, 71.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 20.6, 83.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 20.6, 83.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 25.8, 94.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 25.8, 94.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 31, 106.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 31, 106.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 31.6, 108.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 31.6, 108.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 32.2, 110.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 32.2, 110.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 32.8, 112 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 32.8, 112 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 33.4, 113.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 33.4, 113.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 34, 115.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 34, 115.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 34.6, 117.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 34.6, 117.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 35.2, 119.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 35.2, 119.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -236.6, 97.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -236.6, 97.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -228.6, 79.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -228.6, 79.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -230.6, 91.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -230.6, 91.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -234.6, 81.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -234.6, 81.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -234.7, 86.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -234.7, 86.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -236.8, 87.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -236.8, 87.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -238.9, 87.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -238.9, 87.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -241, 88.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -241, 88.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -243.1, 89 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -243.1, 89 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -245.2, 89.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -245.2, 89.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -247.3, 90.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -247.3, 90.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -249.4, 90.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -249.4, 90.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -251.5, 91.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -251.5, 91.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -253.6, 92.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -253.6, 92.2 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -17.8 );

-- 敵の動き2
setDisp( spep_0 + 274 + OFFSET_X, 1, 1);
setDisp( spep_0 + 302 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 274 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 274 + OFFSET_X, 1, -410.6, -481.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -410.6, -481.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -420.6, -459.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -420.6, -459.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -404.6, -493.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -404.6, -493.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -410.6, -469.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -410.6, -469.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -132.7, -224.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -118.1, -196.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -103.5, -169 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -89, -141.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -74.4, -113.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -59.8, -86 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -45.3, -58.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -30.7, -30.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -16.2, -3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -1.6, 24.6 , 0 );

setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 274 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 124, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 162, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 88, 1109, "", 0, 0, 0, -1);
-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 128; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--パンチ
SE006 = playSeVer2( spep_0 + 128, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);

--キック
SE009 = playSeVer2( spep_0 + 164, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 174, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 174, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 174, 1001, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 274, 0, 44, -1);
SE014 = playSeVer2( spep_0 + 208, 1314, "",spep_0 + 284, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 208, SE014, 74 );
SE015 = playSeVer2( spep_0 + 254, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE016 = playSeVer2( spep_0 + 268, 1120, "", 0, 0, 0, -1);

--壁激突
SE017 = playSeVer2( spep_0 + 300, 1159, "",spep_0 + 412, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 300, SE017, 83 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- フィニッシュまで（258F）
-------------------------------------------------

MAX_FRAME_1 = 258;

-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- フィニッシュまで(ef_003)
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--連続気弾
SE019 = playSeVer2( spep_1 + 0, 1406, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 0, 1016, "", 0, 0, 0, 0.6);
SE021 = playSeVer2( spep_1 + 12, 1016, "", 0, 0, 0, 0.6);
SE022 = playSeVer2( spep_1 + 24, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 24, SE022, 85 );
SE023 = playSeVer2( spep_1 + 36, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 36, SE023, 116 );
SE024 = playSeVer2( spep_1 + 48, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 48, SE024, 91 );
SE025 = playSeVer2( spep_1 + 60, 1016, "", 0, 0, 0, 0.6);
SE026 = playSeVer2( spep_1 + 72, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 72, SE026, 94 );

--爆発
SE027 = playSeVer2( spep_1 + 78, 1023, "", 0, 0, 0, -1);

--連続気弾
SE028 = playSeVer2( spep_1 + 84, 1016, "", 0, 0, 0, 0.6);
SE029 = playSeVer2( spep_1 + 96, 1016, "", 0, 0, 0, 0.6);

--爆発
SE030 = playSeVer2( spep_1 + 106, 1067, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 106, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE031, 73 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 150); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで（386F）
-------------------------------------------------

MAX_FRAME_0 = 386;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 120 + OFFSET_X, 1, 1);
setDisp( spep_0 + 214 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 36.5, -110.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 41.2, -103.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 45.9, -96.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 50.7, -89.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 55.4, -83.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 58, -77.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 60.6, -72.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 63.3, -67.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 65.9, -62.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 65.9, -62.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -10.5, 13 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -10.5, 13 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -5.4, 24.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -5.4, 24.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -0.2, 36.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -0.2, 36.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 5, 48.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 5, 48.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 10.2, 59.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 10.2, 59.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 15.4, 71.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 15.4, 71.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 20.6, 83.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 20.6, 83.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 25.8, 94.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 25.8, 94.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 31, 106.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 31, 106.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 31.6, 108.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 31.6, 108.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 32.2, 110.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 32.2, 110.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 32.8, 112 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 32.8, 112 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 33.4, 113.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 33.4, 113.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 34, 115.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 34, 115.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 34.6, 117.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 34.6, 117.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 35.2, 119.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 35.2, 119.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -236.6, 97.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -236.6, 97.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -228.6, 79.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -228.6, 79.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -230.6, 91.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -230.6, 91.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -234.6, 81.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -234.6, 81.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -232.6, 85.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -234.7, 86.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -234.7, 86.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -236.8, 87.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -236.8, 87.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -238.9, 87.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -238.9, 87.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -241, 88.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -241, 88.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -243.1, 89 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -243.1, 89 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -245.2, 89.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -245.2, 89.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -247.3, 90.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -247.3, 90.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -249.4, 90.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -249.4, 90.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -251.5, 91.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -251.5, 91.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -253.6, 92.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -253.6, 92.2 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -17.8 );

-- 敵の動き2
setDisp( spep_0 + 274 + OFFSET_X, 1, 1);
setDisp( spep_0 + 302 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 274 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 274 + OFFSET_X, 1, -410.6, -481.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -410.6, -481.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -420.6, -459.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -420.6, -459.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -404.6, -493.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -404.6, -493.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -410.6, -469.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -410.6, -469.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -132.7, -224.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -118.1, -196.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -103.5, -169 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -89, -141.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -74.4, -113.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -59.8, -86 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -45.3, -58.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -30.7, -30.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -16.2, -3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -1.6, 24.6 , 0 );

setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 274 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 124, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 162, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 88, 1109, "", 0, 0, 0, -1);
-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 128; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--パンチ
SE006 = playSeVer2( spep_0 + 128, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);

--キック
SE009 = playSeVer2( spep_0 + 164, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 174, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 174, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 174, 1001, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 274, 0, 44, -1);
SE014 = playSeVer2( spep_0 + 208, 1314, "",spep_0 + 284, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 208, SE014, 74 );
SE015 = playSeVer2( spep_0 + 254, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE016 = playSeVer2( spep_0 + 268, 1120, "", 0, 0, 0, -1);

--壁激突
SE017 = playSeVer2( spep_0 + 300, 1159, "",spep_0 + 412, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 300, SE017, 83 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- フィニッシュまで（258F）
-------------------------------------------------

MAX_FRAME_1 = 258;

-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- フィニッシュまで(ef_003)
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--連続気弾
SE019 = playSeVer2( spep_1 + 0, 1406, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 0, 1016, "", 0, 0, 0, 0.6);
SE021 = playSeVer2( spep_1 + 12, 1016, "", 0, 0, 0, 0.6);
SE022 = playSeVer2( spep_1 + 24, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 24, SE022, 85 );
SE023 = playSeVer2( spep_1 + 36, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 36, SE023, 116 );
SE024 = playSeVer2( spep_1 + 48, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 48, SE024, 91 );
SE025 = playSeVer2( spep_1 + 60, 1016, "", 0, 0, 0, 0.6);
SE026 = playSeVer2( spep_1 + 72, 1016, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 72, SE026, 94 );

--爆発
SE027 = playSeVer2( spep_1 + 78, 1023, "", 0, 0, 0, -1);

--連続気弾
SE028 = playSeVer2( spep_1 + 84, 1016, "", 0, 0, 0, 0.6);
SE029 = playSeVer2( spep_1 + 96, 1016, "", 0, 0, 0, 0.6);

--爆発
SE030 = playSeVer2( spep_1 + 106, 1067, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 106, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE031, 73 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 150); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

end
