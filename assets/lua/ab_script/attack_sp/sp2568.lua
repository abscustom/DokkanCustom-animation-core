-- 1026820: LR_孫悟空_必殺技_気円斬
-- sp_effect_a6_00019

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_05 = 1035;  -- カットイン攻撃

-- 味方側
SP_001 = 161915;  -- 登場ー攻撃 ef_001
SP_001_back = 161916;  -- 登場ー攻撃　裏 ef_001_back
SP_002 = 161919;  -- フィニッシュ ef_002
SP_002_back = 161920;  -- フィニッシュ　裏 ef_002_back

-- 敵側
SP_001_back_re = 161917;  -- 登場ー攻撃　敵側裏 ef_001_back_re
SP_001_re = 161918;  -- 登場ー攻撃　敵側 ef_001_re
SP_002_back_re = 161921;  -- フィニッシュ　敵側裏 ef_002_back_re
SP_002_re = 161922;  -- フィニッシュ　敵側 ef_002_re

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場ー攻撃 ef_001 (334F)
------------------------------------------------------

MAX_FRAME_0 = 332;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001_back = entryEffect( spep_0 + 0, SP_001_back, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001_back, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001_back, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001_back, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001_back, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0;
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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

-- ** 音 ** --

--顔カットイン
SE001 = playSeVer2( spep_0 , 1018, "", 0, 0, 0, -1);
--拳握る
SE002 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1330, "",spep_0 + 70, 0, 26, -1);
--走ってくる
SE008 = playSeVer2( spep_0 + 102, 1377, "", spep_0 + 102 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 138 );
stopSeIfDoubleSpeed( spep_0 + 102, SE008 );
SE010 = playSeVer2( spep_0 + 110, 1377, "", spep_0 + 110 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 110, SE010, 108 );
stopSeIfDoubleSpeed( spep_0 + 110, SE010 );
SE011 = playSeVer2( spep_0 + 118, 1377, "", spep_0 + 118 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 118, SE011, 136 );
stopSeIfDoubleSpeed( spep_0 + 118, SE011 );
SE014 = playSeVer2( spep_0 + 128, 1377, "", spep_0 + 128 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 128, SE014, 176 );
stopSeIfDoubleSpeed( spep_0 + 128, SE014 );
SE016 = playSeVer2( spep_0 + 136, 1377, "", spep_0 + 136 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 136, SE016, 214 );
stopSeIfDoubleSpeed( spep_0 + 136, SE016 );
SE018 = playSeVer2( spep_0 + 144, 1377, "", spep_0 + 144 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 144, SE018, 275 );
stopSeIfDoubleSpeed( spep_0 + 144, SE018 );

SE005 = playSeVer2( spep_0 + 102, 1108, "", spep_0 + 102+8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 102, SE005, 155 );
SE009 = playSeVer2( spep_0 + 110, 1108, "", spep_0 + 110 + 8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 197 );
SE012 = playSeVer2( spep_0 + 120, 1108, "",spep_0 + 120 +8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 211 );
SE013 = playSeVer2( spep_0 + 128, 1108, "", spep_0 + 128 +8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 128, SE013, 243 );
SE015 = playSeVer2( spep_0 + 136, 1108, "", spep_0 + 136+8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 136, SE015, 251 );
SE017 = playSeVer2( spep_0 + 144, 1108, "", spep_0 + 144+8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 144, SE017, 288 );

SE006 = playSeVer2( spep_0 + 102, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE006, 71 );
SE004 = playSeVer2( spep_0 + 102, 1373, "",spep_0 + 174, 6, 6, 0.6);
setStartTimeMs( SE004,  133 );
SE007 = playSeVer2( spep_0 + 102, 1117, "",spep_0 + 178, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 102, SE007, 79 );

-- ** 敵キャラクター ** --
OFFSET_0 = -1;

--敵の動き1
setDisp( spep_0 + 150 + OFFSET_0, 1, 1 );
setDisp( spep_0 + 184 + OFFSET_0, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_0, 1, 118 );
changeAnime( spep_0 + 166 + OFFSET_0, 1, 106 );

setMoveKey( spep_0 + 150 + OFFSET_0, 1, -45.9, -50.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_0, 1, -45.9, -50.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_0, 1, -44.7, -50 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_0, 1, -44.7, -50 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_0, 1, -40.9, -50 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_0, 1, -40.9, -50 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_0, 1, -34.6, -50 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_0, 1, -34.6, -50 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_0, 1, -25.8, -50 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_0, 1, -25.8, -50 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_0, 1, -14.4, -50 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_0, 1, -14.4, -50 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_0, 1, -0.6, -50 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_0, 1, -0.6, -50 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_0, 1, 15.8, -50 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_0, 1, 15.8, -50 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_0, 1, 100, -67.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_0, 1, 100, -67.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_0, 1, 77, -29.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_0, 1, 77, -29.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_0, 1, 119.7, -37.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_0, 1, 119.7, -37.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_0, 1, 76.3, -70.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_0, 1, 76.3, -70.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_0, 1, 114, -66.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_0, 1, 114, -66.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_0, 1, 195.2, -35.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_0, 1, 195.2, -35.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_0, 1, 334.4, -30.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_0, 1, 334.4, -30.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_0, 1, 428.6, -43.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_0, 1, 428.6, -43.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_0, 1, 560.8, -29.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_0, 1, 560.8, -29.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_0, 1, 656, -23.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_0, 1, 656, -23.1 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_0, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 184 + OFFSET_0, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 207 + OFFSET_0, 1, 1.33, 1.33 );

setRotateKey( spep_0 + 150 + OFFSET_0, 1, 0 );
setRotateKey( spep_0 + 184 + OFFSET_0, 1, 0 );

