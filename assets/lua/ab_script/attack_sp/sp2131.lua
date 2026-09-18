--1021430:ゴールデンフリーザ(天使)&人造人間17号_限界突破の突撃
--sp_effect_b4_00178
--sp2131

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01=	156873	;--	冒頭、セリフカットイン
SP_02=	156874	;--	フリーザ突撃〜フィニッシュ
SP_03=	156875	;--	フリーザ突撃〜フィニッシュ

--エフェクト(てき)
SP_01x=	156873	;--	冒頭、セリフカットイン	
SP_02x=	156876	;--	フリーザ突撃〜フィニッシュ：敵側	(敵)
SP_03x=	156877	;--	フリーザ突撃〜フィニッシュ：敵側	(敵)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.85);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭、セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, beginning, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 90, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 90, beginning, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 90, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  90,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  90,  510);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--入り
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );
SE002 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );

--顔カットイン
SE003 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

--入り
stopSe( spep_1 + 10, SE001, 0 );
stopSe( spep_1 + 10, SE002, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- フリーザ突撃〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 820, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 820, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 820, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 820, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 820, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 820, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 820, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 820, finish_b, 255 );

--SE
--ゴルフリ飛んでくる
SE005 = playSe( spep_2 + 0, 1182 );
setSeVolumeByWorkId( spep_2 + 0, SE005, 126 );
SE006 = playSe( spep_2 + 0, 1314 );
setSeVolumeByWorkId( spep_2 + 0, SE006, 86 );
SE007 = playSe( spep_2 + 14, 1167 );
setSeVolumeByWorkId( spep_2 + 14, SE007, 34 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 820, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 94,  10021, 14, 0x100, -1, 0, 149.5, 104.4 );--バゴォッ
setEffShake( spep_2-3 + 94, ctbago, 14, 10 );
setEffMoveKey( spep_2-3 + 94, ctbago, 149.5, 104.4 , 0 );
setEffMoveKey( spep_2-3 + 96, ctbago, 110, 197.2 , 0 );
setEffMoveKey( spep_2-3 + 98, ctbago, 122.2, 167.5 , 0 );
setEffMoveKey( spep_2-3 + 100, ctbago, 126.5, 203.2 , 0 );
setEffMoveKey( spep_2-3 + 102, ctbago, 90.1, 227.8 , 0 );
setEffMoveKey( spep_2-3 + 104, ctbago, 81.2, 217.5 , 0 );
setEffMoveKey( spep_2-3 + 106, ctbago, 79.8, 262.2 , 0 );
setEffMoveKey( spep_2-3 + 108, ctbago, 44.3, 276.1 , 0 );

setEffScaleKey( spep_2-3 + 94, ctbago, 1.17, 1.23 );
setEffScaleKey( spep_2-3 + 96, ctbago, 2.62, 2.74 );
setEffScaleKey( spep_2-3 + 98, ctbago, 2.63, 2.75 );
setEffScaleKey( spep_2-3 + 100, ctbago, 2.66, 2.79 );
setEffScaleKey( spep_2-3 + 102, ctbago, 2.72, 2.85 );
setEffScaleKey( spep_2-3 + 104, ctbago, 3, 3.14 );
setEffScaleKey( spep_2-3 + 106, ctbago, 3.16, 3.31 );
setEffScaleKey( spep_2-3 + 108, ctbago, 3.22, 3.37 );

setEffRotateKey( spep_2-3 + 94, ctbago, 30 );
setEffRotateKey( spep_2-3 + 108, ctbago, 30 );

setEffAlphaKey( spep_2-3 + 94, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 102, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 104, ctbago, 126 );
setEffAlphaKey( spep_2-3 + 106, ctbago, 50 );
setEffAlphaKey( spep_2-3 + 108, ctbago, 23 );

--文字エントリー
ctzudodo = entryEffectLife( spep_2-3 + 320,  10014, 58, 0x100, -1, 0, 20.8, 259.6 );--ズドドドッ
setEffShake( spep_2-3 + 320, ctzudodo, 58, 10 );
setEffMoveKey( spep_2-3 + 320, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 322, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 324, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 326, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 328, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 330, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 332, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 334, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 336, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 338, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 340, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 342, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 344, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 346, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 348, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 350, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 352, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 354, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 356, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 358, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 360, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 362, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 364, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 366, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 368, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 370, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 372, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 374, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 376, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 378, ctzudodo, 21, 278.2 , 0 );

setEffScaleKey( spep_2-3 + 320, ctzudodo, 2.67, 2.69 );
setEffScaleKey( spep_2-3 + 378, ctzudodo, 2.67, 2.69 );

setEffRotateKey( spep_2-3 + 320, ctzudodo, 17.6 );
setEffRotateKey( spep_2-3 + 378, ctzudodo, 17.6 );

setEffAlphaKey( spep_2-3 + 320, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 378, ctzudodo, 255 );

--敵の動き
setDisp( spep_2-3 + 80, 1, 1);
setDisp( spep_2-1 + 110, 1, 0);

changeAnime( spep_2-3 + 80, 1, 104);
changeAnime( spep_2-3 + 86, 1, 108);

setMoveKey( spep_2-3 + 80, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 82, 1, 1.1, -0.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 4.5, -2.1 , 0 );
setMoveKey( spep_2-3 + 85, 1, 4.5, -2.1 , 0 );

setMoveKey( spep_2-3 + 86, 1, 22.9, 14.5 , 0 );
setMoveKey( spep_2-3 + 88, 1, 30.4, 10.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 40.1, 5 , 0 );
setMoveKey( spep_2-3 + 92, 1, 51.8, -1.6 , 0 );
setMoveKey( spep_2-3 + 94, 1, 65.8, -9.3 , 0 );
setMoveKey( spep_2-3 + 96, 1, 81.8, -18.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 100, -28.3 , 0 );
setMoveKey( spep_2-3 + 100, 1, 120.4, -39.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 142.9, -52.1 , 0 );
setMoveKey( spep_2-3 + 104, 1, 167.5, -65.8 , 0 );
setMoveKey( spep_2-3 + 106, 1, 194.3, -80.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 223.2, -96.7 , 0 );
setMoveKey( spep_2-1 + 110, 1, 239.5, -104.9 , 0 );

