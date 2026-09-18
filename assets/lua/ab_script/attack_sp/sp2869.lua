--1031280:LR_天津飯_超必殺技：排球拳
--sp_effect_b1_00330
--sp2869

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163855;  --ef_001 開始 ～ カード前まで
SP_02  = 163857;  --ef_002 カード ～ フィニッシュまで 前面
SP_02b = 163858;  --ef_002b カード ～ フィニッシュまで 背面

--エフェクト(敵)
SP_01r  = 163856;  --ef_001r 開始 ～ カード前まで 敵側
SP_02r  = 163859;  --ef_002r カード ～ フィニッシュまで 前面 敵側
SP_02br = 163860;  --ef_002br カード ～ フィニッシュまで 背面 敵側


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
-- 開始 ～ カード前まで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開始 ～ カード前まで(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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

-- ** 音 ** --
--集中線
SE002 = playSeVer2( spep_0 + 16, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 76 );
SE003 = playSeVer2( spep_0 + 16, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 92, 1436, "",spep_0 + 194, 6, 16, -1);
setStartTimeMs( SE004,  700 );
SE005 = playSeVer2( spep_0 + 94, 1434, "",spep_0 + 192, 6, 18, -1);
setStartTimeMs( SE005,  267 );
SE006 = playSeVer2( spep_0 + 108, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 81 );	
SE007 = playSeVer2( spep_0 + 108, 31, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE007, 67 );	

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --172f

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

   spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, housha, 0 );
    setEffRotateKey( spep_c + 90, housha, 0 );
    setEffAlphaKey( spep_c + 0, housha, 255 );
    setEffAlphaKey( spep_c + 90, housha, 255 );

    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_c + 0, shuchusen, 90, 20 );
    setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( spep_c + 0, shuchusen, 0 );
    setEffRotateKey( spep_c + 90, shuchusen, 0 );
    setEffAlphaKey( spep_c + 0, shuchusen, 255 );
    setEffAlphaKey( spep_c + 90, shuchusen, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff2 = entryEffectLife( spep_c + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_c + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_c + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, kaminari, 0 );
    setEffRotateKey( spep_c + 90, kaminari, 0 );
    setEffAlphaKey( spep_c + 0, kaminari, 255 );
    setEffAlphaKey( spep_c + 90, kaminari, 255 );

    spname = entryEffectLife( spep_c + 0, 3246, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_c + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_c + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, haikei, 0 );
    setEffRotateKey( spep_c + 90, haikei, 0 );
    setEffAlphaKey( spep_c + 0, haikei, 255 );
    setEffAlphaKey( spep_c + 90, haikei, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff2 = entryEffectLife( spep_c + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_c + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_c + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, kaminari, 0 );
    setEffRotateKey( spep_c + 90, kaminari, 0 );
    setEffAlphaKey( spep_c + 0, kaminari, 255 );
    setEffAlphaKey( spep_c + 90, kaminari, 255 );

    spname = entryEffectLife( spep_c + 0, 3250, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え 

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_c + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_c + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, haikei, 0 );
    setEffRotateKey( spep_c + 90, haikei, 0 );
    setEffAlphaKey( spep_c + 0, haikei, 255 );
    setEffAlphaKey( spep_c + 90, haikei, 255 );
end

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- カード ～ フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 542;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード ～ フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード ～ フィニッシュまで 背面(ef_002b)
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
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 + 30 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 158.4, -20.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 158.4, -20.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 409.6, 139.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 409.6, 139.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 259.8, 287.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 259.8, 287.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 259.8, 429.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 259.8, 429.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 259.8, 575.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 259.8, 575.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 259.8, 723.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 259.8, 723.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 259.8, 865.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 259.8, 865.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 259.8, 1010.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 259.8, 1010.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 259.8, 1150.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 259.8, 1150.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 4.4, 4.4 );

setRotateKey( spep_2 + 0, 1, -2 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -65 );

--敵の動き2
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 208 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 152 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, -0.7, 78 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -0.7, 78 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -0.7, 113.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -0.7, 113.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -0.7, 134.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -0.7, 134.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -0.7, 146 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -0.7, 146 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -0.7, 152.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -0.7, 152.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -0.7, 154.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -0.7, 154.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -0.7, 153.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -0.7, 153.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -0.7, 150.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -0.7, 150.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -0.7, 143.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -0.7, 143.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -0.6, 131.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -0.6, 131.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -0.6, 114.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -0.6, 114.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -0.5, 91 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -0.5, 91 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -0.4, 83.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -0.4, 83.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -0.5, 111.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -0.5, 111.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -0.5, 211 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -0.5, 211 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -0.6, 565.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -0.6, 565.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 1173.9, -1.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 1173.9, -1.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 2.7, 799.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 2.7, 799.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 2.4, 773.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 2.4, 773.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 1.5, 694.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 1.5, 694.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -0.1, 563.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -0.1, 563.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -2.2, 379 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -2.2, 379 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -4.9, 142.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -4.9, 142.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -8.2, -146.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.2, -146.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.2, -172 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -8.2, -172 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -8.3, 358.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -8.3, 358.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -8.3, 393.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -8.3, 393.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -8.3, 415.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -8.3, 415.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8.3, 430.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -8.3, 430.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -8.3, 442.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -8.3, 442.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -8.3, 451.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -8.3, 451.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -8.3, 458.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -8.3, 458.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -8.3, 463.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -8.3, 463.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -8.3, 468 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -8.3, 468 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -8.3, 471.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -8.3, 471.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -8.3, 474.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -8.3, 474.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.3, 476.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.3, 476.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -8.3, 478 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -8.3, 478 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -8.3, 479.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -8.3, 479.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -8.3, 480 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -8.3, 480 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -8.3, 480.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -8.3, 480.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -8.3, 480.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -8.3, 480.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 89.7, 496.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 89.7, 496.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 89.2, 492.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 89.2, 492.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 88.7, 489.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 88.7, 489.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 88.2, 486.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 88.2, 486.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 87.8, 482.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 87.8, 482.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 87.3, 479.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 87.3, 479.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 86.9, 476.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 86.9, 476.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 86.5, 473.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 86.5, 473.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 86.2, 471.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 86.2, 471.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 85.8, 469.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 85.8, 469.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 85.5, 466.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 85.5, 466.9 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 4.16, 4.16 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -78.2 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -78.2 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -75.2 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -75.2 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 5 );