setBlendColor( spep_0 + 150 + OFFSET_0, 1, 0, 0, 0, 0, 0 );

--敵の動き2
setDisp( spep_0 + 209 + OFFSET_0, 1, 1 );
setDisp( spep_0 + 238 + OFFSET_0, 1, 0 );

changeAnime( spep_0 + 209 + OFFSET_0, 1, 105 );
changeAnime( spep_0 + 228 + OFFSET_0, 1, 7 );

setMoveKey( spep_0 + 208 + OFFSET_0, 1, 10.2, -81.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_0, 1, 10.2, -81.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_0, 1, -28.8, -64.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_0, 1, -28.8, -64.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_0, 1, -54.7, -53 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_0, 1, -54.7, -53 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_0, 1, -70.4, -46.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_0, 1, -70.4, -46.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_0, 1, -80.7, -41.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_0, 1, -80.7, -41.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_0, 1, -88.1, -38.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_0, 1, -88.1, -38.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_0, 1, -93.8, -35.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_0, 1, -93.8, -35.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_0, 1, -97.9, -33 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_0, 1, -97.9, -33 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_0, 1, -65.9, 127.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_0, 1, -65.9, 127.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_0, 1, -128.7, 282.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_0, 1, -128.7, 282.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_0, 1, -239.5, 390 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_0, 1, -239.5, 390 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_0, 1, -279.3, 505.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_0, 1, -279.3, 505.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_0, 1, -362.1, 649.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_0, 1, -362.1, 649.6 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_0, 1, 7.26, 7.26 );
setScaleKey( spep_0 + 209 + OFFSET_0, 1, 7.26, 7.26 );
setScaleKey( spep_0 + 210 + OFFSET_0, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 211 + OFFSET_0, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 212 + OFFSET_0, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 213 + OFFSET_0, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 214 + OFFSET_0, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 215 + OFFSET_0, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 216 + OFFSET_0, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 217 + OFFSET_0, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 218 + OFFSET_0, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 219 + OFFSET_0, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 220 + OFFSET_0, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 221 + OFFSET_0, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 222 + OFFSET_0, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 227 + OFFSET_0, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 228 + OFFSET_0, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 229 + OFFSET_0, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 230 + OFFSET_0, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 231 + OFFSET_0, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 232 + OFFSET_0, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 233 + OFFSET_0, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 234 + OFFSET_0, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 235 + OFFSET_0, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 238 + OFFSET_0, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 271 + OFFSET_0, 1, 2.35, 2.35 );

setRotateKey( spep_0 + 208 + OFFSET_0, 1, 0 );
setRotateKey( spep_0 + 227 + OFFSET_0, 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_0, 1, 53.4 );
setRotateKey( spep_0 + 238 + OFFSET_0, 1, 53.4 );
setRotateKey( spep_0 + 271 + OFFSET_0, 1, 53.4 );

--敵の動き3
setDisp( spep_0 + 273 + OFFSET_0, 1, 1 );
setDisp( spep_0 + 314 + OFFSET_0, 1, 0 );

changeAnime( spep_0 + 273 + OFFSET_0, 1, 7 );
changeAnime( spep_0 + 296 + OFFSET_0, 1, 8 );

setMoveKey( spep_0 + 272 + OFFSET_0, 1, 223.9, 392 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_0, 1, 223.9, 392 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_0, 1, 205.3, 383.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_0, 1, 205.3, 383.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_0, 1, 186.6, 374.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_0, 1, 186.6, 374.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_0, 1, 167.9, 365.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_0, 1, 167.9, 365.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_0, 1, 149.3, 356.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_0, 1, 149.3, 356.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_0, 1, 130.6, 347.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_0, 1, 130.6, 347.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_0, 1, 111.9, 338.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_0, 1, 111.9, 338.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_0, 1, 93.2, 329.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_0, 1, 93.2, 329.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_0, 1, 74.5, 320.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_0, 1, 74.5, 320.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_0, 1, 55.8, 311.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_0, 1, 55.8, 311.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_0, 1, 37.1, 302.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_0, 1, 37.1, 302.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_0, 1, -7.5, 318.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_0, 1, -7.5, 318.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_0, 1, -152.4, 198.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_0, 1, -152.4, 198.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_0, 1, -129.9, 241.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_0, 1, -129.9, 241.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_0, 1, -135.4, 185.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_0, 1, -135.4, 185.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_0, 1, -171.4, 245.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_0, 1, -171.4, 245.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_0, 1, -205.7, 325.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_0, 1, -205.7, 325.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_0, 1, -261, 335.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_0, 1, -261, 335.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_0, 1, -292.3, 413.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_0, 1, -292.3, 413.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_0, 1, -373.5, 470.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_0, 1, -373.5, 470.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_0, 1, -427.8, 492.5 , 0 );

setScaleKey( spep_0 + 272 + OFFSET_0, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 273 + OFFSET_0, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 274 + OFFSET_0, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 275 + OFFSET_0, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 276 + OFFSET_0, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 277 + OFFSET_0, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 278 + OFFSET_0, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 279 + OFFSET_0, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 280 + OFFSET_0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 281 + OFFSET_0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 282 + OFFSET_0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 283 + OFFSET_0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 284 + OFFSET_0, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 285 + OFFSET_0, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 286 + OFFSET_0, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 287 + OFFSET_0, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 288 + OFFSET_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 289 + OFFSET_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 290 + OFFSET_0, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 291 + OFFSET_0, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 292 + OFFSET_0, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 293 + OFFSET_0, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 294 + OFFSET_0, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 295 + OFFSET_0, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 296 + OFFSET_0, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 302 + OFFSET_0, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 303 + OFFSET_0, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 304 + OFFSET_0, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 305 + OFFSET_0, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 306 + OFFSET_0, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 307 + OFFSET_0, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 308 + OFFSET_0, 1, 3, 3 );
setScaleKey( spep_0 + 309 + OFFSET_0, 1, 3, 3 );
setScaleKey( spep_0 + 310 + OFFSET_0, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 311 + OFFSET_0, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 314 + OFFSET_0, 1, 2.73, 2.73 );

