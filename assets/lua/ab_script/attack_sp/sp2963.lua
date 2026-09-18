--1032520:LR_孫悟空_超必殺技：超元気玉
--sp_effect_a2_00273
--sp2963

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方/敵共通)
SP_01  = 164311;  --ef_001 元気玉のためみんなが手を掲げる
SP_02  = 164312;  --ef_002 元気玉を投げる→フィニッシュ
SP_02b = 164313;  --ef_002b 元気玉を投げる→フィニッシュ

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

ENABLE_AUTO_TIME_STRETCH(0.78);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 元気玉のためみんなが手を掲げる
-------------------------------------------------
MAX_FRAME_0 = 360;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 元気玉のためみんなが手を掲げる(ef_001)
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -75, 515.5, 3000 ); --ゴゴゴ
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 382, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--集中線
SE004 = playSeVer2( spep_0 + 14, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 72 );
SE005 = playSeVer2( spep_0 + 14, 13, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 89 );

--画面切り替え
SE006 = playSeVer2( spep_0 + 96, 1232, "", 0, 0, 0, -1);

--環境音
SE007 = playSeVer2( spep_0 + 96, 1350, "",spep_0 + 382, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 96, 1288, "",spep_0 + 386, 0, 18, -1);

--画面切り替え
SE009 = playSeVer2( spep_0 + 158, 44, "", 0, 0, 0, -1);

--ウパ腕あげる
SE010 = playSeVer2( spep_0 + 220, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 226, 1013, "", 0, 0, 0, -1);

--17号腕上げる
SE012 = playSeVer2( spep_0 + 280, 1003, "", 0, 0, 0, -1);

--はっちゃん腕上げる
SE013 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --360f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -155 );
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

    spname = entryEffectLife( spep_c + 0, 3246, 90, 0x100, -1, 0, 0, -155 );
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

    spname = entryEffectLife( spep_c + 0, 3250, 90, 0x100, -1, 0, 0, -155 );
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

-- ** 音 ** --
--元気玉溜め
SE015 = playSeVer2( spep_c + 92, 1176, "",spep_c + 284, 0, 34, -1);
setSeVolumeByWorkId( spep_c + 92, SE015, 22 );
SE016 = playSeVer2( spep_c + 92, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 92, SE016, 66 );
setPitch( spep_c + 92, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_c + 92, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_c + 92, SE017, 60 );
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 元気玉を投げる→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 458;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 元気玉を投げる→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 元気玉を投げる→フィニッシュ(ef_002b)
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
setDisp( spep_2 + 218 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 218 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 218 + OFFSET_X, 1, -65.7, -56.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -65.7, -56.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -57.6, -39.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -57.6, -39.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -46.1, -70.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -46.1, -70.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -37.5, -46.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -37.5, -46.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -37.9, -64.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -37.9, -64.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -31.7, -52.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -31.7, -52.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -25.3, -59.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -25.3, -59.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -15.2, -52.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -15.2, -52.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -17.6, -61.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -17.6, -61.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -7, -48.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -7, -48.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -7.7, -59 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -7.7, -59 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -6.4, -57.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -6.4, -57.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 1.3, -57.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 1.3, -57.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -0.7, -59.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -0.7, -59.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 5.8, -58.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 5.8, -58.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 2.7, -57.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 2.7, -57.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 10.3, -44.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 10.3, -44.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 7.2, -58.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 7.2, -58.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 13, -59.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 13, -59.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 7.6, -55.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 7.6, -55.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 14, -56.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 14, -56.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 14.1, -60.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 14.1, -60.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -1.4, -51.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -1.4, -51.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 14.9, -58.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 14.9, -58.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 8.6, -55.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 8.6, -55.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 13.7, -58.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 13.7, -58.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 10.9, -59.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 10.9, -59.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 10.9, -59.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 10.9, -59.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 8.2, -53.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 8.2, -53.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 17.2, -58.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 17.2, -58.3 , 0 );

setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.86, 2.86 );

setRotateKey( spep_2 + 218 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -30 );

setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0.034, 0.3, 0.74, 0.43 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--元気玉溜め
SE018 = playSeVer2( spep_2 + 0, 1396, "",spep_2 + 190, 0, 34, -1);
setPitch( spep_2 + 0, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );
SE019 = playSeVer2( spep_2 + 6, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE019, 71 );
setPitch( spep_2 + 6, SE019, -1000 );
setTimeStretch( SE019, 0.33, 30, 4 );

--元気玉発射
SE020 = playSeVer2( spep_2 + 120, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE020, 63 );
SE022 = playSeVer2( spep_2 + 120, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE022, 58 );
SE023 = playSeVer2( spep_2 + 120, 1278, "",spep_2 + 300, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 120, SE023, 63 );
SE024 = playSeVer2( spep_2 + 128, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE024, 72 );
SE021 = playSeVer2( spep_2 + 152, 1193, "",spep_2 + 280, 22, 44, -1);
setSeVolumeByWorkId( spep_2 + 152, SE021, 56 );
setStartTimeMs( SE021,  533 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 6, SE021, 0);
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
--元気玉飛んでくる
SE025 = playSeVer2( spep_2 + 168, 1044, "",spep_2 + 258, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 168, SE025, 71 );
SE026 = playSeVer2( spep_2 + 178, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE026, 63 );

--爆発
SE027 = playSeVer2( spep_2 + 196, 1069, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 216, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE028, 63 );