setScaleKey( spep_2-3 + 80, 1,1.86, 1.86 );
setScaleKey( spep_2-3 + 82, 1,1.86, 1.86 );
setScaleKey( spep_2-3 + 84, 1,1.83, 1.83 );
setScaleKey( spep_2-3 + 85, 1,1.83, 1.83 );
setScaleKey( spep_2-3 + 86, 1,1.8, 1.8 );
setScaleKey( spep_2-3 + 88, 1,1.75, 1.75 );
setScaleKey( spep_2-3 + 90, 1,1.7, 1.7 );
setScaleKey( spep_2-3 + 92, 1,1.63, 1.63 );
setScaleKey( spep_2-3 + 94, 1,1.55, 1.55 );
setScaleKey( spep_2-3 + 96, 1,1.44, 1.44 );
setScaleKey( spep_2-3 + 98, 1,1.34, 1.34 );
setScaleKey( spep_2-3 + 100, 1,1.22, 1.22 );
setScaleKey( spep_2-3 + 102, 1,1.09, 1.09 );
setScaleKey( spep_2-3 + 104, 1,0.94, 0.94 );
setScaleKey( spep_2-3 + 106, 1,0.78, 0.78 );
setScaleKey( spep_2-3 + 108, 1,0.61, 0.61 );
setScaleKey( spep_2-1 + 110, 1,0.61, 0.61 );

setRotateKey( spep_2-3 + 80, 1, 10 );
setRotateKey( spep_2-3 + 85, 1, 10 );

setRotateKey( spep_2-3 + 86, 1, 25 );
setRotateKey( spep_2-1 + 110, 1, 25 );

--敵の動き
setDisp( spep_2-3 + 410, 1, 1);
setDisp( spep_2-1 + 478, 1, 0);

changeAnime( spep_2-3 + 410, 1, 108);
changeAnime( spep_2-3 + 460, 1, 106);

setMoveKey( spep_2-3 + 410, 1, -206.4, 281 , 0 );
setMoveKey( spep_2-3 + 412, 1, -209.4, 289.3 , 0 );
setMoveKey( spep_2-3 + 414, 1, -189.2, 258.7 , 0 );
setMoveKey( spep_2-3 + 416, 1, -169.9, 242.8 , 0 );
setMoveKey( spep_2-3 + 418, 1, -89.9, 174.3 , 0 );
setMoveKey( spep_2-3 + 420, 1, -52.7, 126.1 , 0 );
setMoveKey( spep_2-3 + 422, 1, -6.5, 89 , 0 );
setMoveKey( spep_2-3 + 424, 1, 3.1, 63.2 , 0 );
setMoveKey( spep_2-3 + 426, 1, 39.9, 39.3 , 0 );
setMoveKey( spep_2-3 + 428, 1, 49.6, 24.9 , 0 );
setMoveKey( spep_2-3 + 430, 1, 62.7, 11.8 , 0 );
setMoveKey( spep_2-3 + 432, 1, 73.3, 1.3 , 0 );
setMoveKey( spep_2-3 + 434, 1, 81.7, -7.2 , 0 );
setMoveKey( spep_2-3 + 436, 1, 88.5, -13.9 , 0 );
setMoveKey( spep_2-3 + 438, 1, 93.8, -19.2 , 0 );
setMoveKey( spep_2-3 + 440, 1, 97.7, -23.1 , 0 );
setMoveKey( spep_2-3 + 442, 1, 100.6, -26 , 0 );
setMoveKey( spep_2-3 + 444, 1, 102.5, -27.9 , 0 );
setMoveKey( spep_2-3 + 446, 1, 103.6, -28.9 , 0 );
setMoveKey( spep_2-3 + 448, 1, 103.9, -29.2 , 0 );
setMoveKey( spep_2-3 + 450, 1, 70.5, -27.7 , 0 );
setMoveKey( spep_2-3 + 452, 1, 86.1, 25.7 , 0 );
setMoveKey( spep_2-3 + 454, 1, 45.9, 4.5 , 0 );
setMoveKey( spep_2-3 + 456, 1, 30.2, 67.8 , 0 );
setMoveKey( spep_2-3 + 458, 1, 37.2, 25.9 , 0 );
setMoveKey( spep_2-3 + 459, 1, 37.2, 25.9 , 0 );

setMoveKey( spep_2-3 + 460, 1, 38.2, 43.7 , 0 );
setMoveKey( spep_2-3 + 462, 1, 39.6, 27.4 , 0 );
setMoveKey( spep_2-3 + 464, 1, 46.8, 20 , 0 );
setMoveKey( spep_2-3 + 466, 1, 59.9, 5.9 , 0 );
setMoveKey( spep_2-3 + 468, 1, 81.8, -18.5 , 0 );
setMoveKey( spep_2-3 + 470, 1, 117.3, -58.4 , 0 );
setMoveKey( spep_2-3 + 472, 1, 173.3, -122 , 0 );
setMoveKey( spep_2-3 + 474, 1, 260.5, -221.4 , 0 );
setMoveKey( spep_2-3 + 476, 1, 395.4, -375.6 , 0 );
setMoveKey( spep_2-1 + 478, 1, 395.3, -374.7 , 0 );

setScaleKey( spep_2-3 + 410, 1, 0.6, 0.6 );
setScaleKey( spep_2-1 + 478, 1, 0.6, 0.6 );

setRotateKey( spep_2-3 + 410, 1, 30 );
setRotateKey( spep_2-3 + 459, 1, 30 );

setRotateKey( spep_2-3 + 460, 1, 75.1 );
setRotateKey( spep_2-3 + 462, 1, 75.2 );
setRotateKey( spep_2-3 + 464, 1, 75.5 );
setRotateKey( spep_2-3 + 466, 1, 76.1 );
setRotateKey( spep_2-3 + 468, 1, 77 );
setRotateKey( spep_2-3 + 470, 1, 78.4 );
setRotateKey( spep_2-3 + 472, 1, 80.8 );
setRotateKey( spep_2-3 + 474, 1, 84.4 );
setRotateKey( spep_2-3 + 476, 1, 90 );
setRotateKey( spep_2-1 + 478, 1, 90 );

--敵の動き
setDisp( spep_2-3 + 528, 1, 1);
setDisp( spep_2-1 + 598, 1, 0);

changeAnime( spep_2-3 + 528, 1, 6);

a=0;
b=-28;