setRotateKey( spep_0 + 272 + OFFSET_0, 1, 0.4 );
setRotateKey( spep_0 + 273 + OFFSET_0, 1, 0.4 );
setRotateKey( spep_0 + 274 + OFFSET_0, 1, 0.1 );
setRotateKey( spep_0 + 275 + OFFSET_0, 1, 0.1 );
setRotateKey( spep_0 + 276 + OFFSET_0, 1, -0.2 );
setRotateKey( spep_0 + 277 + OFFSET_0, 1, -0.2 );
setRotateKey( spep_0 + 278 + OFFSET_0, 1, -0.5 );
setRotateKey( spep_0 + 279 + OFFSET_0, 1, -0.5 );
setRotateKey( spep_0 + 280 + OFFSET_0, 1, -0.8 );
setRotateKey( spep_0 + 281 + OFFSET_0, 1, -0.8 );
setRotateKey( spep_0 + 282 + OFFSET_0, 1, -1.2 );
setRotateKey( spep_0 + 283 + OFFSET_0, 1, -1.2 );
setRotateKey( spep_0 + 284 + OFFSET_0, 1, -1.5 );
setRotateKey( spep_0 + 285 + OFFSET_0, 1, -1.5 );
setRotateKey( spep_0 + 286 + OFFSET_0, 1, -1.8 );
setRotateKey( spep_0 + 287 + OFFSET_0, 1, -1.8 );
setRotateKey( spep_0 + 288 + OFFSET_0, 1, -2.1 );
setRotateKey( spep_0 + 289 + OFFSET_0, 1, -2.1 );
setRotateKey( spep_0 + 290 + OFFSET_0, 1, -2.4 );
setRotateKey( spep_0 + 291 + OFFSET_0, 1, -2.4 );
setRotateKey( spep_0 + 292 + OFFSET_0, 1, -2.8 );
setRotateKey( spep_0 + 293 + OFFSET_0, 1, -2.8 );
setRotateKey( spep_0 + 294 + OFFSET_0, 1, -3.1 );
setRotateKey( spep_0 + 295 + OFFSET_0, 1, -3.1 );
setRotateKey( spep_0 + 296 + OFFSET_0, 1, 7.7 );
setRotateKey( spep_0 + 314 + OFFSET_0, 1, 7.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 156;  -- エンドフェイズのフレーム数を置き換える
      
    playSe( SP_dodge - 12, 1042);
    -- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
    
    pauseAll( SP_dodge, 67);
      
    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
      
    endPhase( SP_dodge+10);
      
    do return end
    else end
    
    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --

--パンチ
SE019 = playSeVer2( spep_0 + 160, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE019, 141 );
SE020 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 168, 1187, "", 0, 0, 0, -1);
--瞬間移動
SE022 = playSeVer2( spep_0 + 192, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 216, 1109, "", 0, 0, 0, -1);
--チョップ
SE024 = playSeVer2( spep_0 + 224, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 226, 1187, "",spep_0 + 342, 0, 4, -1);
--瞬間移動
SE026 = playSeVer2( spep_0 + 254, 1109, "", 0, 0, 0, -1);
--殴り飛ばす
SE027 = playSeVer2( spep_0 + 284, 1116, "",spep_0 + 318, 0, 16, -1);
SE028 = playSeVer2( spep_0 + 288, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 298, 1120, "",spep_0 + 342, 0, 6, -1);
SE030 = playSeVer2( spep_0 + 298, 1187, "",spep_0 + 342, 0, 6, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 334

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_c);

------------------------------------------------------
-- フィニッシュ ef_002 (278F)
------------------------------------------------------

MAX_FRAME_2 = 276;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002_back = entryEffect( spep_2 + 0, SP_002_back, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_back, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_back, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_back, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 255 );

-- ** 敵キャラクター ** --
OFFSET_2 = -1;

setDisp( spep_2 + 62 + OFFSET_2, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_2, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_2, 1, 108 );
changeAnime( spep_2 + 98 + OFFSET_2, 1, 106 );