--敵の動き3
setDisp( spep_2 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 296 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 352 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 296 + OFFSET_X, 1, 363.5, -676.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 363.5, -676.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 360.2, -668.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 360.2, -668.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 351.6, -648.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 351.6, -648.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 336.5, -613.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 336.5, -613.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 313.5, -560.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 313.5, -560.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 282.6, -488.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 282.6, -488.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 247.6, -407.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 247.6, -407.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 216.2, -334.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 216.2, -334.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 194, -283.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 194, -283.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 198.1, -297.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 198.1, -297.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 210.6, -340.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 210.6, -340.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 231.5, -410.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 231.5, -410.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 256.7, -469.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 256.7, -469.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 297.2, -632.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 297.2, -632.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 346.1, -824.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 346.1, -824.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 397.3, -981 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 397.3, -981 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 456.8, -1166 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 456.8, -1166 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 456.8, -1188 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 456.8, -1188 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 456.8, -1210 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 456.8, -1210 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 459.8, -1189 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 459.8, -1189 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 462.8, -1168 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 462.8, -1168 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 461.8, -1186 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 461.8, -1186 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 460.8, -1204 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 460.8, -1204 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 460.8, -1190 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 460.8, -1190 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 460.8, -1176 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 460.8, -1176 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 460.8, -1182 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 460.8, -1182 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 460.8, -1188 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 460.8, -1188 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -0.2, -0.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -0.2, -0.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -0.1, -0.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -0.1, -0.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -0.1, -0.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -0.1, -0.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -0.1, -0.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -0.1, -0.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -0.1, -0.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -0.1, -0.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 0, -0.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 0, -0.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 0.4, 0.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 0.4, 0.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 0.9, 2.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 0.9, 2.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 1.7, 4.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 1.7, 4.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 2.7, 7.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 2.7, 7.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 2.1, -4.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 2.1, -4.5 , 0 );

setScaleKey( spep_2 + 296 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 7.34, 7.34 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 7.34, 7.34 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 11.08, 11.08 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 11.08, 11.08 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 16.13, 16.13 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 16.13, 16.13 );

setRotateKey( spep_2 + 296 + OFFSET_X, 1, 72 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 72 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 71.7 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 71.7 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 70.8 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 70.8 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 69.3 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 69.3 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 60.4 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 60.4 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 59.2 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 59.2 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 59 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 59 );