setMoveKey( spep_2-3 + 528, 1, -17.8+a, 8.7+b , 0 );
setMoveKey( spep_2-3 + 530, 1, -25.3+a, 5.7+b , 0 );
setMoveKey( spep_2-3 + 532, 1, -19.9+a, 7.7+b , 0 );
setMoveKey( spep_2-3 + 534, 1, -24.9+a, 3.4+b , 0 );
setMoveKey( spep_2-3 + 536, 1, -19.5+a, 7+b , 0 );
setMoveKey( spep_2-3 + 538, 1, -24.4+a, 5.4+b , 0 );
setMoveKey( spep_2-3 + 540, 1, -19.6+a, 4.1+b , 0 );
setMoveKey( spep_2-3 + 542, 1, -25.7+a, 6.1+b , 0 );
setMoveKey( spep_2-3 + 544, 1, -19.3+a, 6.2+b , 0 );
setMoveKey( spep_2-3 + 546, 1, -23.8+a, 3.3+b , 0 );
setMoveKey( spep_2-3 + 548, 1, -20.7+a, 10.1+b , 0 );
setMoveKey( spep_2-3 + 550, 1, -25.6+a, 3.7+b , 0 );
setMoveKey( spep_2-3 + 552, 1, -20.1+a, 7+b , 0 );
setMoveKey( spep_2-3 + 554, 1, -23.4+a, 8.1+b , 0 );
setMoveKey( spep_2-3 + 556, 1, -21.3+a, 2.6+b , 0 );
setMoveKey( spep_2-3 + 558, 1, -21.5+a, 7.5+b , 0 );
setMoveKey( spep_2-3 + 560, 1, -21.8+a, 5.9+b , 0 );
setMoveKey( spep_2-3 + 562, 1, -23.6+a, 5+b , 0 );
setMoveKey( spep_2-3 + 564, 1, -20.9+a, 7.2+b , 0 );
setMoveKey( spep_2-3 + 566, 1, -23+a, 4.5+b , 0 );
setMoveKey( spep_2-3 + 568, 1, -20.6+a, 8.2+b , 0 );
setMoveKey( spep_2-3 + 570, 1, -21.1+a, 3.8+b , 0 );
setMoveKey( spep_2-3 + 572, 1, -23.6+a, 7.4+b , 0 );
setMoveKey( spep_2-3 + 574, 1, -20.3+a, 5.8+b , 0 );
setMoveKey( spep_2-3 + 576, 1, -23.3+a, 5.7+b , 0 );
setMoveKey( spep_2-3 + 578, 1, -22.2+a, 7.7+b , 0 );
setMoveKey( spep_2-3 + 580, 1, -23.3+a, 3.8+b , 0 );
setMoveKey( spep_2-1 + 598, 1, -23.3+a, 3.8+b , 0 );

setScaleKey( spep_2-3 + 528, 1, 2, 2 );
setScaleKey( spep_2-1 + 598, 1, 2, 2 );

setRotateKey( spep_2-3 + 528, 1, 45 );
setRotateKey( spep_2-1 + 598, 1, 45 );

--SE
--ゴルフリ飛んでくる
stopSe( spep_2 + 102, SE006, 16 );
SE008 = playSe( spep_2 + 50, 1277 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 50, SE008, 200 );

--パンチヒット
SE009 = playSe( spep_2 + 78, 1189 );
SE010 = playSe( spep_2 + 82, 1187 );
setSeVolumeByWorkId( spep_2 + 82, SE010, 100 );
SE011 = playSe( spep_2 + 84, 1110 );

--岩ヒット
SE012 = playSe( spep_2 + 108, 1061 );
setSeVolumeByWorkId( spep_2 + 108, SE012, 81 );
SE013 = playSe( spep_2 + 108, 1159 );
setSeVolumeByWorkId( spep_2 + 108, SE013, 91 );

--17号横切る
SE014 = playSe( spep_2 + 172, 44 );
setSeVolumeByWorkId( spep_2 + 172, SE014, 81 );

--高速移動
SE015 = playSe( spep_2 + 198, 1048 );
setSeVolumeByWorkId( spep_2 + 198, SE015, 60 );
stopSe( spep_2 + 198 + 10,SE015,0);
SE018 = playSe( spep_2 + 204, 1048 );
setSeVolumeByWorkId( spep_2 + 204, SE018, 44 );
stopSe( spep_2 + 204 + 10,SE018,0);
SE019 = playSe( spep_2 + 210, 1048 );
setSeVolumeByWorkId( spep_2 + 210, SE019, 50 );
stopSe( spep_2 + 210 + 10,SE019,0);
SE020 = playSe( spep_2 + 216, 1048 );
setSeVolumeByWorkId( spep_2 + 216, SE020, 65 );
stopSe( spep_2 + 216 + 10,SE020,0);
SE021 = playSe( spep_2 + 222, 1048 );
setSeVolumeByWorkId( spep_2 + 222, SE021, 48 );
stopSe( spep_2 + 222 + 10,SE021,0);
SE022 = playSe( spep_2 + 228, 1048 );
setSeVolumeByWorkId( spep_2 + 228, SE022, 55 );
stopSe( spep_2 + 228 + 10,SE022,0);
SE024 = playSe( spep_2 + 234, 1048 );
setSeVolumeByWorkId( spep_2 + 234, SE024, 57 );
stopSe( spep_2 + 234 + 10,SE024,0);
SE025 = playSe( spep_2 + 240, 1048 );
setSeVolumeByWorkId( spep_2 + 240, SE025, 73 );
stopSe( spep_2 + 240 + 10,SE025,0);
SE026 = playSe( spep_2 + 246, 1048 );
setSeVolumeByWorkId( spep_2 + 246, SE026, 54 );
stopSe( spep_2 + 246 + 10,SE026,0);
SE027 = playSe( spep_2 + 252, 1048 );
setSeVolumeByWorkId( spep_2 + 252, SE027, 48 );
stopSe( spep_2 + 252 + 10,SE027,0);
SE028 = playSe( spep_2 + 258, 1048 );
setSeVolumeByWorkId( spep_2 + 258, SE028, 48 );
stopSe( spep_2 + 258 + 10,SE028,0);

--高速移動（ベース）
SE016 = playSe( spep_2 + 198, 8 );
SE017 = playSe( spep_2 + 198, 9 );
setSeVolumeByWorkId( spep_2 + 198, SE017, 70 );
SE042 = playSe( spep_2 + 324, 9 );
stopSe( spep_2 + 388, SE042, 0 );

--画面遷移
SE023 = playSe( spep_2 + 228, 1072 );

--連続気弾
SE029 = playSe( spep_2 + 262, 1016 ,"",0.5);
stopSe( spep_2 + 262 +14,SE029,10);
SE030 = playSe( spep_2 + 268, 1016 ,"",0.5);
stopSe( spep_2 + 268 +14,SE030,10);
SE031 = playSe( spep_2 + 274, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 274, SE031, 76 );
stopSe( spep_2 + 274 +14,SE031,10);
SE032 = playSe( spep_2 + 280, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 280, SE032, 93 );
stopSe( spep_2 + 280 +14,SE032,10);
SE033 = playSe( spep_2 + 286, 1016 ,"",0.5);
stopSe( spep_2 + 286 +14,SE033,10);
SE034 = playSe( spep_2 + 292, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 292, SE034, 95 );
stopSe( spep_2 + 292 +14,SE034,10);
SE035 = playSe( spep_2 + 298, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 298, SE035, 76 );
stopSe( spep_2 + 298 +14,SE035,10);
SE036 = playSe( spep_2 + 304, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 304, SE036, 68 );
stopSe( spep_2 + 304 +14,SE036,10);
SE037 = playSe( spep_2 + 310, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 310, SE037, 87 );
stopSe( spep_2 + 310 +14,SE037,10);