setMoveKey( spep_2 + 62 + OFFSET_2, 1, 108.5, 239.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_2, 1, 108.5, 239.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_2, 1, 115.5, 242.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_2, 1, 115.5, 242.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_2, 1, 122.4, 245.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_2, 1, 122.4, 245.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_2, 1, 129.4, 248 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_2, 1, 129.4, 248 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_2, 1, 136.3, 250.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_2, 1, 136.3, 250.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_2, 1, 143.3, 253.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_2, 1, 143.3, 253.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_2, 1, 150.2, 256.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_2, 1, 150.2, 256.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_2, 1, 157.2, 259.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_2, 1, 157.2, 259.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_2, 1, 164.2, 262.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_2, 1, 164.2, 262.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_2, 1, 171.1, 264.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_2, 1, 171.1, 264.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_2, 1, 178.1, 267.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_2, 1, 178.1, 267.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_2, 1, 29, 73 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_2, 1, 29, 73 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_2, 1, 43.2, 78.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_2, 1, 43.2, 78.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_2, 1, 57.4, 83.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_2, 1, 57.4, 83.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_2, 1, 71.6, 88.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_2, 1, 71.6, 88.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_2, 1, 85.7, 94.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_2, 1, 85.7, 94.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_2, 1, 99.9, 99.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_2, 1, 99.9, 99.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_2, 1, 121.5, 108 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_2, 1, 121.5, 108 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_2, 1, 129, 110.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_2, 1, 129, 110.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_2, 1, 151.9, 119 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_2, 1, 151.9, 119 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_2, 1, 172.1, 126.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_2, 1, 172.1, 126.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_2, 1, 189.6, 133.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_2, 1, 189.6, 133.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_2, 1, 204.4, 138.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_2, 1, 204.4, 138.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_2, 1, 216.5, 143.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_2, 1, 216.5, 143.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_2, 1, 226, 146.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_2, 1, 226, 146.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_2, 1, 232.7, 149.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_2, 1, 232.7, 149.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_2, 1, 236.7, 150.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_2, 1, 236.7, 150.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_2, 1, 238.1, 151.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_2, 1, 238.1, 151.4 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_2, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 63 + OFFSET_2, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 64 + OFFSET_2, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 65 + OFFSET_2, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 66 + OFFSET_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 67 + OFFSET_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 68 + OFFSET_2, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 69 + OFFSET_2, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 70 + OFFSET_2, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 71 + OFFSET_2, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 72 + OFFSET_2, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 73 + OFFSET_2, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 74 + OFFSET_2, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 75 + OFFSET_2, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 76 + OFFSET_2, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 77 + OFFSET_2, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 78 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 79 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 80 + OFFSET_2, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 81 + OFFSET_2, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 82 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 83 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 84 + OFFSET_2, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 100 + OFFSET_2, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 276 + OFFSET_2, 1, 1.75, 1.75 );

setRotateKey( spep_2 + 62 + OFFSET_2, 1, -10.7 );
setRotateKey( spep_2 + 63 + OFFSET_2, 1, -10.7 );
setRotateKey( spep_2 + 64 + OFFSET_2, 1, -10.3 );
setRotateKey( spep_2 + 65 + OFFSET_2, 1, -10.3 );
setRotateKey( spep_2 + 66 + OFFSET_2, 1, -9.8 );
setRotateKey( spep_2 + 67 + OFFSET_2, 1, -9.8 );
setRotateKey( spep_2 + 68 + OFFSET_2, 1, -9.4 );
setRotateKey( spep_2 + 69 + OFFSET_2, 1, -9.4 );
setRotateKey( spep_2 + 70 + OFFSET_2, 1, -9 );
setRotateKey( spep_2 + 71 + OFFSET_2, 1, -9 );
setRotateKey( spep_2 + 72 + OFFSET_2, 1, -8.6 );
setRotateKey( spep_2 + 73 + OFFSET_2, 1, -8.6 );
setRotateKey( spep_2 + 74 + OFFSET_2, 1, -8.2 );
setRotateKey( spep_2 + 75 + OFFSET_2, 1, -8.2 );
setRotateKey( spep_2 + 76 + OFFSET_2, 1, -7.7 );
setRotateKey( spep_2 + 77 + OFFSET_2, 1, -7.7 );
setRotateKey( spep_2 + 78 + OFFSET_2, 1, -7.3 );
setRotateKey( spep_2 + 79 + OFFSET_2, 1, -7.3 );
setRotateKey( spep_2 + 80 + OFFSET_2, 1, -6.9 );
setRotateKey( spep_2 + 81 + OFFSET_2, 1, -6.9 );
setRotateKey( spep_2 + 82 + OFFSET_2, 1, -6.5 );
setRotateKey( spep_2 + 83 + OFFSET_2, 1, -6.5 );
setRotateKey( spep_2 + 84 + OFFSET_2, 1, -8.4 );
setRotateKey( spep_2 + 85 + OFFSET_2, 1, -8.4 );
setRotateKey( spep_2 + 86 + OFFSET_2, 1, -8.5 );
setRotateKey( spep_2 + 94 + OFFSET_2, 1, -8.5 );
setRotateKey( spep_2 + 95 + OFFSET_2, 1, -8.5 );
setRotateKey( spep_2 + 96 + OFFSET_2, 1, -8.4 );
setRotateKey( spep_2 + 97 + OFFSET_2, 1, -8.4 );
setRotateKey( spep_2 + 98 + OFFSET_2, 1, -37.7 );
setRotateKey( spep_2 + 100 + OFFSET_2, 1, -37.7 );
setRotateKey( spep_2 + 276 + OFFSET_2, 1, -37.7 );