setBlendColor( spep_2 + 352 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 356 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 366 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 386 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_2 + 390 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 392 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_2 + 394 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_2 + 396 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 398 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1 );
setBlendColor( spep_2 + 400 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--向かっていく
SE009 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--レシーブ
SE011 = playSeVer2( spep_2 + 46, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE011, 78 );
SE012 = playSeVer2( spep_2 + 46, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE012, 77 );
SE013 = playSeVer2( spep_2 + 50, 1352, "", 0, 0, 0, -1);

--敵浮き上がる
SE014 = playSeVer2( spep_2 + 66, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE014, 63 );

--トス
SE015 = playSeVer2( spep_2 + 138, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 138, 1190, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 142, 1352, "", 0, 0, 0, -1);

--飛び上がる
SE018 = playSeVer2( spep_2 + 176, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 176, 1116, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 178, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE020, 73 );

--アタック
SE021 = playSeVer2( spep_2 + 278, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 288, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE022, 58 );
SE023 = playSeVer2( spep_2 + 288, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 288, 1153, "", 0, 0, 0, -1);

--敵落ちていく
SE025 = playSeVer2( spep_2 + 290, 1183, "",spep_2 + 434, 0, 22, -1);
SE026 = playSeVer2( spep_2 + 318, 1121, "",spep_2 + 434, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 318, SE026, 68 );

--地面激突
SE027 = playSeVer2( spep_2 + 402, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 440); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  542f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開始 ～ カード前まで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 開始 ～ カード前まで 敵側(ef_001r)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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

-- ** 音 ** --
--集中線
SE002 = playSeVer2( spep_0 + 16, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 76 );
SE003 = playSeVer2( spep_0 + 16, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 92, 1436, "",spep_0 + 194, 6, 16, -1);
setStartTimeMs( SE004,  700 );
SE005 = playSeVer2( spep_0 + 94, 1434, "",spep_0 + 192, 6, 18, -1);
setStartTimeMs( SE005,  267 );
SE006 = playSeVer2( spep_0 + 108, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 81 );	
SE007 = playSeVer2( spep_0 + 108, 31, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE007, 67 );	

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --172f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0); -- 敵側のみ 
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -95 );
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- カード ～ フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 542;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード ～ フィニッシュまで 敵側(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カード ～ フィニッシュまで 背面 敵側(ef_002br)
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
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 + 30 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 158.4, -20.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 158.4, -20.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 409.6, 139.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 409.6, 139.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 259.8, 287.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 259.8, 287.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 259.8, 429.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 259.8, 429.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 259.8, 575.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 259.8, 575.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 259.8, 723.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 259.8, 723.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 259.8, 865.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 259.8, 865.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 259.8, 1010.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 259.8, 1010.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 259.8, 1150.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 259.8, 1150.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 4.4, 4.4 );

setRotateKey( spep_2 + 0, 1, -2 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -65 );

--敵の動き2
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 208 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 152 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, -0.7, 78 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -0.7, 78 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -0.7, 113.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -0.7, 113.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -0.7, 134.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -0.7, 134.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -0.7, 146 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -0.7, 146 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -0.7, 152.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -0.7, 152.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -0.7, 154.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -0.7, 154.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -0.7, 153.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -0.7, 153.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -0.7, 150.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -0.7, 150.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -0.7, 143.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -0.7, 143.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -0.6, 131.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -0.6, 131.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -0.6, 114.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -0.6, 114.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -0.5, 91 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -0.5, 91 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -0.4, 83.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -0.4, 83.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -0.5, 111.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -0.5, 111.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -0.5, 211 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -0.5, 211 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -0.6, 565.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -0.6, 565.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 1173.9, -1.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 1173.9, -1.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 2.7, 799.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 2.7, 799.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 2.4, 773.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 2.4, 773.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 1.5, 694.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 1.5, 694.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -0.1, 563.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -0.1, 563.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -2.2, 379 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -2.2, 379 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -4.9, 142.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -4.9, 142.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -8.2, -146.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.2, -146.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.2, -172 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -8.2, -172 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -8.3, 358.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -8.3, 358.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -8.3, 393.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -8.3, 393.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -8.3, 415.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -8.3, 415.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8.3, 430.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -8.3, 430.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -8.3, 442.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -8.3, 442.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -8.3, 451.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -8.3, 451.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -8.3, 458.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -8.3, 458.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -8.3, 463.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -8.3, 463.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -8.3, 468 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -8.3, 468 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -8.3, 471.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -8.3, 471.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -8.3, 474.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -8.3, 474.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -8.3, 476.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -8.3, 476.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -8.3, 478 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -8.3, 478 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -8.3, 479.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -8.3, 479.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -8.3, 480 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -8.3, 480 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -8.3, 480.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -8.3, 480.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -8.3, 480.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -8.3, 480.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -89.7, 496.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -89.7, 496.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -89.2, 492.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -89.2, 492.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -88.7, 489.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -88.7, 489.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -88.2, 486.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -88.2, 486.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -87.8, 482.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -87.8, 482.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -87.3, 479.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -87.3, 479.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -86.9, 476.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -86.9, 476.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -86.5, 473.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -86.5, 473.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -86.2, 471.4 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -86.2, 471.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -85.8, 469.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -85.8, 469.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -85.5, 466.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -85.5, 466.9 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 4.16, 4.16 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -78.2 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -78.2 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -76.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -75.2 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -75.2 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -73 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -5 );