--連続爆発
SE038 = playSe( spep_2 + 316, 1025 );
stopSe( spep_2 + 324, SE038, 12 );
setSeVolumeByWorkId( spep_2 + 316, SE038, 130 );
SE040 = playSe( spep_2 + 322, 1024 );
setSeVolumeByWorkId( spep_2 + 322, SE040, 120 );
SE043 = playSe( spep_2 + 326, 1025 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 326, SE043, 130 );
stopSe( spep_2 + 334, SE043, 12 );
SE046 = playSe( spep_2 + 338, 1025 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 338, SE046, 130 );
stopSe( spep_2 + 346, SE046, 12 );

--爆発中気弾
--SE039 = playSe( spep_2 + 316, 1016 ,"",0.5);
--setSeVolumeByWorkId( spep_2 + 316, SE039, 69 );
--stopSe( spep_2 + 316 +12,SE039,8);
SE041 = playSe( spep_2 + 322, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 322, SE041, 72 );
stopSe( spep_2 + 322 +12,SE041,8);
--SE044 = playSe( spep_2 + 328, 1016 ,"",0.5);
--setSeVolumeByWorkId( spep_2 + 328, SE044, 60 );
--stopSe( spep_2 + 328 +12,SE044,8);
SE045 = playSe( spep_2 + 334, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 334, SE045, 82 );
stopSe( spep_2 + 334 +12,SE045,8);
--SE047 = playSe( spep_2 + 340, 1016 ,"",0.5);
--setSeVolumeByWorkId( spep_2 + 340, SE047, 85 );
--stopSe( spep_2 + 340 +12,SE047,8);
SE048 = playSe( spep_2 + 346, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 346, SE048, 86 );
stopSe( spep_2 + 346 +12,SE048,8);
SE049 = playSe( spep_2 + 352, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 352, SE049, 80 );
stopSe( spep_2 + 352 +12,SE049,8);
SE050 = playSe( spep_2 + 358, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 358, SE050, 67 );
stopSe( spep_2 + 358 +12,SE050,8);

--ゴルフリ飛んでくる
SE051 = playSe( spep_2 + 378, 1116 );
stopSe( spep_2 + 400, SE051, 16 );
SE052 = playSe( spep_2 + 378, 1117 );
stopSe( spep_2 + 400, SE052, 16 );

--キックヒット
SE053 = playSe( spep_2 + 402, 1123 );
setSeVolumeByWorkId( spep_2 + 402, SE053, 88 );
SE054 = playSe( spep_2 + 402, 1011 );
setSeVolumeByWorkId( spep_2 + 402, SE054, 85 );

--岩爆発
SE055 = playSe( spep_2 + 442, 1061 );
setSeVolumeByWorkId( spep_2 + 442, SE055, 85 );
SE056 = playSe( spep_2 + 442, 1011 );

--そして地面へ
SE057 = playSe( spep_2 + 478, 1061 );
setSeVolumeByWorkId( spep_2 + 478, SE057, 82 );
SE058 = playSe( spep_2 + 478, 1159 );
setSeVolumeByWorkId( spep_2 + 478, SE058, 84 );
setPitch( spep_2 + 550, SE059, 500 );
setTimeStretch( SE059, 1.33, 10, 1 );

--17号気弾溜め
SE059 = playSe( spep_2 + 542, 45 );
setSeVolumeByWorkId( spep_2 + 542, SE059, 56 );
setPitch( spep_2 + 542, SE059, 500 );
setTimeStretch( SE059, 1.33, 10, 1 );
SE060 = playSe( spep_2 + 542, 1144 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 542, SE060, 50 );
stopSe( spep_2 + 638, SE060, 14 );
SE061 = playSe( spep_2 + 542, 1265 ,"",0.6);
stopSe( spep_2 + 638, SE061, 30 );
SE063 = playSe( spep_2 + 548, 1191 ,"",0.6);
stopSe( spep_2 + 598, SE063, 50 );

--気弾膨れ上がる
SE062 = playSe( spep_2 + 652, 1266 );
setSeVolumeByWorkId( spep_2 + 652, SE062, 0 );
setSeVolumeByWorkId( spep_2 + 653, SE062, 6.2 );
setSeVolumeByWorkId( spep_2 + 654, SE062, 12.4 );
setSeVolumeByWorkId( spep_2 + 655, SE062, 18.6 );
setSeVolumeByWorkId( spep_2 + 656, SE062, 24.8 );
setSeVolumeByWorkId( spep_2 + 657, SE062, 31 );
setSeVolumeByWorkId( spep_2 + 658, SE062, 37.2 );
setSeVolumeByWorkId( spep_2 + 659, SE062, 43.4 );
setSeVolumeByWorkId( spep_2 + 660, SE062, 50 );
setStartTimeMs( SE062,  1833 );
stopSe( spep_2 + 736, SE062, 24 );
SE067 = playSe( spep_2 + 680, 1306 );
setSeVolumeByWorkId( spep_2 + 680, SE067, 70 );
stopSe( spep_2 + 724, SE067, 18 );
SE068 = playSe( spep_2 + 680, 1307 );
setSeVolumeByWorkId( spep_2 + 680, SE068, 71 );
stopSe( spep_2 + 726, SE068, 16 );
SE069 = playSe( spep_2 + 680, 1282 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 680, SE069, 50 );

--気弾押し込む
SE064 = playSe( spep_2 + 628, 1056 );
SE065 = playSe( spep_2 + 636, 1114 );
stopSe( spep_2 + 686, SE065, 28 );
SE066 = playSe( spep_2 + 640, 1024 );
setSeVolumeByWorkId( spep_2 + 640, SE066, 78 );
stopSe( spep_2 + 668, SE066, 16 );