setBlendColor( spep_2 + 96 + OFFSET_2, 1, 0, 0, 0, 0, 0 );
setBlendColor( spep_2 + 98 + OFFSET_2, 1, 0, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 116 + OFFSET_2, 1, 0, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 118 + OFFSET_2, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --

--気円斬投げる
SE032 = playSeVer2( spep_2 + 26, 1242, "",spep_2 + 100, 18, 8, -1);
setStartTimeMs( SE032,  1233 );
--振りかぶる
SE033 = playSeVer2( spep_2 + 8, 1003, "", 0, 0, 0, -1);
--気円斬溜め
SE034 = playSeVer2( spep_2 + 8, 1240, "",spep_2 + 66, 0, 30, -1);
--気円斬投げる
SE035 = playSeVer2( spep_2 + 26, 1117, "",spep_2 + 102, 0, 10, -1);
SE036 = playSeVer2( spep_2 + 26, 1193, "",spep_2 + 84, 0, 32, -1);
SE037 = playSeVer2( spep_2 + 26, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE037, 65 );
SE038 = playSeVer2( spep_2 + 32, 1179, "",spep_2 + 100, 0, 8, -1);
SE039 = playSeVer2( spep_2 + 48, 1241, "",spep_2 + 100, 0, 8, 0.6);
--敵ヒット
SE040 = playSeVer2( spep_2 + 92, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE040, 211 );
SE041 = playSeVer2( spep_2 + 92, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE041, 55 );
SE042 = playSeVer2( spep_2 + 92, 1142, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 96, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE043, 191 );
SE044 = playSeVer2( spep_2 + 98, 1179, "",spep_2 + 146, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 98, SE044, 100 );
--爆発
SE045 = playSeVer2( spep_2 + 122, 1068, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 122, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 170 );
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 278

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場ー攻撃 ef_001 (334F)
------------------------------------------------------

MAX_FRAME_0 = 332;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001_re, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001_back = entryEffect( spep_0 + 0, SP_001_back_re, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001_back, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001_back, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001_back, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001_back, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001_back, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0;
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 );  -- ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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

-- ** 音 ** --

--顔カットイン
SE001 = playSeVer2( spep_0 , 1018, "", 0, 0, 0, -1);
--拳握る
SE002 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1330, "",spep_0 + 70, 0, 26, -1);
--走ってくる
SE008 = playSeVer2( spep_0 + 102, 1377, "", spep_0 + 102 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 138 );
stopSeIfDoubleSpeed( spep_0 + 102, SE008 );
SE010 = playSeVer2( spep_0 + 110, 1377, "", spep_0 + 110 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 110, SE010, 108 );
stopSeIfDoubleSpeed( spep_0 + 110, SE010 );
SE011 = playSeVer2( spep_0 + 118, 1377, "", spep_0 + 118 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 118, SE011, 136 );
stopSeIfDoubleSpeed( spep_0 + 118, SE011 );
SE014 = playSeVer2( spep_0 + 128, 1377, "", spep_0 + 128 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 128, SE014, 176 );
stopSeIfDoubleSpeed( spep_0 + 128, SE014 );
SE016 = playSeVer2( spep_0 + 136, 1377, "", spep_0 + 136 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 136, SE016, 214 );
stopSeIfDoubleSpeed( spep_0 + 136, SE016 );
SE018 = playSeVer2( spep_0 + 144, 1377, "", spep_0 + 144 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 144, SE018, 275 );
stopSeIfDoubleSpeed( spep_0 + 144, SE018 );

SE005 = playSeVer2( spep_0 + 102, 1108, "", spep_0 + 102+8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 102, SE005, 155 );
SE009 = playSeVer2( spep_0 + 110, 1108, "", spep_0 + 110 + 8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 110, SE009, 197 );
SE012 = playSeVer2( spep_0 + 120, 1108, "",spep_0 + 120 +8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 120, SE012, 211 );
SE013 = playSeVer2( spep_0 + 128, 1108, "", spep_0 + 128 +8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 128, SE013, 243 );
SE015 = playSeVer2( spep_0 + 136, 1108, "", spep_0 + 136+8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 136, SE015, 251 );
SE017 = playSeVer2( spep_0 + 144, 1108, "", spep_0 + 144+8, 0, 3, -1);
setSeVolumeByWorkId( spep_0 + 144, SE017, 288 );

SE006 = playSeVer2( spep_0 + 102, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE006, 71 );
SE004 = playSeVer2( spep_0 + 102, 1373, "",spep_0 + 174, 6, 6, 0.6);
setStartTimeMs( SE004,  133 );
SE007 = playSeVer2( spep_0 + 102, 1117, "",spep_0 + 178, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 102, SE007, 79 );

-- ** 敵キャラクター ** --
OFFSET_0 = -1;

--敵の動き1
setDisp( spep_0 + 150 + OFFSET_0, 1, 1 );
setDisp( spep_0 + 184 + OFFSET_0, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_0, 1, 118 );
changeAnime( spep_0 + 166 + OFFSET_0, 1, 106 );

setMoveKey( spep_0 + 150 + OFFSET_0, 1, -45.9, -50.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_0, 1, -45.9, -50.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_0, 1, -44.7, -50 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_0, 1, -44.7, -50 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_0, 1, -40.9, -50 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_0, 1, -40.9, -50 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_0, 1, -34.6, -50 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_0, 1, -34.6, -50 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_0, 1, -25.8, -50 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_0, 1, -25.8, -50 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_0, 1, -14.4, -50 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_0, 1, -14.4, -50 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_0, 1, -0.6, -50 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_0, 1, -0.6, -50 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_0, 1, 15.8, -50 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_0, 1, 15.8, -50 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_0, 1, 100, -67.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_0, 1, 100, -67.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_0, 1, 77, -29.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_0, 1, 77, -29.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_0, 1, 119.7, -37.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_0, 1, 119.7, -37.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_0, 1, 76.3, -70.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_0, 1, 76.3, -70.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_0, 1, 114, -66.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_0, 1, 114, -66.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_0, 1, 195.2, -35.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_0, 1, 195.2, -35.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_0, 1, 334.4, -30.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_0, 1, 334.4, -30.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_0, 1, 428.6, -43.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_0, 1, 428.6, -43.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_0, 1, 560.8, -29.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_0, 1, 560.8, -29.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_0, 1, 656, -23.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_0, 1, 656, -23.1 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_0, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 184 + OFFSET_0, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 207 + OFFSET_0, 1, 1.33, 1.33 );

setRotateKey( spep_0 + 150 + OFFSET_0, 1, 0 );
setRotateKey( spep_0 + 184 + OFFSET_0, 1, 0 );

setBlendColor( spep_0 + 150 + OFFSET_0, 1, 0, 0, 0, 0, 0 );

--敵の動き2
setDisp( spep_0 + 209 + OFFSET_0, 1, 1 );
setDisp( spep_0 + 238 + OFFSET_0, 1, 0 );

changeAnime( spep_0 + 209 + OFFSET_0, 1, 5 );
changeAnime( spep_0 + 228 + OFFSET_0, 1, 107 );

