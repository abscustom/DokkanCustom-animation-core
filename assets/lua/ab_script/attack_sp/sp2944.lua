--1032410:UR_界王神(ミニ)(DAIMA)_必殺技
--sp_effect_b1_00350
--sp2944

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164314; --開幕セリフカットイン→カードカットイン ef_001
SP_02  = 164315; --カードカットイン→フィニッシュ ef_002
SP_02b  = 164316; --カードカットイン→フィニッシュ_背面 ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then  
  if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
    spep_2 = 88 + 94;
    skipFrame(0, spep_2 + 164 -1); -- スキップ先フレーム指定
    --ジャンプ
    SE015 = playSeVer2( spep_2 + 164 + 2, 1116, "", 0, 0, 0, 0.5);
    setStartTimeMs( SE015, 400);
  end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 音 ** --
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 112, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 472f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE005 = playSeVer2( spep_1 + 86, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 86, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 86, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE007, 78 );

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 322;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_2 + 0, base_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_2 + 0, base_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_0, base_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
y = -500;
setDisp(spep_2 + 86 + OFFSET_X, 1, 1);
setDisp(spep_2 + 128 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, 234.2, -6.3+y, 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 234.2, -6.3+y , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 234.1, -6.6+y , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 234.1, -6.6+y , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 233.9, -7.6+y , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 233.9, -7.6+y , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 233.5, -9.1+y , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 233.5, -9.1+y , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 232.9, -11.4+y , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 232.9, -11.4+y , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 232.2, -14.2+y , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 232.2, -14.2+y , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 231.4, -17.7+y , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 231.4, -17.7+y , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 230.3, -21.8+y , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 230.3, -21.8+y , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 229.1, -26.5+y , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 229.1, -26.5+y , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 227.8, -31.9+y , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 227.8, -31.9+y , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 226.3, -37.9+y , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 226.3, -37.9+y , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 224.6, -44.6+y , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 224.6, -44.6+y , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 222.8, -51.9+y , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 222.8, -51.9+y , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 220.8, -59.8+y , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 220.8, -59.8+y , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 218.7, -68.3+y , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 218.7, -68.3+y , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 176.8, -192.4+y , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 176.8, -192.4+y , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 133, -321.8+y , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 133, -321.8+y , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 87.4, -456.7+y , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 87.4, -456.7+y , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 40, -596.9+y , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 40, -596.9+y , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -9.2, -742.5+y , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -9.2, -742.5+y , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 7.2, 7.2 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 7.2, 7.2 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -31 );


--敵の動き2
setDisp(spep_2 + 198 + OFFSET_X, 1, 1);
--setDisp(spep_2 + 324 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 198 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 198 + OFFSET_X, 1, 97.9, -171.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 97.9, -171.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 100.9, -179.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 100.9, -179.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109.9, -189.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109.9, -189.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 114.1, -196.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 114.1, -196.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 92.4, -177.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 92.4, -177.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 112.7, -190.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 112.7, -190.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 107.9, -199.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 107.9, -199.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 95.2, -184.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 95.2, -184.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 108.4, -194.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 108.4, -194.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 102.6, -200.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 102.6, -200.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 96.6, -189.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 96.6, -189.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 96.8, -190.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 96.8, -190.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 105.8, -194.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 105.8, -194.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 106, -195.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 106, -195.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 107, -202.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 107, -202.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 100.2, -193.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 100.2, -193.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 103.2, -201.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 103.2, -201.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 103.3, -202 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 103.3, -202 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 107.3, -199 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 107.3, -199 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 104.4, -203.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 104.4, -203.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 98.4, -194.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 98.4, -194.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 98.6, -195.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 98.6, -195.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 106.6, -200.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 106.6, -200.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 108.7, -204.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 108.7, -204.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 104.7, -201.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 104.7, -201.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 104.7, -201.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 104.7, -201.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 106.7, -204.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 106.7, -204.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 106.9, -202.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 106.9, -202.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 102.9, -206.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 102.9, -206.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 102.9, -206.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 102.9, -206.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 99.9, -199.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 99.9, -199.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 103.9, -201.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 103.9, -201.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 106.9, -205.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 106.9, -205.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 106.9, -206 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 106.9, -206 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 102.9, -203 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 102.9, -203 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 104, -206 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 104, -206 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 198 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -26 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);

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
--手刀
SE008 = playSeVer2( spep_2 + 46, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE008, 129 );
SE009 = playSeVer2( spep_2 + 56, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 56, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 62, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_2 + 82, 1109, "", 0, 0, 0, -1);

--着地
SE013 = playSeVer2( spep_2 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE013, 182 );