--爆発
SE070 = playSe( spep_2 + 740, 1159 );
setSeVolumeByWorkId( spep_2 + 740, SE070, 88 );
SE071 = playSe( spep_2 + 744, 1188 );
setSeVolumeByWorkId( spep_2 + 744, SE071, 87 );
SE072 = playSe( spep_2 + 750, 1067 );
setSeVolumeByWorkId( spep_2 + 750, SE072, 138 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 710 );
endPhase( spep_2 + 810 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭、セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
beginning = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, beginning, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, beginning, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beginning, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, beginning, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beginning, 0 );
setEffRotateKey( spep_0 + 90, beginning, 0 );
setEffAlphaKey( spep_0 + 0, beginning, 255 );
setEffAlphaKey( spep_0 + 90, beginning, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 90, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  90,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  90,  510);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--入り
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );
SE002 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );

--顔カットイン
SE003 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

--入り
stopSe( spep_1 + 10, SE001, 0 );
stopSe( spep_1 + 10, SE002, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- フリーザ突撃〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 820, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 820, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 820, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 820, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 820, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 820, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 820, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 820, finish_b, 255 );

--SE
--ゴルフリ飛んでくる
SE005 = playSe( spep_2 + 0, 1182 );
setSeVolumeByWorkId( spep_2 + 0, SE005, 126 );
SE006 = playSe( spep_2 + 0, 1314 );
setSeVolumeByWorkId( spep_2 + 0, SE006, 86 );
SE007 = playSe( spep_2 + 14, 1167 );
setSeVolumeByWorkId( spep_2 + 14, SE007, 34 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 820, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 94,  10021, 14, 0x100, -1, 0, 149.5, 104.4 );--バゴォッ
setEffShake( spep_2-3 + 94, ctbago, 14, 10 );
setEffMoveKey( spep_2-3 + 94, ctbago, 149.5, 104.4 , 0 );
setEffMoveKey( spep_2-3 + 96, ctbago, 110, 197.2 , 0 );
setEffMoveKey( spep_2-3 + 98, ctbago, 122.2, 167.5 , 0 );
setEffMoveKey( spep_2-3 + 100, ctbago, 126.5, 203.2 , 0 );
setEffMoveKey( spep_2-3 + 102, ctbago, 90.1, 227.8 , 0 );
setEffMoveKey( spep_2-3 + 104, ctbago, 81.2, 217.5 , 0 );
setEffMoveKey( spep_2-3 + 106, ctbago, 79.8, 262.2 , 0 );
setEffMoveKey( spep_2-3 + 108, ctbago, 44.3, 276.1 , 0 );

setEffScaleKey( spep_2-3 + 94, ctbago, 1.17, 1.23 );
setEffScaleKey( spep_2-3 + 96, ctbago, 2.62, 2.74 );
setEffScaleKey( spep_2-3 + 98, ctbago, 2.63, 2.75 );
setEffScaleKey( spep_2-3 + 100, ctbago, 2.66, 2.79 );
setEffScaleKey( spep_2-3 + 102, ctbago, 2.72, 2.85 );
setEffScaleKey( spep_2-3 + 104, ctbago, 3, 3.14 );
setEffScaleKey( spep_2-3 + 106, ctbago, 3.16, 3.31 );
setEffScaleKey( spep_2-3 + 108, ctbago, 3.22, 3.37 );

setEffRotateKey( spep_2-3 + 94, ctbago, 30 );
setEffRotateKey( spep_2-3 + 108, ctbago, 30 );

setEffAlphaKey( spep_2-3 + 94, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 102, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 104, ctbago, 126 );
setEffAlphaKey( spep_2-3 + 106, ctbago, 50 );
setEffAlphaKey( spep_2-3 + 108, ctbago, 23 );

--文字エントリー
ctzudodo = entryEffectLife( spep_2-3 + 320,  10014, 58, 0x100, -1, 0, 20.8, 259.6 );--ズドドドッ
setEffShake( spep_2-3 + 320, ctzudodo, 58, 10 );
setEffMoveKey( spep_2-3 + 320, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 322, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 324, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 326, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 328, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 330, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 332, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 334, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 336, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 338, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 340, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 342, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 344, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 346, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 348, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 350, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 352, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 354, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 356, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 358, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 360, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 362, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 364, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 366, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 368, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 370, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 372, ctzudodo, 21, 278.2 , 0 );
setEffMoveKey( spep_2-3 + 374, ctzudodo, 20.8, 259.6 , 0 );
setEffMoveKey( spep_2-3 + 376, ctzudodo, 36.9, 281.1 , 0 );
setEffMoveKey( spep_2-3 + 378, ctzudodo, 21, 278.2 , 0 );

setEffScaleKey( spep_2-3 + 320, ctzudodo, 2.67, 2.69 );
setEffScaleKey( spep_2-3 + 378, ctzudodo, 2.67, 2.69 );

setEffRotateKey( spep_2-3 + 320, ctzudodo, -17.6 );
setEffRotateKey( spep_2-3 + 378, ctzudodo, -17.6 );

setEffAlphaKey( spep_2-3 + 320, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 378, ctzudodo, 255 );

--敵の動き
setDisp( spep_2-3 + 80, 1, 1);
setDisp( spep_2-1 + 110, 1, 0);

changeAnime( spep_2-3 + 80, 1, 104);
changeAnime( spep_2-3 + 86, 1, 108);

setMoveKey( spep_2-3 + 80, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 82, 1, 1.1, -0.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, 4.5, -2.1 , 0 );
setMoveKey( spep_2-3 + 85, 1, 4.5, -2.1 , 0 );

setMoveKey( spep_2-3 + 86, 1, 22.9, 14.5 , 0 );
setMoveKey( spep_2-3 + 88, 1, 30.4, 10.3 , 0 );
setMoveKey( spep_2-3 + 90, 1, 40.1, 5 , 0 );
setMoveKey( spep_2-3 + 92, 1, 51.8, -1.6 , 0 );
setMoveKey( spep_2-3 + 94, 1, 65.8, -9.3 , 0 );
setMoveKey( spep_2-3 + 96, 1, 81.8, -18.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 100, -28.3 , 0 );
setMoveKey( spep_2-3 + 100, 1, 120.4, -39.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 142.9, -52.1 , 0 );
setMoveKey( spep_2-3 + 104, 1, 167.5, -65.8 , 0 );
setMoveKey( spep_2-3 + 106, 1, 194.3, -80.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 223.2, -96.7 , 0 );
setMoveKey( spep_2-1 + 110, 1, 239.5, -104.9 , 0 );