setMoveKey( spep_0 + 208 + OFFSET_0, 1, -10.2, -81.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_0, 1, -10.2, -81.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_0, 1, 28.8, -64.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_0, 1, 28.8, -64.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_0, 1, 54.7, -53 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_0, 1, 54.7, -53 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_0, 1, 70.4, -46.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_0, 1, 70.4, -46.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_0, 1, 80.7, -41.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_0, 1, 80.7, -41.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_0, 1, 88.1, -38.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_0, 1, 88.1, -38.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_0, 1, 93.8, -35.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_0, 1, 93.8, -35.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_0, 1, 97.9, -33 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_0, 1, 97.9, -33 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_0, 1, 65.9, 127.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_0, 1, 65.9, 127.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_0, 1, 128.7, 282.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_0, 1, 128.7, 282.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_0, 1, 239.5, 390 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_0, 1, 239.5, 390 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_0, 1, 279.3, 505.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_0, 1, 279.3, 505.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_0, 1, 362.1, 649.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_0, 1, 362.1, 649.6 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_0, 1, 7.26, 7.26 );
setScaleKey( spep_0 + 209 + OFFSET_0, 1, 7.26, 7.26 );
setScaleKey( spep_0 + 210 + OFFSET_0, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 211 + OFFSET_0, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 212 + OFFSET_0, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 213 + OFFSET_0, 1, 5.49, 5.49 );
setScaleKey( spep_0 + 214 + OFFSET_0, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 215 + OFFSET_0, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 216 + OFFSET_0, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 217 + OFFSET_0, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 218 + OFFSET_0, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 219 + OFFSET_0, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 220 + OFFSET_0, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 221 + OFFSET_0, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 222 + OFFSET_0, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 227 + OFFSET_0, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 228 + OFFSET_0, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 229 + OFFSET_0, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 230 + OFFSET_0, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 231 + OFFSET_0, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 232 + OFFSET_0, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 233 + OFFSET_0, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 234 + OFFSET_0, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 235 + OFFSET_0, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 238 + OFFSET_0, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 271 + OFFSET_0, 1, 2.35, 2.35 );

setRotateKey( spep_0 + 208 + OFFSET_0, 1, 0 );
setRotateKey( spep_0 + 227 + OFFSET_0, 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_0, 1, -53.4 );
setRotateKey( spep_0 + 238 + OFFSET_0, 1, -53.4 );
setRotateKey( spep_0 + 271 + OFFSET_0, 1, -53.4 );

--敵の動き3
setDisp( spep_0 + 273 + OFFSET_0, 1, 1 );
setDisp( spep_0 + 314 + OFFSET_0, 1, 0 );

changeAnime( spep_0 + 273 + OFFSET_0, 1, 107 );
changeAnime( spep_0 + 296 + OFFSET_0, 1, 108 );

setMoveKey( spep_0 + 272 + OFFSET_0, 1, -223.9, 392 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_0, 1, -223.9, 392 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_0, 1, -205.3, 383.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_0, 1, -205.3, 383.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_0, 1, -186.6, 374.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_0, 1, -186.6, 374.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_0, 1, -167.9, 365.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_0, 1, -167.9, 365.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_0, 1, -149.3, 356.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_0, 1, -149.3, 356.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_0, 1, -130.6, 347.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_0, 1, -130.6, 347.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_0, 1, -111.9, 338.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_0, 1, -111.9, 338.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_0, 1, -93.2, 329.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_0, 1, -93.2, 329.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_0, 1, -74.5, 320.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_0, 1, -74.5, 320.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_0, 1, -55.8, 311.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_0, 1, -55.8, 311.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_0, 1, -37.1, 302.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_0, 1, -37.1, 302.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_0, 1, 7.5, 318.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_0, 1, 7.5, 318.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_0, 1, 152.4, 198.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_0, 1, 152.4, 198.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_0, 1, 129.9, 241.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_0, 1, 129.9, 241.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_0, 1, 135.4, 185.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_0, 1, 135.4, 185.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_0, 1, 171.4, 245.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_0, 1, 171.4, 245.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_0, 1, 205.7, 325.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_0, 1, 205.7, 325.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_0, 1, 261, 335.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_0, 1, 261, 335.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_0, 1, 292.3, 413.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_0, 1, 292.3, 413.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_0, 1, 373.5, 470.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_0, 1, 373.5, 470.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_0, 1, 427.8, 492.5 , 0 );

setScaleKey( spep_0 + 272 + OFFSET_0, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 273 + OFFSET_0, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 274 + OFFSET_0, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 275 + OFFSET_0, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 276 + OFFSET_0, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 277 + OFFSET_0, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 278 + OFFSET_0, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 279 + OFFSET_0, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 280 + OFFSET_0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 281 + OFFSET_0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 282 + OFFSET_0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 283 + OFFSET_0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 284 + OFFSET_0, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 285 + OFFSET_0, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 286 + OFFSET_0, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 287 + OFFSET_0, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 288 + OFFSET_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 289 + OFFSET_0, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 290 + OFFSET_0, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 291 + OFFSET_0, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 292 + OFFSET_0, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 293 + OFFSET_0, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 294 + OFFSET_0, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 295 + OFFSET_0, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 296 + OFFSET_0, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 302 + OFFSET_0, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 303 + OFFSET_0, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 304 + OFFSET_0, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 305 + OFFSET_0, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 306 + OFFSET_0, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 307 + OFFSET_0, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 308 + OFFSET_0, 1, 3, 3 );
setScaleKey( spep_0 + 309 + OFFSET_0, 1, 3, 3 );
setScaleKey( spep_0 + 310 + OFFSET_0, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 311 + OFFSET_0, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 314 + OFFSET_0, 1, 2.73, 2.73 );