--ジャンプ
SE014 = playSeVer2( spep_2 + 112, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE014, 73 );
SE015 = playSeVer2( spep_2 + 112, 1116, "", 0, 0, 0, -1);

--ラスト蹴り
SE016 = playSeVer2( spep_2 + 176, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 186, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 186, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE018, 66 );


-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 198); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 322f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
--[[
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 音 ** --
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 112, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 472f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE005 = playSeVer2( spep_1 + 86, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 86, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 86, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE007, 78 );

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 322;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_0, base_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_2 + 0, base_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_0, base_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_2 + 0, base_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_0, base_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
y = -500
setDisp(spep_2 + 86 + OFFSET_X, 1, 1);
setDisp(spep_2 + 128 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 86 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, -234.2, -6.3+y , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -234.2, -6.3+y , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -234.1, -6.6+y , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -234.1, -6.6+y , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -233.9, -7.6+y , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -233.9, -7.6+y , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -233.5, -9.1+y , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -233.5, -9.1+y , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -232.9, -11.4+y , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -232.9, -11.4+y , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -232.2, -14.2+y , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -232.2, -14.2+y , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -231.4, -17.7+y , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -231.4, -17.7+y , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -230.3, -21.8+y , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -230.3, -21.8+y , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -229.1, -26.5+y , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -229.1, -26.5+y , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -227.8, -31.9+y , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -227.8, -31.9+y , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -226.3, -37.9+y , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -226.3, -37.9+y , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -224.6, -44.6+y , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -224.6, -44.6+y , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -222.8, -51.9+y , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -222.8, -51.9+y , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -220.8, -59.8+y , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -220.8, -59.8+y , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -218.7, -68.3+y , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -218.7, -68.3+y , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -176.8, -192.4+y , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -176.8, -192.4+y , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -133, -321.8+y , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -133, -321.8+y , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -87.4, -456.7+y , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -87.4, -456.7+y , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -40, -596.9+y , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -40, -596.9+y , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 9.2, -742.5+y , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 9.2, -742.5+y , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 6.77, 6.77 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 7.2, 7.2 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 7.2, 7.2 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 31 );


--敵の動き2
setDisp(spep_2 + 198 + OFFSET_X, 1, 1);
--setDisp(spep_2 + 324 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 198 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 198 + OFFSET_X, 1, -97.9, -171.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -97.9, -171.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -100.9, -179.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -100.9, -179.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -109.9, -189.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -109.9, -189.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -114.1, -196.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -114.1, -196.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -92.4, -177.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -92.4, -177.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -112.7, -190.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -112.7, -190.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -107.9, -199.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -107.9, -199.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -95.2, -184.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -95.2, -184.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -108.4, -194.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -108.4, -194.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -102.6, -200.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -102.6, -200.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -96.6, -189.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -96.6, -189.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -96.8, -190.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -96.8, -190.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -105.8, -194.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -105.8, -194.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -106, -195.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -106, -195.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -107, -202.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -107, -202.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -100.2, -193.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -100.2, -193.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -103.2, -201.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -103.2, -201.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -103.3, -202 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -103.3, -202 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -107.3, -199 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -107.3, -199 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -104.4, -203.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -104.4, -203.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -98.4, -194.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -98.4, -194.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -98.6, -195.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -98.6, -195.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -106.6, -200.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -106.6, -200.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -108.7, -204.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -108.7, -204.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -104.7, -201.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -104.7, -201.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -104.7, -201.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -104.7, -201.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -106.7, -204.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -106.7, -204.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -106.9, -202.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -106.9, -202.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -102.9, -206.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -102.9, -206.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -102.9, -206.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -102.9, -206.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -99.9, -199.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -99.9, -199.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -103.9, -201.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -103.9, -201.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -106.9, -205.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -106.9, -205.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -106.9, -206 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -106.9, -206 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -102.9, -203 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -102.9, -203 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -104, -206 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -104, -206 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 198 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 26.5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 26.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 26 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);

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
--手刀
SE008 = playSeVer2( spep_2 + 46, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE008, 129 );
SE009 = playSeVer2( spep_2 + 56, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 56, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 62, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_2 + 82, 1109, "", 0, 0, 0, -1);

--着地
SE013 = playSeVer2( spep_2 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE013, 182 );

--ジャンプ
SE014 = playSeVer2( spep_2 + 112, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE014, 73 );
SE015 = playSeVer2( spep_2 + 112, 1116, "", 0, 0, 0, -1);

--ラスト蹴り
SE016 = playSeVer2( spep_2 + 176, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 186, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 186, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE018, 66 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 198); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 322f

end