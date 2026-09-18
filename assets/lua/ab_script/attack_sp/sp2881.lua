--1031430:LR_ゴクウブラック(超サイヤ人ロゼ)+ザマス_超必殺技：ブラックかめはめ波
--sp_effect_a1_00490
--sp2881

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163861;  -- かめはめ波構え動作〜横アングル ef_001
SP_01b = 163862;  -- かめはめ波構え動作〜横アングル ef_001b
SP_02 = 163863;  -- かめはめ波発射〜フィニッシュ ef_002
SP_02b = 163864;  -- かめはめ波発射〜フィニッシュ ef_002b


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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- かめはめ波構え動作〜横アングル
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- かめはめ波構え動作〜横アングル(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- かめはめ波構え動作〜横アングル(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -75, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 126 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, 234.1, 107 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 234.1, 107 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 236.1, 104.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 236.1, 104.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 232.1, 109 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 232.1, 109 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 243.7, 104.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 243.7, 104.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 247.7, 102.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 247.7, 102.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 256.5, 98.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 256.5, 98.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 266.5, 92.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 266.5, 92.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 264.5, 90.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 264.5, 90.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 275.7, 91.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 275.7, 91.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 284.1, 88.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 284.1, 88.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 286.1, 84.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 286.1, 84.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 284.1, 88.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 284.1, 88.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 289.7, 89.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 289.7, 89.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 291.7, 85.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 291.7, 85.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 300.5, 78.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 300.5, 78.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 298.5, 82.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 298.5, 82.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 306.5, 84.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 306.5, 84.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 302.5, 76.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 302.5, 76.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 306.5, 82.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 306.5, 82.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 311.7, 80.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 311.7, 80.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 311.7, 74.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 311.7, 74.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 307.7, 78.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 307.7, 78.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 314.1, 77 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 314.1, 77 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 316.1, 72.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 316.1, 72.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 314.1, 77 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 314.1, 77 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 310, 79 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 310, 79 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 314.1, 77 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 314.1, 77 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 310, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 51 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1173, "",spep_0 + 122, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 316, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 69 );

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 92, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE005, 120 );
SE006 = playSeVer2( spep_0 + 92, 1210, "",spep_0 + 322, 0, 34, -1);
setPitch( spep_0 + 92, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );
SE007 = playSeVer2( spep_0 + 92, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE007, 130 );
SE008 = playSeVer2( spep_0 + 94, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 141 );
setStartTimeMs( SE009,  3833 );
setPitch( spep_0 + 372, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );
SE010 = playSeVer2( spep_0 + 200, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE010, 83 );
SE011 = playSeVer2( spep_0 + 234, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE011, 193 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --288F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE009 = playSeVer2( spep_1 + 84, 1210, "",spep_1 + 218, 2, 26, -1);
setStartTimeMs( SE009, 3833);
setPitch( spep_1 + 84, SE009, -600 );
setSeVolumeByWorkId( spep_1 + 84, SE009, 120 );
SE013 = playSeVer2( spep_1 + 84, 1176, "",spep_1 + 224, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 84, SE013, 80 );

-------------------------------------------------
-- かめはめ波発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 626;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 221.5, -142.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 221.5, -142.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 216.3, -147.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 216.3, -147.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 206.2, -152.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 206.2, -152.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 211.4, -154 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 211.4, -154 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 195.6, -157.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 195.6, -157.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 198.1, -168.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 198.1, -168.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 182.5, -169.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 182.5, -169.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 191.6, -178.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 191.6, -178.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 180.4, -169.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 180.4, -169.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 177.1, -186.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 177.1, -186.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 168.7, -178.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 168.7, -178.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 170.1, -189.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 170.1, -189.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 152.8, -201.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 152.8, -201.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 160.2, -178.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 160.2, -178.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 145, -223.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145, -223.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 136.9, -200.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 136.9, -200.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 111.9, -277.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 111.9, -277.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 105.1, -258.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 105.1, -258.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 110.9, -250.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 110.9, -250.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 79.6, -273.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 79.6, -273.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 99.7, -241.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 99.7, -241.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 106.7, -274 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 106.7, -274 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 103.6, -244.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 103.6, -244.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 113.2, -274.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 113.2, -274.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 92.7, -254.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 92.7, -254.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 108.6, -260 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 108.6, -260 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 90.9, -283.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 90.9, -283.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 116.7, -217.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 116.7, -217.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 96.3, -309 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 96.3, -309 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 101.7, -214.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 101.7, -214.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 96.1, -306.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 96.1, -306.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 101.7, -260.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 101.7, -260.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 101.5, -261.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 101.5, -261.1 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 5.35, 5.35 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -73 );

setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.6, 0.11, 0.48, 0.7 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 3, 0.6, 0.11, 0.48, 0.8 );
setBlendColor( spep_2 + 250 + OFFSET_X, 1, 3, 0.6, 0.11, 0.48, 1 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--顔アップ
SE014 = playSeVer2( spep_2 + 34, 1116, "",spep_2 + 84, 0, 28, -1);
SE015 = playSeVer2( spep_2 + 46, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE015, 119 );
setStartTimeMs( SE015,  67 );

--かめはめ波発射
SE016 = playSeVer2( spep_2 + 100, 1213, "",spep_2 + 358, 0, 122, -1);
setSeVolumeByWorkId( spep_2 + 100, SE016, 67 );
SE017 = playSeVer2( spep_2 + 100, 1423, "",spep_2 + 364, 0, 106, -1);
setSeVolumeByWorkId( spep_2 + 100, SE017, 116 );
SE018 = playSeVer2( spep_2 + 100, 1304, "",spep_2 + 274, 0, 32, -1);
setPitch( spep_2 + 106, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );

--気弾飛んでいく
SE019 = playSeVer2( spep_2 + 206, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--爆発
SE020 = playSeVer2( spep_2 + 246, 1159, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 278, 1067, "", 0, 0, 0, -1);

--風圧音
SE022 = playSeVer2( spep_2 + 296, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE022, 68 );

--炎音
SE023 = playSeVer2( spep_2 + 306, 1268, "", 0, 0, 0, -1);

--画面遷移
SE024 = playSeVer2( spep_2 + 486, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 512); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 626F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- かめはめ波構え動作〜横アングル
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- かめはめ波構え動作〜横アングル(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- かめはめ波構え動作〜横アングル(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -75, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 126 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, -234.1, 107 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -234.1, 107 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -236.1, 104.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -236.1, 104.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -232.1, 109 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -232.1, 109 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -243.7, 104.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -243.7, 104.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -247.7, 102.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -247.7, 102.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -256.5, 98.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -256.5, 98.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -266.5, 92.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -266.5, 92.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -264.5, 90.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -264.5, 90.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -275.7, 91.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -275.7, 91.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -284.1, 88.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -284.1, 88.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -286.1, 84.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -286.1, 84.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -284.1, 88.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -284.1, 88.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -289.7, 89.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -289.7, 89.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -291.7, 85.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -291.7, 85.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -300.5, 78.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -300.5, 78.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -298.5, 82.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -298.5, 82.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -306.5, 84.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -306.5, 84.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -302.5, 76.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -302.5, 76.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -306.5, 82.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -306.5, 82.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -311.7, 80.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -311.7, 80.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -311.7, 74.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -311.7, 74.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -307.7, 78.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -307.7, 78.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -314.1, 77 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -314.1, 77 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -316.1, 72.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -316.1, 72.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -314.1, 77 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -314.1, 77 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -310, 79 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -310, 79 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -314.1, 77 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -314.1, 77 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 310, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 51 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1173, "",spep_0 + 122, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 316, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 69 );

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 92, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE005, 120 );
SE006 = playSeVer2( spep_0 + 92, 1210, "",spep_0 + 322, 0, 34, -1);
setPitch( spep_0 + 92, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );
SE007 = playSeVer2( spep_0 + 92, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE007, 130 );
SE008 = playSeVer2( spep_0 + 94, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 141 );
setStartTimeMs( SE009,  3833 );
setPitch( spep_0 + 372, SE009, -600 );
setTimeStretch( SE009, 0.6, 30, 4 );
SE010 = playSeVer2( spep_0 + 200, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE010, 83 );
SE011 = playSeVer2( spep_0 + 234, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE011, 193 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --288F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE009 = playSeVer2( spep_1 + 84, 1210, "",spep_1 + 218, 2, 26, -1);
setStartTimeMs( SE009, 3833);
setPitch( spep_1 + 84, SE009, -600 );
setSeVolumeByWorkId( spep_1 + 84, SE009, 120 );
SE013 = playSeVer2( spep_1 + 84, 1176, "",spep_1 + 224, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 84, SE013, 80 );

-------------------------------------------------
-- かめはめ波発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 626;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, -221.5, -142.8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -221.5, -142.8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -216.3, -147.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -216.3, -147.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -206.2, -152.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -206.2, -152.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -211.4, -154 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -211.4, -154 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -195.6, -157.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -195.6, -157.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -198.1, -168.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -198.1, -168.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -182.5, -169.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -182.5, -169.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -191.6, -178.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -191.6, -178.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -180.4, -169.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -180.4, -169.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -177.1, -186.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -177.1, -186.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -168.7, -178.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -168.7, -178.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -170.1, -189.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -170.1, -189.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -152.8, -201.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -152.8, -201.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -160.2, -178.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -160.2, -178.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -145, -223.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -145, -223.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -136.9, -200.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -136.9, -200.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -111.9, -277.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -111.9, -277.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -105.1, -258.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -105.1, -258.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -110.9, -250.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -110.9, -250.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -79.6, -273.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -79.6, -273.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -99.7, -241.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -99.7, -241.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -106.7, -274 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -106.7, -274 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -103.6, -244.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -103.6, -244.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -113.2, -274.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -113.2, -274.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -92.7, -254.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -92.7, -254.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -108.6, -260 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -108.6, -260 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -90.9, -283.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -90.9, -283.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -116.7, -217.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -116.7, -217.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -96.3, -309 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -96.3, -309 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -101.7, -214.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -101.7, -214.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -96.1, -306.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -96.1, -306.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -101.7, -260.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -101.7, -260.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -101.5, -261.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -101.5, -261.1 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 5.35, 5.35 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 72.9 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 72.9 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 73 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 73 );

setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.6, 0.11, 0.48, 0.7 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 3, 0.6, 0.11, 0.48, 0.8 );
setBlendColor( spep_2 + 250 + OFFSET_X, 1, 3, 0.6, 0.11, 0.48, 1 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--顔アップ
SE014 = playSeVer2( spep_2 + 34, 1116, "",spep_2 + 84, 0, 28, -1);
SE015 = playSeVer2( spep_2 + 46, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE015, 119 );
setStartTimeMs( SE015,  67 );

--かめはめ波発射
SE016 = playSeVer2( spep_2 + 100, 1213, "",spep_2 + 358, 0, 122, -1);
setSeVolumeByWorkId( spep_2 + 100, SE016, 67 );
SE017 = playSeVer2( spep_2 + 100, 1423, "",spep_2 + 364, 0, 106, -1);
setSeVolumeByWorkId( spep_2 + 100, SE017, 116 );
SE018 = playSeVer2( spep_2 + 100, 1304, "",spep_2 + 274, 0, 32, -1);
setPitch( spep_2 + 106, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );

--気弾飛んでいく
SE019 = playSeVer2( spep_2 + 206, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--爆発
SE020 = playSeVer2( spep_2 + 246, 1159, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 278, 1067, "", 0, 0, 0, -1);

--風圧音
SE022 = playSeVer2( spep_2 + 296, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE022, 68 );

--炎音
SE023 = playSeVer2( spep_2 + 306, 1268, "", 0, 0, 0, -1);

--画面遷移
SE024 = playSeVer2( spep_2 + 486, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 512); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 626F

end