setRotateKey( spep_0 + 272 + OFFSET_0, 1, -0.4 );
setRotateKey( spep_0 + 273 + OFFSET_0, 1, -0.4 );
setRotateKey( spep_0 + 274 + OFFSET_0, 1, -0.1 );
setRotateKey( spep_0 + 275 + OFFSET_0, 1, -0.1 );
setRotateKey( spep_0 + 276 + OFFSET_0, 1, 0.2 );
setRotateKey( spep_0 + 277 + OFFSET_0, 1, 0.2 );
setRotateKey( spep_0 + 278 + OFFSET_0, 1, 0.5 );
setRotateKey( spep_0 + 279 + OFFSET_0, 1, 0.5 );
setRotateKey( spep_0 + 280 + OFFSET_0, 1, 0.8 );
setRotateKey( spep_0 + 281 + OFFSET_0, 1, 0.8 );
setRotateKey( spep_0 + 282 + OFFSET_0, 1, 1.2 );
setRotateKey( spep_0 + 283 + OFFSET_0, 1, 1.2 );
setRotateKey( spep_0 + 284 + OFFSET_0, 1, 1.5 );
setRotateKey( spep_0 + 285 + OFFSET_0, 1, 1.5 );
setRotateKey( spep_0 + 286 + OFFSET_0, 1, 1.8 );
setRotateKey( spep_0 + 287 + OFFSET_0, 1, 1.8 );
setRotateKey( spep_0 + 288 + OFFSET_0, 1, 2.1 );
setRotateKey( spep_0 + 289 + OFFSET_0, 1, 2.1 );
setRotateKey( spep_0 + 290 + OFFSET_0, 1, 2.4 );
setRotateKey( spep_0 + 291 + OFFSET_0, 1, 2.4 );
setRotateKey( spep_0 + 292 + OFFSET_0, 1, 2.8 );
setRotateKey( spep_0 + 293 + OFFSET_0, 1, 2.8 );
setRotateKey( spep_0 + 294 + OFFSET_0, 1, 3.1 );
setRotateKey( spep_0 + 295 + OFFSET_0, 1, 3.1 );
setRotateKey( spep_0 + 296 + OFFSET_0, 1, -7.7 );
setRotateKey( spep_0 + 314 + OFFSET_0, 1, -7.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 156;  -- エンドフェイズのフレーム数を置き換える
      
    playSe( SP_dodge - 12, 1042);
    -- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
    
    pauseAll( SP_dodge, 67);
      
    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
      
    endPhase( SP_dodge+10);
      
    do return end
    else end
    
    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --

--パンチ
SE019 = playSeVer2( spep_0 + 160, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE019, 141 );
SE020 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 168, 1187, "", 0, 0, 0, -1);
--瞬間移動
SE022 = playSeVer2( spep_0 + 192, 1109, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 216, 1109, "", 0, 0, 0, -1);
--チョップ
SE024 = playSeVer2( spep_0 + 224, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 226, 1187, "",spep_0 + 342, 0, 4, -1);
--瞬間移動
SE026 = playSeVer2( spep_0 + 254, 1109, "", 0, 0, 0, -1);
--殴り飛ばす
SE027 = playSeVer2( spep_0 + 284, 1116, "",spep_0 + 318, 0, 16, -1);
SE028 = playSeVer2( spep_0 + 288, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 298, 1120, "",spep_0 + 342, 0, 6, -1);
SE030 = playSeVer2( spep_0 + 298, 1187, "",spep_0 + 342, 0, 6, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 334

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_c);

------------------------------------------------------
-- フィニッシュ ef_002 (278F)
------------------------------------------------------

MAX_FRAME_2 = 276;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002_re, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002_back = entryEffect( spep_2 + 0, SP_002_back_re, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002_back, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002_back, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002_back, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002_back, 255 );

-- ** 敵キャラクター ** --
OFFSET_2 = -1;

setDisp( spep_2 + 62 + OFFSET_2, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_2, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_2, 1, 8 );
changeAnime( spep_2 + 98 + OFFSET_2, 1, 6 );

setMoveKey( spep_2 + 62 + OFFSET_2, 1, -108.5, 239.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_2, 1, -108.5, 239.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_2, 1, -115.5, 242.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_2, 1, -115.5, 242.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_2, 1, -122.4, 245.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_2, 1, -122.4, 245.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_2, 1, -129.4, 248 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_2, 1, -129.4, 248 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_2, 1, -136.3, 250.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_2, 1, -136.3, 250.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_2, 1, -143.3, 253.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_2, 1, -143.3, 253.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_2, 1, -150.2, 256.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_2, 1, -150.2, 256.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_2, 1, -157.2, 259.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_2, 1, -157.2, 259.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_2, 1, -164.2, 262.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_2, 1, -164.2, 262.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_2, 1, -171.1, 264.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_2, 1, -171.1, 264.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_2, 1, -178.1, 267.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_2, 1, -178.1, 267.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_2, 1, -29, 73 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_2, 1, -29, 73 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_2, 1, -43.2, 78.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_2, 1, -43.2, 78.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_2, 1, -57.4, 83.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_2, 1, -57.4, 83.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_2, 1, -71.6, 88.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_2, 1, -71.6, 88.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_2, 1, -85.7, 94.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_2, 1, -85.7, 94.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_2, 1, -99.9, 99.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_2, 1, -99.9, 99.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_2, 1, -121.5, 108 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_2, 1, -121.5, 108 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_2, 1, -129, 110.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_2, 1, -129, 110.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_2, 1, -151.9, 119 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_2, 1, -151.9, 119 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_2, 1, -172.1, 126.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_2, 1, -172.1, 126.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_2, 1, -189.6, 133.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_2, 1, -189.6, 133.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_2, 1, -204.4, 138.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_2, 1, -204.4, 138.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_2, 1, -216.5, 143.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_2, 1, -216.5, 143.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_2, 1, -226, 146.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_2, 1, -226, 146.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_2, 1, -232.7, 149.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_2, 1, -232.7, 149.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_2, 1, -236.7, 150.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_2, 1, -236.7, 150.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_2, 1, -238.1, 151.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_2, 1, -238.1, 151.4 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_2, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 63 + OFFSET_2, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 64 + OFFSET_2, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 65 + OFFSET_2, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 66 + OFFSET_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 67 + OFFSET_2, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 68 + OFFSET_2, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 69 + OFFSET_2, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 70 + OFFSET_2, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 71 + OFFSET_2, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 72 + OFFSET_2, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 73 + OFFSET_2, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 74 + OFFSET_2, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 75 + OFFSET_2, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 76 + OFFSET_2, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 77 + OFFSET_2, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 78 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 79 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 80 + OFFSET_2, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 81 + OFFSET_2, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 82 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 83 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 84 + OFFSET_2, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 100 + OFFSET_2, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 276 + OFFSET_2, 1, 1.75, 1.75 );