setScaleKey( spep_2-3 + 80, 1,1.86, 1.86 );
setScaleKey( spep_2-3 + 82, 1,1.86, 1.86 );
setScaleKey( spep_2-3 + 84, 1,1.83, 1.83 );
setScaleKey( spep_2-3 + 85, 1,1.83, 1.83 );
setScaleKey( spep_2-3 + 86, 1,1.8, 1.8 );
setScaleKey( spep_2-3 + 88, 1,1.75, 1.75 );
setScaleKey( spep_2-3 + 90, 1,1.7, 1.7 );
setScaleKey( spep_2-3 + 92, 1,1.63, 1.63 );
setScaleKey( spep_2-3 + 94, 1,1.55, 1.55 );
setScaleKey( spep_2-3 + 96, 1,1.44, 1.44 );
setScaleKey( spep_2-3 + 98, 1,1.34, 1.34 );
setScaleKey( spep_2-3 + 100, 1,1.22, 1.22 );
setScaleKey( spep_2-3 + 102, 1,1.09, 1.09 );
setScaleKey( spep_2-3 + 104, 1,0.94, 0.94 );
setScaleKey( spep_2-3 + 106, 1,0.78, 0.78 );
setScaleKey( spep_2-3 + 108, 1,0.61, 0.61 );
setScaleKey( spep_2-1 + 110, 1,0.61, 0.61 );

setRotateKey( spep_2-3 + 80, 1, 10 );
setRotateKey( spep_2-3 + 85, 1, 10 );

setRotateKey( spep_2-3 + 86, 1, 25 );
setRotateKey( spep_2-1 + 110, 1, 25 );

--敵の動き
setDisp( spep_2-3 + 410, 1, 1);
setDisp( spep_2-1 + 478, 1, 0);

changeAnime( spep_2-3 + 410, 1, 8);
changeAnime( spep_2-3 + 460, 1, 6);

setMoveKey( spep_2-3 + 410, 1, 206.4, 281 , 0 );
setMoveKey( spep_2-3 + 412, 1, 209.4, 289.3 , 0 );
setMoveKey( spep_2-3 + 414, 1, 189.2, 258.7 , 0 );
setMoveKey( spep_2-3 + 416, 1, 169.9, 242.8 , 0 );
setMoveKey( spep_2-3 + 418, 1, 89.9, 174.3 , 0 );
setMoveKey( spep_2-3 + 420, 1, 52.7, 126.1 , 0 );
setMoveKey( spep_2-3 + 422, 1, 6.5, 89 , 0 );
setMoveKey( spep_2-3 + 424, 1, -3.1, 63.2 , 0 );
setMoveKey( spep_2-3 + 426, 1, -39.9, 39.3 , 0 );
setMoveKey( spep_2-3 + 428, 1, -49.6, 24.9 , 0 );
setMoveKey( spep_2-3 + 430, 1, -62.7, 11.8 , 0 );
setMoveKey( spep_2-3 + 432, 1, -73.3, 1.3 , 0 );
setMoveKey( spep_2-3 + 434, 1, -81.7, -7.2 , 0 );
setMoveKey( spep_2-3 + 436, 1, -88.5, -13.9 , 0 );
setMoveKey( spep_2-3 + 438, 1, -93.8, -19.2 , 0 );
setMoveKey( spep_2-3 + 440, 1, -97.7, -23.1 , 0 );
setMoveKey( spep_2-3 + 442, 1, -100.6, -26 , 0 );
setMoveKey( spep_2-3 + 444, 1, -102.5, -27.9 , 0 );
setMoveKey( spep_2-3 + 446, 1, -103.6, -28.9 , 0 );
setMoveKey( spep_2-3 + 448, 1, -103.9, -29.2 , 0 );
setMoveKey( spep_2-3 + 450, 1, -70.5, -27.7 , 0 );
setMoveKey( spep_2-3 + 452, 1, -86.1, 25.7 , 0 );
setMoveKey( spep_2-3 + 454, 1, -45.9, 4.5 , 0 );
setMoveKey( spep_2-3 + 456, 1, -30.2, 67.8 , 0 );
setMoveKey( spep_2-3 + 458, 1, -37.2, 25.9 , 0 );
setMoveKey( spep_2-3 + 459, 1, -37.2, 25.9 , 0 );

setMoveKey( spep_2-3 + 460, 1, -38.2, 43.7 , 0 );
setMoveKey( spep_2-3 + 462, 1, -39.6, 27.4 , 0 );
setMoveKey( spep_2-3 + 464, 1, -46.8, 20 , 0 );
setMoveKey( spep_2-3 + 466, 1, -59.9, 5.9 , 0 );
setMoveKey( spep_2-3 + 468, 1, -81.8, -18.5 , 0 );
setMoveKey( spep_2-3 + 470, 1, -117.3, -58.4 , 0 );
setMoveKey( spep_2-3 + 472, 1, -173.3, -122 , 0 );
setMoveKey( spep_2-3 + 474, 1, -260.5, -221.4 , 0 );
setMoveKey( spep_2-3 + 476, 1, -395.4, -375.6 , 0 );
setMoveKey( spep_2-1 + 478, 1, -395.3, -374.7 , 0 );

setScaleKey( spep_2-3 + 410, 1, 0.6, 0.6 );
setScaleKey( spep_2-1 + 478, 1, 0.6, 0.6 );

setRotateKey( spep_2-3 + 410, 1, -30 );
setRotateKey( spep_2-3 + 459, 1, -30 );

setRotateKey( spep_2-3 + 460, 1, -75.1 );
setRotateKey( spep_2-3 + 462, 1, -75.2 );
setRotateKey( spep_2-3 + 464, 1, -75.5 );
setRotateKey( spep_2-3 + 466, 1, -76.1 );
setRotateKey( spep_2-3 + 468, 1, -77 );
setRotateKey( spep_2-3 + 470, 1, -78.4 );
setRotateKey( spep_2-3 + 472, 1, -80.8 );
setRotateKey( spep_2-3 + 474, 1, -84.4 );
setRotateKey( spep_2-3 + 476, 1, -90 );
setRotateKey( spep_2-1 + 478, 1, -90 );

--敵の動き
setDisp( spep_2-3 + 528, 1, 1);
setDisp( spep_2-1 + 598, 1, 0);

changeAnime( spep_2-3 + 528, 1, 106);

a=0;
b=-28;