--ラスト爆発
SE029 = playSeVer2( spep_2 + 290, 1128, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE029, 59 );
setStartTimeMs( SE029,  600 );
setPitch( spep_2 + 290, SE029, -1200 );
setTimeStretch( SE029, 0.2, 30, 4 );
SE030 = playSeVer2( spep_2 + 274, 1159, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 280, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 278); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  458f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 元気玉のためみんなが手を掲げる
-------------------------------------------------
MAX_FRAME_0 = 360;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 元気玉のためみんなが手を掲げる(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 382, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--集中線
SE004 = playSeVer2( spep_0 + 14, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 72 );
SE005 = playSeVer2( spep_0 + 14, 13, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 89 );

--画面切り替え
SE006 = playSeVer2( spep_0 + 96, 1232, "", 0, 0, 0, -1);

--環境音
SE007 = playSeVer2( spep_0 + 96, 1350, "",spep_0 + 382, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 96, 1288, "",spep_0 + 386, 0, 18, -1);

--画面切り替え
SE009 = playSeVer2( spep_0 + 158, 44, "", 0, 0, 0, -1);

--ウパ腕あげる
SE010 = playSeVer2( spep_0 + 220, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 226, 1013, "", 0, 0, 0, -1);

--17号腕上げる
SE012 = playSeVer2( spep_0 + 280, 1003, "", 0, 0, 0, -1);

--はっちゃん腕上げる
SE013 = playSeVer2( spep_0 + 338, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --360f

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

spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -155 );
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

--元気玉溜め
SE015 = playSeVer2( spep_c + 92, 1176, "",spep_c + 284, 0, 34, -1);
setSeVolumeByWorkId( spep_c + 92, SE015, 22 );
SE016 = playSeVer2( spep_c + 92, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 92, SE016, 66 );
setPitch( spep_c + 92, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_c + 92, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_c + 92, SE017, 60 );

-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 元気玉を投げる→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 458;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 元気玉を投げる→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 元気玉を投げる→フィニッシュ(ef_002b)
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
setDisp( spep_2 + 218 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 218 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 218 + OFFSET_X, 1, 65.7, -56.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 65.7, -56.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 57.6, -39.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 57.6, -39.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 46.1, -70.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 46.1, -70.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 37.5, -46.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 37.5, -46.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 37.9, -64.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 37.9, -64.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 31.7, -52.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 31.7, -52.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 25.3, -59.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 25.3, -59.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 15.2, -52.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 15.2, -52.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 17.6, -61.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 17.6, -61.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 7, -48.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 7, -48.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 7.7, -59 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 7.7, -59 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 6.4, -57.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 6.4, -57.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -1.3, -57.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -1.3, -57.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 0.7, -59.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 0.7, -59.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -5.8, -58.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -5.8, -58.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -2.7, -57.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -2.7, -57.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -10.3, -44.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -10.3, -44.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -7.2, -58.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -7.2, -58.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -13, -59.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -13, -59.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -7.6, -55.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -7.6, -55.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -14, -56.9 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -14, -56.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -14.1, -60.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -14.1, -60.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 1.4, -51.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 1.4, -51.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -14.9, -58.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -14.9, -58.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -8.6, -55.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -8.6, -55.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -13.7, -58.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -13.7, -58.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -10.9, -59.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -10.9, -59.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -10.9, -59.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -10.9, -59.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -8.2, -53.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -8.2, -53.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -17.2, -58.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -17.2, -58.3 , 0 );

setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.86, 2.86 );

setRotateKey( spep_2 + 218 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 30 );

setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0.034, 0.3, 0.74, 0.43 );
setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--元気玉溜め
SE018 = playSeVer2( spep_2 + 0, 1396, "",spep_2 + 190, 0, 34, -1);
setPitch( spep_2 + 0, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );
SE019 = playSeVer2( spep_2 + 6, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE019, 71 );
setPitch( spep_2 + 6, SE019, -1000 );
setTimeStretch( SE019, 0.33, 30, 4 );

--元気玉発射
SE020 = playSeVer2( spep_2 + 120, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE020, 63 );
SE022 = playSeVer2( spep_2 + 120, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE022, 58 );
SE023 = playSeVer2( spep_2 + 120, 1278, "",spep_2 + 300, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 120, SE023, 63 );
SE024 = playSeVer2( spep_2 + 128, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE024, 72 );
SE021 = playSeVer2( spep_2 + 152, 1193, "",spep_2 + 280, 22, 44, -1);
setSeVolumeByWorkId( spep_2 + 152, SE021, 56 );
setStartTimeMs( SE021,  533 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 158; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 6, SE021, 0);
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
--元気玉飛んでくる
SE025 = playSeVer2( spep_2 + 168, 1044, "",spep_2 + 258, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 168, SE025, 71 );
SE026 = playSeVer2( spep_2 + 178, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE026, 63 );

--爆発
SE027 = playSeVer2( spep_2 + 196, 1069, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 216, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE028, 63 );

--ラスト爆発
SE029 = playSeVer2( spep_2 + 290, 1128, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE029, 59 );
setStartTimeMs( SE029,  600 );
setPitch( spep_2 + 290, SE029, -1200 );
setTimeStretch( SE029, 0.2, 30, 4 );
SE030 = playSeVer2( spep_2 + 274, 1159, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 280, 1168, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 278); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  458f -4


end