--敵の動き3
setDisp( spep_2 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 296 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 352 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 296 + OFFSET_X, 1, -363.5, -676.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -363.5, -676.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -360.2, -668.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -360.2, -668.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -351.6, -648.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -351.6, -648.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -336.5, -613.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -336.5, -613.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -313.5, -560.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -313.5, -560.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -282.6, -488.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -282.6, -488.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -247.6, -407.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -247.6, -407.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -216.2, -334.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -216.2, -334.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -194, -283.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -194, -283.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -198.1, -297.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -198.1, -297.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -210.6, -340.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -210.6, -340.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -231.5, -410.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -231.5, -410.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -256.7, -469.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -256.7, -469.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -297.2, -632.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -297.2, -632.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -346.1, -824.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -346.1, -824.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -397.3, -981 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -397.3, -981 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -456.8, -1166 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -456.8, -1166 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -456.8, -1188 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -456.8, -1188 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -456.8, -1210 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -456.8, -1210 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -459.8, -1189 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -459.8, -1189 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -462.8, -1168 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -462.8, -1168 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -461.8, -1186 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -461.8, -1186 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -460.8, -1204 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -460.8, -1204 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -460.8, -1190 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -460.8, -1190 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -460.8, -1176 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -460.8, -1176 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -460.8, -1182 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -460.8, -1182 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -460.8, -1188 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -460.8, -1188 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 0.2, -0.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 0.2, -0.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 0.1, -0.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 0.1, -0.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 0.1, -0.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 0.1, -0.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 0.1, -0.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 0.1, -0.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 0.1, -0.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 0.1, -0.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 0, -0.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 0, -0.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -0.4, 0.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -0.4, 0.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -0.9, 2.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -0.9, 2.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -1.7, 4.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -1.7, 4.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -2.7, 7.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -2.7, 7.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -2.1, -4.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -2.1, -4.5 , 0 );

setScaleKey( spep_2 + 296 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 7.34, 7.34 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 7.34, 7.34 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 11.08, 11.08 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 11.08, 11.08 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 16.13, 16.13 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 16.13, 16.13 );

setRotateKey( spep_2 + 296 + OFFSET_X, 1, -72 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -72 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -70.8 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -69.3 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -69.3 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -60.4 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -60.4 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -57.2 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -57.2 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -59 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -59 );

setBlendColor( spep_2 + 352 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 356 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 366 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 386 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_2 + 390 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_2 + 392 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_2 + 394 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.3 );
setBlendColor( spep_2 + 396 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.2 );
setBlendColor( spep_2 + 398 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.1 );
setBlendColor( spep_2 + 400 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--向かっていく
SE009 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--レシーブ
SE011 = playSeVer2( spep_2 + 46, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE011, 78 );
SE012 = playSeVer2( spep_2 + 46, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE012, 77 );
SE013 = playSeVer2( spep_2 + 50, 1352, "", 0, 0, 0, -1);

--敵浮き上がる
SE014 = playSeVer2( spep_2 + 66, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE014, 63 );

--トス
SE015 = playSeVer2( spep_2 + 138, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 138, 1190, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 142, 1352, "", 0, 0, 0, -1);

--飛び上がる
SE018 = playSeVer2( spep_2 + 176, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 176, 1116, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 178, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE020, 73 );

--アタック
SE021 = playSeVer2( spep_2 + 278, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 288, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE022, 58 );
SE023 = playSeVer2( spep_2 + 288, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 288, 1153, "", 0, 0, 0, -1);

--敵落ちていく
SE025 = playSeVer2( spep_2 + 290, 1183, "",spep_2 + 434, 0, 22, -1);
SE026 = playSeVer2( spep_2 + 318, 1121, "",spep_2 + 434, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 318, SE026, 68 );

--地面激突
SE027 = playSeVer2( spep_2 + 402, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 440); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  542f


end