setMoveKey( spep_2-3 + 528, 1, 17.8+a, 8.7+b , 0 );
setMoveKey( spep_2-3 + 530, 1, 25.3+a, 5.7+b , 0 );
setMoveKey( spep_2-3 + 532, 1, 19.9+a, 7.7+b , 0 );
setMoveKey( spep_2-3 + 534, 1, 24.9+a, 3.4+b , 0 );
setMoveKey( spep_2-3 + 536, 1, 19.5+a, 7+b , 0 );
setMoveKey( spep_2-3 + 538, 1, 24.4+a, 5.4+b , 0 );
setMoveKey( spep_2-3 + 540, 1, 19.6+a, 4.1+b , 0 );
setMoveKey( spep_2-3 + 542, 1, 25.7+a, 6.1+b , 0 );
setMoveKey( spep_2-3 + 544, 1, 19.3+a, 6.2+b , 0 );
setMoveKey( spep_2-3 + 546, 1, 23.8+a, 3.3+b , 0 );
setMoveKey( spep_2-3 + 548, 1, 20.7+a, 10.1+b , 0 );
setMoveKey( spep_2-3 + 550, 1, 25.6+a, 3.7+b , 0 );
setMoveKey( spep_2-3 + 552, 1, 20.1+a, 7+b , 0 );
setMoveKey( spep_2-3 + 554, 1, 23.4+a, 8.1+b , 0 );
setMoveKey( spep_2-3 + 556, 1, 21.3+a, 2.6+b , 0 );
setMoveKey( spep_2-3 + 558, 1, 21.5+a, 7.5+b , 0 );
setMoveKey( spep_2-3 + 560, 1, 21.8+a, 5.9+b , 0 );
setMoveKey( spep_2-3 + 562, 1, 23.6+a, 5+b , 0 );
setMoveKey( spep_2-3 + 564, 1, 20.9+a, 7.2+b , 0 );
setMoveKey( spep_2-3 + 566, 1, 23+a, 4.5+b , 0 );
setMoveKey( spep_2-3 + 568, 1, 20.6+a, 8.2+b , 0 );
setMoveKey( spep_2-3 + 570, 1, 21.1+a, 3.8+b , 0 );
setMoveKey( spep_2-3 + 572, 1, 23.6+a, 7.4+b , 0 );
setMoveKey( spep_2-3 + 574, 1, 20.3+a, 5.8+b , 0 );
setMoveKey( spep_2-3 + 576, 1, 23.3+a, 5.7+b , 0 );
setMoveKey( spep_2-3 + 578, 1, 22.2+a, 7.7+b , 0 );
setMoveKey( spep_2-3 + 580, 1, 23.3+a, 3.8+b , 0 );
setMoveKey( spep_2-1 + 598, 1, 23.3+a, 3.8+b , 0 );

setScaleKey( spep_2-3 + 528, 1, 2, 2 );
setScaleKey( spep_2-1 + 598, 1, 2, 2 );

setRotateKey( spep_2-3 + 528, 1, -45 );
setRotateKey( spep_2-1 + 598, 1, -45 );

--SE
--ゴルフリ飛んでくる
stopSe( spep_2 + 102, SE006, 16 );
SE008 = playSe( spep_2 + 50, 1277 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 50, SE008, 200 );

--パンチヒット
SE009 = playSe( spep_2 + 78, 1189 );
SE010 = playSe( spep_2 + 82, 1187 );
setSeVolumeByWorkId( spep_2 + 82, SE010, 100 );
SE011 = playSe( spep_2 + 84, 1110 );

--岩ヒット
SE012 = playSe( spep_2 + 108, 1061 );
setSeVolumeByWorkId( spep_2 + 108, SE012, 81 );
SE013 = playSe( spep_2 + 108, 1159 );
setSeVolumeByWorkId( spep_2 + 108, SE013, 91 );

--17号横切る
SE014 = playSe( spep_2 + 172, 44 );
setSeVolumeByWorkId( spep_2 + 172, SE014, 81 );

--高速移動
SE015 = playSe( spep_2 + 198, 1048 );
setSeVolumeByWorkId( spep_2 + 198, SE015, 60 );
stopSe( spep_2 + 198 + 10,SE015,0);
SE018 = playSe( spep_2 + 204, 1048 );
setSeVolumeByWorkId( spep_2 + 204, SE018, 44 );
stopSe( spep_2 + 204 + 10,SE018,0);
SE019 = playSe( spep_2 + 210, 1048 );
setSeVolumeByWorkId( spep_2 + 210, SE019, 50 );
stopSe( spep_2 + 210 + 10,SE019,0);
SE020 = playSe( spep_2 + 216, 1048 );
setSeVolumeByWorkId( spep_2 + 216, SE020, 65 );
stopSe( spep_2 + 216 + 10,SE020,0);
SE021 = playSe( spep_2 + 222, 1048 );
setSeVolumeByWorkId( spep_2 + 222, SE021, 48 );
stopSe( spep_2 + 222 + 10,SE021,0);
SE022 = playSe( spep_2 + 228, 1048 );
setSeVolumeByWorkId( spep_2 + 228, SE022, 55 );
stopSe( spep_2 + 228 + 10,SE022,0);
SE024 = playSe( spep_2 + 234, 1048 );
setSeVolumeByWorkId( spep_2 + 234, SE024, 57 );
stopSe( spep_2 + 234 + 10,SE024,0);
SE025 = playSe( spep_2 + 240, 1048 );
setSeVolumeByWorkId( spep_2 + 240, SE025, 73 );
stopSe( spep_2 + 240 + 10,SE025,0);
SE026 = playSe( spep_2 + 246, 1048 );
setSeVolumeByWorkId( spep_2 + 246, SE026, 54 );
stopSe( spep_2 + 246 + 10,SE026,0);
SE027 = playSe( spep_2 + 252, 1048 );
setSeVolumeByWorkId( spep_2 + 252, SE027, 48 );
stopSe( spep_2 + 252 + 10,SE027,0);
SE028 = playSe( spep_2 + 258, 1048 );
setSeVolumeByWorkId( spep_2 + 258, SE028, 48 );
stopSe( spep_2 + 258 + 10,SE028,0);

--高速移動（ベース）
SE016 = playSe( spep_2 + 198, 8 );
SE017 = playSe( spep_2 + 198, 9 );
setSeVolumeByWorkId( spep_2 + 198, SE017, 70 );
SE042 = playSe( spep_2 + 324, 9 );
stopSe( spep_2 + 388, SE042, 0 );

--画面遷移
SE023 = playSe( spep_2 + 228, 1072 );

--連続気弾
SE029 = playSe( spep_2 + 262, 1016 ,"",0.5);
stopSe( spep_2 + 262 +14,SE029,10);
SE030 = playSe( spep_2 + 268, 1016 ,"",0.5);
stopSe( spep_2 + 268 +14,SE030,10);
SE031 = playSe( spep_2 + 274, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 274, SE031, 76 );
stopSe( spep_2 + 274 +14,SE031,10);
SE032 = playSe( spep_2 + 280, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 280, SE032, 93 );
stopSe( spep_2 + 280 +14,SE032,10);
SE033 = playSe( spep_2 + 286, 1016 ,"",0.5);
stopSe( spep_2 + 286 +14,SE033,10);
SE034 = playSe( spep_2 + 292, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 292, SE034, 95 );
stopSe( spep_2 + 292 +14,SE034,10);
SE035 = playSe( spep_2 + 298, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 298, SE035, 76 );
stopSe( spep_2 + 298 +14,SE035,10);
SE036 = playSe( spep_2 + 304, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 304, SE036, 68 );
stopSe( spep_2 + 304 +14,SE036,10);
SE037 = playSe( spep_2 + 310, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 310, SE037, 87 );
stopSe( spep_2 + 310 +14,SE037,10);

