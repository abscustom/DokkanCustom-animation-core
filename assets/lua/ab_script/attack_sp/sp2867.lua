--1031360:UR_餃子_必殺技：どどん波
--sp_effect_b4_00383
--sp2867

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163840; --開幕～カットイン ef_001
SP_01b = 163841 --開幕～カットイン ef_001_b
SP_02 = 163843 --どどん波～フィニッシュまで ef_002
SP_02b = 163844 --どどん波～フィニッシュまで ef_002_b

--エフェクト(敵)
SP_01r  = 163842; --開幕～カットイン ef_001_r

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 356;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットイン ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～カットイン ef_001_b
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
spep_x = spep_0 + 34;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-120, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -120, 515.5 , 0 );
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
setDisp( spep_0 + 240 + OFFSET_X, 1, 1);
setDisp( spep_0 + 302 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 240 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 228.3, -234.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 228.3, -234.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 228, -234.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 228, -234.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 227.6, -235 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 227.6, -235 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 227.3, -235.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 227.3, -235.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 227, -235.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 227, -235.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 226.6, -235.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 226.6, -235.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 226.3, -236 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 226.3, -236 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 225.9, -236.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 225.9, -236.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 225.6, -236.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 225.6, -236.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 225.3, -236.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 225.3, -236.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 224.9, -237 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 224.9, -237 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 224.6, -237.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 224.6, -237.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 224.2, -237.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 224.2, -237.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 223.9, -237.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 223.9, -237.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 223.6, -238.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 223.6, -238.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 223.2, -238.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 223.2, -238.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 222.9, -238.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 222.9, -238.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 222.5, -238.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 222.5, -238.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 222.2, -239.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 222.2, -239.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 221.9, -239.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 221.9, -239.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 221.5, -239.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 221.5, -239.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 221.2, -239.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 221.2, -239.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 220.8, -240.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 220.8, -240.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 220.5, -240.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 220.5, -240.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 220.2, -240.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 220.2, -240.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 219.8, -240.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 219.8, -240.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 219.5, -241.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 219.5, -241.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 219.1, -241.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 219.1, -241.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 218.8, -241.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 218.8, -241.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 218.5, -241.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 218.5, -241.9 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 376, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--指出す
SE003 = playSeVer2( spep_0 + 126, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE003, 130 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 152, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE004, 148 );
setPitch( spep_0 + 152, SE004, 600 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 154, 1273, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 154, 1221, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 154, 1038, "",spep_0 + 218, 0, 32, -1);
SE008 = playSeVer2( spep_0 + 166, 1243, "",spep_0 + 360, 0, 14, -1);
SE009 = playSeVer2( spep_0 + 166, 1396, "",spep_0 + 360, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 50 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 250; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--画面遷移
SE010 = playSeVer2( spep_0 + 290, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE010, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 356f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 86, 1243, "",spep_1 + 178, 0, 16, -1);
SE013 = playSeVer2( spep_1 + 86, 1396, "",spep_1 + 178, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 86, SE013, 50 );

-------------------------------------------------
-- どどん波～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 286;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- どどん波～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- どどん波～フィニッシュまで(ef_002_b)
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
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, 6.2, -15.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 6.2, -15.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 21.4, -15.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 21.4, -15.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29, -19.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 29, -19.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 82.3, -60.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 82.3, -60.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 79.8, -38.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 79.8, -38.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 126.3, -27.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 126.3, -27.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 126.3, -2.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 126.3, -2.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 179, -6.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 179, -6.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 179, 18.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 179, 18.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 278.2, 34.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 278.2, 34.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 278.2, 59.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 278.2, 59.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 355.7, 55.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 355.7, 55.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 355.7, 80.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 355.7, 80.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 448.7, 95.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 448.7, 95.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 448.7, 121.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 448.7, 121.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 603.7, 132.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 603.7, 132.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 603.7, 152.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 603.7, 152.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 975.7, 212.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 975.7, 212.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 975.7, 236.6 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 7.5 );

-- ** 音 ** --
--腕おろす
SE014 = playSeVer2( spep_2 + 18, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE014, 82 );

--気弾発射
SE015 = playSeVer2( spep_2 + 56, 1335, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 56, 1312, "",spep_2 + 156, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 56, 1177, "",spep_2 + 156, 0, 16, -1);
SE018 = playSeVer2( spep_2 + 72, 1409, "",spep_2 + 156, 0, 18, -1);
setPitch( spep_2 + 72, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_2 + 82, 1390, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_2 + 138, 1024, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 152, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 174 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  288f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 356;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕～カットイン ef_001_r
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～カットイン ef_001_b
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
spep_x = spep_0 + 34;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-120, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -120, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 240 + OFFSET_X, 1, 1);
setDisp( spep_0 + 302 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 240 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 228.3, -234.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 228.3, -234.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 228, -234.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 228, -234.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 227.6, -235 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 227.6, -235 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 227.3, -235.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 227.3, -235.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 227, -235.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 227, -235.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 226.6, -235.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 226.6, -235.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 226.3, -236 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 226.3, -236 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 225.9, -236.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 225.9, -236.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 225.6, -236.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 225.6, -236.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 225.3, -236.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 225.3, -236.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 224.9, -237 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 224.9, -237 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 224.6, -237.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 224.6, -237.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 224.2, -237.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 224.2, -237.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 223.9, -237.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 223.9, -237.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 223.6, -238.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 223.6, -238.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 223.2, -238.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 223.2, -238.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 222.9, -238.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 222.9, -238.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 222.5, -238.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 222.5, -238.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 222.2, -239.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 222.2, -239.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 221.9, -239.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 221.9, -239.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 221.5, -239.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 221.5, -239.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 221.2, -239.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 221.2, -239.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 220.8, -240.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 220.8, -240.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 220.5, -240.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 220.5, -240.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 220.2, -240.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 220.2, -240.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 219.8, -240.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 219.8, -240.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 219.5, -241.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 219.5, -241.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 219.1, -241.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 219.1, -241.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 218.8, -241.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 218.8, -241.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 218.5, -241.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 218.5, -241.9 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 376, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--指出す
SE003 = playSeVer2( spep_0 + 126, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE003, 130 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 152, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE004, 148 );
setPitch( spep_0 + 152, SE004, 600 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 154, 1273, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 154, 1221, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 154, 1038, "",spep_0 + 218, 0, 32, -1);
SE008 = playSeVer2( spep_0 + 166, 1243, "",spep_0 + 360, 0, 14, -1);
SE009 = playSeVer2( spep_0 + 166, 1396, "",spep_0 + 360, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 50 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 250; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--画面遷移
SE010 = playSeVer2( spep_0 + 290, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE010, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 356f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 86, 1243, "",spep_1 + 178, 0, 16, -1);
SE013 = playSeVer2( spep_1 + 86, 1396, "",spep_1 + 178, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 86, SE013, 50 );

-------------------------------------------------
-- どどん波～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 286;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- どどん波～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- どどん波～フィニッシュまで ef_002_b
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
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, 6.2, -15.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 6.2, -15.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 21.4, -15.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 21.4, -15.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29, -19.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 29, -19.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 82.3, -60.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 82.3, -60.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 79.8, -38.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 79.8, -38.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 126.3, -27.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 126.3, -27.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 126.3, -2.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 126.3, -2.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 179, -6.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 179, -6.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 179, 18.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 179, 18.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 278.2, 34.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 278.2, 34.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 278.2, 59.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 278.2, 59.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 355.7, 55.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 355.7, 55.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 355.7, 80.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 355.7, 80.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 448.7, 95.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 448.7, 95.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 448.7, 121.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 448.7, 121.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 603.7, 132.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 603.7, 132.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 603.7, 152.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 603.7, 152.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 975.7, 212.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 975.7, 212.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 975.7, 236.6 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -43 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 7.5 );

-- ** 音 ** --
--腕おろす
SE014 = playSeVer2( spep_2 + 18, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE014, 82 );

--気弾発射
SE015 = playSeVer2( spep_2 + 56, 1335, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 56, 1312, "",spep_2 + 156, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 56, 1177, "",spep_2 + 156, 0, 16, -1);
SE018 = playSeVer2( spep_2 + 72, 1409, "",spep_2 + 156, 0, 18, -1);
setPitch( spep_2 + 72, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_2 + 82, 1390, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_2 + 138, 1024, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 152, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 174 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  288f
end