setRotateKey( spep_2 + 62 + OFFSET_2, 1, 10.7 );
setRotateKey( spep_2 + 63 + OFFSET_2, 1, 10.7 );
setRotateKey( spep_2 + 64 + OFFSET_2, 1, 10.3 );
setRotateKey( spep_2 + 65 + OFFSET_2, 1, 10.3 );
setRotateKey( spep_2 + 66 + OFFSET_2, 1, 9.8 );
setRotateKey( spep_2 + 67 + OFFSET_2, 1, 9.8 );
setRotateKey( spep_2 + 68 + OFFSET_2, 1, 9.4 );
setRotateKey( spep_2 + 69 + OFFSET_2, 1, 9.4 );
setRotateKey( spep_2 + 70 + OFFSET_2, 1, 9 );
setRotateKey( spep_2 + 71 + OFFSET_2, 1, 9 );
setRotateKey( spep_2 + 72 + OFFSET_2, 1, 8.6 );
setRotateKey( spep_2 + 73 + OFFSET_2, 1, 8.6 );
setRotateKey( spep_2 + 74 + OFFSET_2, 1, 8.2 );
setRotateKey( spep_2 + 75 + OFFSET_2, 1, 8.2 );
setRotateKey( spep_2 + 76 + OFFSET_2, 1, 7.7 );
setRotateKey( spep_2 + 77 + OFFSET_2, 1, 7.7 );
setRotateKey( spep_2 + 78 + OFFSET_2, 1, 7.3 );
setRotateKey( spep_2 + 79 + OFFSET_2, 1, 7.3 );
setRotateKey( spep_2 + 80 + OFFSET_2, 1, 6.9 );
setRotateKey( spep_2 + 81 + OFFSET_2, 1, 6.9 );
setRotateKey( spep_2 + 82 + OFFSET_2, 1, 6.5 );
setRotateKey( spep_2 + 83 + OFFSET_2, 1, 6.5 );
setRotateKey( spep_2 + 84 + OFFSET_2, 1, 8.4 );
setRotateKey( spep_2 + 85 + OFFSET_2, 1, 8.4 );
setRotateKey( spep_2 + 86 + OFFSET_2, 1, 8.5 );
setRotateKey( spep_2 + 94 + OFFSET_2, 1, 8.5 );
setRotateKey( spep_2 + 95 + OFFSET_2, 1, 8.5 );
setRotateKey( spep_2 + 96 + OFFSET_2, 1, 8.4 );
setRotateKey( spep_2 + 97 + OFFSET_2, 1, 8.4 );
setRotateKey( spep_2 + 98 + OFFSET_2, 1, 37.7 );
setRotateKey( spep_2 + 100 + OFFSET_2, 1, 37.7 );
setRotateKey( spep_2 + 276 + OFFSET_2, 1, 37.7 );

setBlendColor( spep_2 + 96 + OFFSET_2, 1, 0, 0, 0, 0, 0 );
setBlendColor( spep_2 + 98 + OFFSET_2, 1, 0, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 116 + OFFSET_2, 1, 0, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 118 + OFFSET_2, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --

--気円斬投げる
SE032 = playSeVer2( spep_2 + 26, 1242, "",spep_2 + 100, 18, 8, -1);
setStartTimeMs( SE032,  1233 );
--振りかぶる
SE033 = playSeVer2( spep_2 + 8, 1003, "", 0, 0, 0, -1);
--気円斬溜め
SE034 = playSeVer2( spep_2 + 8, 1240, "",spep_2 + 66, 0, 30, -1);
--気円斬投げる
SE035 = playSeVer2( spep_2 + 26, 1117, "",spep_2 + 102, 0, 10, -1);
SE036 = playSeVer2( spep_2 + 26, 1193, "",spep_2 + 84, 0, 32, -1);
SE037 = playSeVer2( spep_2 + 26, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE037, 65 );
SE038 = playSeVer2( spep_2 + 32, 1179, "",spep_2 + 100, 0, 8, -1);
SE039 = playSeVer2( spep_2 + 48, 1241, "",spep_2 + 100, 0, 8, 0.6);
--敵ヒット
SE040 = playSeVer2( spep_2 + 92, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE040, 211 );
SE041 = playSeVer2( spep_2 + 92, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE041, 55 );
SE042 = playSeVer2( spep_2 + 92, 1142, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 96, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE043, 191 );
SE044 = playSeVer2( spep_2 + 98, 1179, "",spep_2 + 146, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 98, SE044, 100 );
--爆発
SE045 = playSeVer2( spep_2 + 122, 1068, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 122, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 170 );
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 278

end