--連続爆発
SE038 = playSe( spep_2 + 316, 1025 );
stopSe( spep_2 + 324, SE038, 12 );
setSeVolumeByWorkId( spep_2 + 316, SE038, 130 );
SE040 = playSe( spep_2 + 322, 1024 );
setSeVolumeByWorkId( spep_2 + 322, SE040, 120 );
SE043 = playSe( spep_2 + 326, 1025 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 326, SE043, 130 );
stopSe( spep_2 + 334, SE043, 12 );
SE046 = playSe( spep_2 + 338, 1025 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 338, SE046, 130 );
stopSe( spep_2 + 346, SE046, 12 );

--爆発中気弾
--SE039 = playSe( spep_2 + 316, 1016 ,"",0.5);
--setSeVolumeByWorkId( spep_2 + 316, SE039, 69 );
--stopSe( spep_2 + 316 +12,SE039,8);
SE041 = playSe( spep_2 + 322, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 322, SE041, 72 );
stopSe( spep_2 + 322 +12,SE041,8);
--SE044 = playSe( spep_2 + 328, 1016 ,"",0.5);
--setSeVolumeByWorkId( spep_2 + 328, SE044, 60 );
--stopSe( spep_2 + 328 +12,SE044,8);
SE045 = playSe( spep_2 + 334, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 334, SE045, 82 );
stopSe( spep_2 + 334 +12,SE045,8);
--SE047 = playSe( spep_2 + 340, 1016 ,"",0.5);
--setSeVolumeByWorkId( spep_2 + 340, SE047, 85 );
--stopSe( spep_2 + 340 +12,SE047,8);
SE048 = playSe( spep_2 + 346, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 346, SE048, 86 );
stopSe( spep_2 + 346 +12,SE048,8);
SE049 = playSe( spep_2 + 352, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 352, SE049, 80 );
stopSe( spep_2 + 352 +12,SE049,8);
SE050 = playSe( spep_2 + 358, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_2 + 358, SE050, 67 );
stopSe( spep_2 + 358 +12,SE050,8);

--ゴルフリ飛んでくる
SE051 = playSe( spep_2 + 378, 1116 );
stopSe( spep_2 + 400, SE051, 16 );
SE052 = playSe( spep_2 + 378, 1117 );
stopSe( spep_2 + 400, SE052, 16 );

--キックヒット
SE053 = playSe( spep_2 + 402, 1123 );
setSeVolumeByWorkId( spep_2 + 402, SE053, 88 );
SE054 = playSe( spep_2 + 402, 1011 );
setSeVolumeByWorkId( spep_2 + 402, SE054, 85 );

--岩爆発
SE055 = playSe( spep_2 + 442, 1061 );
setSeVolumeByWorkId( spep_2 + 442, SE055, 85 );
SE056 = playSe( spep_2 + 442, 1011 );

--そして地面へ
SE057 = playSe( spep_2 + 478, 1061 );
setSeVolumeByWorkId( spep_2 + 478, SE057, 82 );
SE058 = playSe( spep_2 + 478, 1159 );
setSeVolumeByWorkId( spep_2 + 478, SE058, 84 );
setPitch( spep_2 + 550, SE059, 500 );
setTimeStretch( SE059, 1.33, 10, 1 );

--17号気弾溜め
SE059 = playSe( spep_2 + 542, 45 );
setSeVolumeByWorkId( spep_2 + 542, SE059, 56 );
setPitch( spep_2 + 542, SE059, 500 );
setTimeStretch( SE059, 1.33, 10, 1 );
SE060 = playSe( spep_2 + 542, 1144 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 542, SE060, 50 );
stopSe( spep_2 + 638, SE060, 14 );
SE061 = playSe( spep_2 + 542, 1265 ,"",0.6);
stopSe( spep_2 + 638, SE061, 30 );
SE063 = playSe( spep_2 + 548, 1191 ,"",0.6);
stopSe( spep_2 + 598, SE063, 50 );

--気弾膨れ上がる
SE062 = playSe( spep_2 + 652, 1266 );
setSeVolumeByWorkId( spep_2 + 652, SE062, 0 );
setSeVolumeByWorkId( spep_2 + 653, SE062, 6.2 );
setSeVolumeByWorkId( spep_2 + 654, SE062, 12.4 );
setSeVolumeByWorkId( spep_2 + 655, SE062, 18.6 );
setSeVolumeByWorkId( spep_2 + 656, SE062, 24.8 );
setSeVolumeByWorkId( spep_2 + 657, SE062, 31 );
setSeVolumeByWorkId( spep_2 + 658, SE062, 37.2 );
setSeVolumeByWorkId( spep_2 + 659, SE062, 43.4 );
setSeVolumeByWorkId( spep_2 + 660, SE062, 50 );
setStartTimeMs( SE062,  1833 );
stopSe( spep_2 + 736, SE062, 24 );
SE067 = playSe( spep_2 + 680, 1306 );
setSeVolumeByWorkId( spep_2 + 680, SE067, 70 );
stopSe( spep_2 + 724, SE067, 18 );
SE068 = playSe( spep_2 + 680, 1307 );
setSeVolumeByWorkId( spep_2 + 680, SE068, 71 );
stopSe( spep_2 + 726, SE068, 16 );
SE069 = playSe( spep_2 + 680, 1282 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 680, SE069, 50 );

--気弾押し込む
SE064 = playSe( spep_2 + 628, 1056 );
SE065 = playSe( spep_2 + 636, 1114 );
stopSe( spep_2 + 686, SE065, 28 );
SE066 = playSe( spep_2 + 640, 1024 );
setSeVolumeByWorkId( spep_2 + 640, SE066, 78 );
stopSe( spep_2 + 668, SE066, 16 );

--爆発
SE070 = playSe( spep_2 + 740, 1159 );
setSeVolumeByWorkId( spep_2 + 740, SE070, 88 );
SE071 = playSe( spep_2 + 744, 1188 );
setSeVolumeByWorkId( spep_2 + 744, SE071, 87 );
SE072 = playSe( spep_2 + 750, 1067 );
setSeVolumeByWorkId( spep_2 + 750, SE072, 138 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 710 );
endPhase( spep_2 + 810 );
end