--1025790:ヤムチャ_狼牙風風拳
--sp_effect_b4_00268

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
SP_01=  161036  ;-- 開幕〜カードカットインまで
SP_02=  161037  ;-- 正面ダッシュ〜回し蹴り
SP_03=  161039  ;-- 正面ダッシュ〜回し蹴り
SP_04=  161041  ;-- フィニッシュ
SP_05=  161042  ;-- フィニッシュ

--エフェクト(敵)
SP_01x= 161036  ;-- 開幕〜カードカットインまで   
SP_02x= 161038  ;-- 正面ダッシュ〜回し蹴り (敵)
SP_03x= 161040  ;-- 正面ダッシュ〜回し蹴り (敵)
SP_04x= 161041  ;-- フィニッシュ  
SP_05x= 161042  ;-- フィニッシュ  

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
changeAnime( 0, 1, 0);

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
--開幕〜カードカットインまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, opening, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, opening, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening, 0 );
setEffRotateKey( spep_0 + 90, opening, 0 );
setEffAlphaKey( spep_0 + 0, opening, 255 );
setEffAlphaKey( spep_0 + 90, opening, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
]]

--SE
--顔カットイン
SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 40, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE002, 59 );
SE003 = playSeVer2( spep_0 + 50, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 80 );

--白フェード
entryFade( spep_0 +82 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--正面ダッシュ〜回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, dash_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash_f, 0 );
setEffRotateKey( spep_2 + 300, dash_f, 0 );
setEffAlphaKey( spep_2 + 0, dash_f, 255 );
setEffAlphaKey( spep_2 + 298, dash_f, 255 );
setEffAlphaKey( spep_2 + 299, dash_f, 255 );
setEffAlphaKey( spep_2 + 300, dash_f, 0 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, dash_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash_b, 0 );
setEffRotateKey( spep_2 + 300, dash_b, 0 );
setEffAlphaKey( spep_2 + 0, dash_b, 255 );
setEffAlphaKey( spep_2 + 298, dash_b, 255 );
setEffAlphaKey( spep_2 + 299, dash_b, 255 );
setEffAlphaKey( spep_2 + 300, dash_b, 0 );

--SE
--ダッシュする
SE005 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 0, 1277, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 300, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
       
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵側の動き
setDisp( spep_2-27 + 48, 1, 1);
setDisp( spep_2-27 + 230, 1, 0);

changeAnime( spep_2-27 + 48, 1, 104);
changeAnime( spep_2-27 + 82, 1, 108);
changeAnime( spep_2-27 + 102, 1, 106);
changeAnime( spep_2-27 + 142, 1, 108);
changeAnime( spep_2-27 + 174, 1, 117);
changeAnime( spep_2-27 + 196, 1, 118);
changeAnime( spep_2-27 + 220, 1, 108);

setMoveKey( spep_2-27 + 48, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_2-27 + 49, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_2-27 + 50, 1, 231, 19.7 , 0 );
setMoveKey( spep_2-27 + 51, 1, 231, 19.7 , 0 );
setMoveKey( spep_2-27 + 52, 1, 222.6, 17 , 0 );
setMoveKey( spep_2-27 + 53, 1, 222.6, 17 , 0 );
setMoveKey( spep_2-27 + 54, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_2-27 + 55, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_2-27 + 56, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_2-27 + 57, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_2-27 + 58, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_2-27 + 59, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_2-27 + 60, 1, 188.6, 6 , 0 );
setMoveKey( spep_2-27 + 61, 1, 188.6, 6 , 0 );
setMoveKey( spep_2-27 + 62, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_2-27 + 63, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_2-27 + 64, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_2-27 + 65, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_2-27 + 66, 1, 156, -4.4 , 0 );
setMoveKey( spep_2-27 + 67, 1, 156, -4.4 , 0 );
setMoveKey( spep_2-27 + 68, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_2-27 + 69, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_2-27 + 70, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_2-27 + 71, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_2-27 + 72, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_2-27 + 73, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_2-27 + 74, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_2-27 + 75, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_2-27 + 76, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_2-27 + 77, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_2-27 + 78, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_2-27 + 79, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_2-27 + 80, 1, 75.2, -35.5 , 0 );
setMoveKey( spep_2-27 + 81, 1, 75.2, -35.5 , 0 );

setMoveKey( spep_2-27 + 82, 1, 118, -21.9 , 0 );
setMoveKey( spep_2-27 + 83, 1, 118, -21.9 , 0 );
setMoveKey( spep_2-27 + 84, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_2-27 + 85, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_2-27 + 86, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_2-27 + 87, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_2-27 + 88, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_2-27 + 89, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_2-27 + 90, 1, 129.3, -7 , 0 );
setMoveKey( spep_2-27 + 91, 1, 129.3, -7 , 0 );
setMoveKey( spep_2-27 + 92, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_2-27 + 93, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_2-27 + 94, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_2-27 + 95, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_2-27 + 96, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_2-27 + 97, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_2-27 + 98, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_2-27 + 99, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_2-27 + 100, 1, 124.7, -9.3 , 0 );
setMoveKey( spep_2-27 + 101, 1, 124.7, -9.3 , 0 );

setMoveKey( spep_2-27 + 102, 1, 127.2, -43 , 0 );
setMoveKey( spep_2-27 + 103, 1, 127.2, -43 , 0 );
setMoveKey( spep_2-27 + 104, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_2-27 + 105, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_2-27 + 106, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_2-27 + 107, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_2-27 + 108, 1, 103.5, -34 , 0 );
setMoveKey( spep_2-27 + 109, 1, 103.5, -34 , 0 );
setMoveKey( spep_2-27 + 110, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_2-27 + 111, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_2-27 + 112, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_2-27 + 113, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_2-27 + 114, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_2-27 + 115, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_2-27 + 116, 1, 100.8, -30 , 0 );
setMoveKey( spep_2-27 + 117, 1, 100.8, -30 , 0 );
setMoveKey( spep_2-27 + 118, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_2-27 + 119, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_2-27 + 120, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_2-27 + 121, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_2-27 + 122, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_2-27 + 123, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_2-27 + 124, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_2-27 + 125, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_2-27 + 126, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_2-27 + 127, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_2-27 + 128, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_2-27 + 129, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_2-27 + 130, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_2-27 + 131, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_2-27 + 132, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_2-27 + 133, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_2-27 + 134, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_2-27 + 135, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_2-27 + 136, 1, 98, -15.5 , 0 );
setMoveKey( spep_2-27 + 137, 1, 98, -15.5 , 0 );
setMoveKey( spep_2-27 + 138, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_2-27 + 139, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_2-27 + 140, 1, 98.9, -14.5 , 0 );
setMoveKey( spep_2-27 + 141, 1, 98.9, -14.5 , 0 );

setMoveKey( spep_2-27 + 142, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_2-27 + 143, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_2-27 + 144, 1, 214.9, -21 , 0 );
setMoveKey( spep_2-27 + 145, 1, 214.9, -21 , 0 );
setMoveKey( spep_2-27 + 146, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_2-27 + 147, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_2-27 + 148, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_2-27 + 149, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_2-27 + 150, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_2-27 + 151, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_2-27 + 152, 1, 193, -2 , 0 );
setMoveKey( spep_2-27 + 153, 1, 193, -2 , 0 );
setMoveKey( spep_2-27 + 154, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_2-27 + 155, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_2-27 + 156, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_2-27 + 157, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_2-27 + 158, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_2-27 + 159, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_2-27 + 160, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_2-27 + 161, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_2-27 + 162, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_2-27 + 163, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_2-27 + 164, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_2-27 + 165, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_2-27 + 166, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_2-27 + 167, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_2-27 + 168, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_2-27 + 169, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_2-27 + 170, 1, 226.4, 7 , 0 );
setMoveKey( spep_2-27 + 171, 1, 226.4, 7 , 0 );
setMoveKey( spep_2-27 + 172, 1, 234.8, 13.4 , 0 );
setMoveKey( spep_2-27 + 173, 1, 234.8, 13.4 , 0 );

setMoveKey( spep_2-27 + 174, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_2-27 + 175, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_2-27 + 176, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_2-27 + 177, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_2-27 + 178, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_2-27 + 179, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_2-27 + 180, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_2-27 + 181, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_2-27 + 182, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_2-27 + 183, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_2-27 + 184, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_2-27 + 185, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_2-27 + 186, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_2-27 + 187, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_2-27 + 188, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_2-27 + 189, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_2-27 + 190, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_2-27 + 191, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_2-27 + 192, 1, 125, -79.2 , 0 );
setMoveKey( spep_2-27 + 193, 1, 125, -79.2 , 0 );
setMoveKey( spep_2-27 + 194, 1, 125.1, -79.2 , 0 );
setMoveKey( spep_2-27 + 195, 1, 125.1, -79.2 , 0 );

setMoveKey( spep_2-27 + 196, 1, 153.4, 305.4 , 0 );
setMoveKey( spep_2-27 + 219, 1, 153.4, 305.4 , 0 );

setMoveKey( spep_2-27 + 220, 1, 43.3, 481 , 0 );
setMoveKey( spep_2-27 + 221, 1, 43.3, 481 , 0 );
setMoveKey( spep_2-27 + 222, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_2-27 + 223, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_2-27 + 224, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_2-27 + 225, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_2-27 + 226, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_2-27 + 227, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_2-27 + 228, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_2-27 + 229, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_2-27 + 230, 1, 88.8, 491.9 , 0 );
setMoveKey( spep_2-27 + 230, 1, 88.8, 491.9 , 0 );

setScaleKey( spep_2-27 + 48, 1, 1.96, 1.95 );
setScaleKey( spep_2-27 + 67, 1, 1.96, 1.95 );
setScaleKey( spep_2-27 + 68, 1, 1.95, 1.95 );
setScaleKey( spep_2-27 + 81, 1, 1.95, 1.95 );

setScaleKey( spep_2-27 + 82, 1, 2.63, 2.62 );
setScaleKey( spep_2-27 + 83, 1, 2.63, 2.62 );
setScaleKey( spep_2-27 + 84, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 85, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 86, 1, 2.68, 2.68 );
setScaleKey( spep_2-27 + 87, 1, 2.68, 2.68 );
setScaleKey( spep_2-27 + 88, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 89, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 90, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 91, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 92, 1, 2.15, 2.15 );
setScaleKey( spep_2-27 + 93, 1, 2.15, 2.15 );
setScaleKey( spep_2-27 + 94, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 95, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 96, 1, 2.11, 2.11 );
setScaleKey( spep_2-27 + 97, 1, 2.11, 2.11 );
setScaleKey( spep_2-27 + 98, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 100, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 101, 1, 2.1, 2.1 );

setScaleKey( spep_2-27 + 104, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 105, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 107, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 109, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 110, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 111, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 112, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 113, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 114, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 115, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 116, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 117, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 118, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 120, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 121, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 122, 1, 2.38, 2.38 );
setScaleKey( spep_2-27 + 123, 1, 2.38, 2.38 );
setScaleKey( spep_2-27 + 124, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 125, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 126, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 127, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 128, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 129, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 130, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 131, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 132, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 133, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 134, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 135, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 136, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 137, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 138, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 141, 1, 1.73, 1.73 );

setScaleKey( spep_2-27 + 142, 1, 3.67, 3.67 );
setScaleKey( spep_2-27 + 143, 1, 3.67, 3.67 );
setScaleKey( spep_2-27 + 144, 1, 2.89, 2.89 );
setScaleKey( spep_2-27 + 145, 1, 2.89, 2.89 );
setScaleKey( spep_2-27 + 146, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 147, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 148, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 149, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 150, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 153, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 154, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 155, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 156, 1, 2.16, 2.16 );
setScaleKey( spep_2-27 + 157, 1, 2.16, 2.16 );
setScaleKey( spep_2-27 + 158, 1, 2.14, 2.14 );
setScaleKey( spep_2-27 + 159, 1, 2.14, 2.14 );
setScaleKey( spep_2-27 + 160, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 161, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 162, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 164, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 165, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 166, 1, 2.07, 2.07 );
setScaleKey( spep_2-27 + 168, 1, 2.07, 2.07 );
setScaleKey( spep_2-27 + 169, 1, 2.07, 2.07 );
setScaleKey( spep_2-27 + 170, 1, 2.04, 2.04 );
setScaleKey( spep_2-27 + 171, 1, 2.04, 2.04 );
setScaleKey( spep_2-27 + 172, 1, 2.03, 2.03 );
setScaleKey( spep_2-27 + 173, 1, 2.03, 2.03 );

setScaleKey( spep_2-27 + 174, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 175, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 176, 1, 1.81, 1.81 );
setScaleKey( spep_2-27 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_2-27 + 179, 1, 1.81, 1.81 );
setScaleKey( spep_2-27 + 180, 1, 1.8, 1.8 );
setScaleKey( spep_2-27 + 195, 1, 1.8, 1.8 );

setScaleKey( spep_2-27 + 196, 1, 5.78, 5.78 );
setScaleKey( spep_2-27 + 219, 1, 5.78, 5.78 );

setScaleKey( spep_2-27 + 220, 1, 6.29, 6.29 );
setScaleKey( spep_2-27 + 230, 1, 6.29, 6.29 );

setRotateKey( spep_2-27 + 48, 1, 0 );
setRotateKey( spep_2-27 + 101, 1, 0 );

setRotateKey( spep_2-27 + 102, 1, -48.2 );
setRotateKey( spep_2-27 + 104, 1, -48.2 );
setRotateKey( spep_2-27 + 105, 1, -48.2 );
setRotateKey( spep_2-27 + 106, 1, -48 );
setRotateKey( spep_2-27 + 108, 1, -48 );
setRotateKey( spep_2-27 + 109, 1, -48 );
setRotateKey( spep_2-27 + 110, 1, -47.7 );
setRotateKey( spep_2-27 + 112, 1, -47.7 );
setRotateKey( spep_2-27 + 113, 1, -47.7 );
setRotateKey( spep_2-27 + 114, 1, -47.4 );
setRotateKey( spep_2-27 + 116, 1, -47.4 );
setRotateKey( spep_2-27 + 117, 1, -47.4 );
setRotateKey( spep_2-27 + 118, 1, -47.2 );
setRotateKey( spep_2-27 + 120, 1, -47.2 );
setRotateKey( spep_2-27 + 121, 1, -47.2 );
setRotateKey( spep_2-27 + 122, 1, -56.8 );
setRotateKey( spep_2-27 + 124, 1, -56.8 );
setRotateKey( spep_2-27 + 125, 1, -56.8 );
setRotateKey( spep_2-27 + 126, 1, -55.4 );
setRotateKey( spep_2-27 + 128, 1, -55.4 );
setRotateKey( spep_2-27 + 130, 1, -54.4 );
setRotateKey( spep_2-27 + 132, 1, -54.4 );
setRotateKey( spep_2-27 + 133, 1, -54.4 );
setRotateKey( spep_2-27 + 134, 1, -53.7 );
setRotateKey( spep_2-27 + 136, 1, -53.7 );
setRotateKey( spep_2-27 + 137, 1, -53.7 );
setRotateKey( spep_2-27 + 138, 1, -53.4 );
setRotateKey( spep_2-27 + 141, 1, -53.4 );

setRotateKey( spep_2-27 + 142, 1, 0 );
setRotateKey( spep_2-27 + 219, 1, 0 );

setRotateKey( spep_2-27 + 220, 1, 24.8 );
setRotateKey( spep_2-27 + 221, 1, 24.8 );
setRotateKey( spep_2-27 + 222, 1, 60.9 );
setRotateKey( spep_2-27 + 224, 1, 60.9 );
setRotateKey( spep_2-27 + 225, 1, 60.9 );
setRotateKey( spep_2-27 + 226, 1, 64.2 );
setRotateKey( spep_2-27 + 228, 1, 64.2 );
setRotateKey( spep_2-27 + 229, 1, 64.2 );
setRotateKey( spep_2-27 + 230, 1, 66 );
setRotateKey( spep_2-27 + 230, 1, 66 );

--敵側の動き
setDisp( spep_2-27 + 276, 1, 1);
setDisp( spep_2-25 + 300, 1, 0);

changeAnime( spep_2-27 + 276, 1, 108);
changeAnime( spep_2-27 + 288, 1, 106);

setMoveKey( spep_2-27 + 276, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_2-27 + 279, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_2-27 + 280, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_2-27 + 283, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_2-27 + 284, 1, -68.5, -248 , 0 );
setMoveKey( spep_2-27 + 285, 1, -68.5, -248 , 0 );
setMoveKey( spep_2-27 + 286, 1, -98.1, -341 , 0 );
setMoveKey( spep_2-27 + 287, 1, -98.1, -341 , 0 );

setMoveKey( spep_2-27 + 288, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_2-27 + 289, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_2-27 + 290, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_2-27 + 291, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_2-27 + 292, 1, -234, -6 , 0 );
setMoveKey( spep_2-27 + 293, 1, -234, -6 , 0 );
setMoveKey( spep_2-27 + 294, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_2-27 + 295, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_2-27 + 296, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_2-27 + 297, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_2-27 + 298, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_2-27 + 299, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_2-27 + 300, 1, -635.2, -97.5 , 0 );
setMoveKey( spep_2-25 + 300, 1, -635.2, -97.5 , 0 );

setScaleKey( spep_2-27 + 276, 1, 6.99, 6.99 );
setScaleKey( spep_2-27 + 285, 1, 6.99, 6.99 );
setScaleKey( spep_2-27 + 286, 1, 9.62, 9.62 );
setScaleKey( spep_2-27 + 287, 1, 9.62, 9.62 );

setScaleKey( spep_2-27 + 288, 1, 10.45, 10.45 );
setScaleKey( spep_2-27 + 289, 1, 10.45, 10.45 );
setScaleKey( spep_2-27 + 290, 1, 8.21, 8.21 );
setScaleKey( spep_2-27 + 291, 1, 8.21, 8.21 );
setScaleKey( spep_2-27 + 292, 1, 5.97, 5.97 );
setScaleKey( spep_2-27 + 293, 1, 5.97, 5.97 );
setScaleKey( spep_2-27 + 294, 1, 8.95, 8.95 );
setScaleKey( spep_2-27 + 295, 1, 8.95, 8.95 );
setScaleKey( spep_2-27 + 296, 1, 5.97, 5.97 );
setScaleKey( spep_2-25 + 300, 1, 5.97, 5.97 );

setRotateKey( spep_2-27 + 276, 1, 74.2 );
setRotateKey( spep_2-27 + 287, 1, 74.2 );

setRotateKey( spep_2-27 + 288, 1, -69 );
setRotateKey( spep_2-25 + 300, 1, -69 );

--SE
--向かっていく
SE008 = playSeVer2( spep_2 + 32, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE008, 67 );

--パンチ
SE009 = playSeVer2( spep_2 + 54, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 54, 1110, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_2 + 72, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);

--キック
SE013 = playSeVer2( spep_2 + 92, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE013, 81 );
SE014 = playSeVer2( spep_2 + 92, 1110, "", 0, 0, 0, -1);

--キック２
SE015 = playSeVer2( spep_2 + 112, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE015, 92 );
SE016 = playSeVer2( spep_2 + 112, 1187, "",spep_2 + 170, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 112, SE016, 71 );

--敵立つ
SE017 = playSeVer2( spep_2 + 148, 1013, "", 0, 0, 0, -1);

--下回し蹴り
SE018 = playSeVer2( spep_2 + 174, 1116, "",spep_2 + 216, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 174, 44, "",spep_2 + 216, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 174, SE019, 68 );
SE020 = playSeVer2( spep_2 + 188, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE020, 81 );
SE021 = playSeVer2( spep_2 + 190, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE021, 83 );
SE022 = playSeVer2( spep_2 + 190, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE022, 89 );

--画面遷移
SE023 = playSeVer2( spep_2 + 202, 1232, "", 0, 0, 0, -1);

--後ろ回し蹴り
SE024 = playSeVer2( spep_2 + 246, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE025, 82 );
SE026 = playSeVer2( spep_2 + 258, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE026, 88 );

-- ** 次の準備 ** --
spep_3= spep_2 + 300;
------------------------------------------------------
--ガッ
------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 156, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 156, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 156, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE027 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 98 ); -- 終了フレーム
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕〜カードカットインまで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, opening, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, opening, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening, 0 );
setEffRotateKey( spep_0 + 90, opening, 0 );
setEffAlphaKey( spep_0 + 0, opening, 255 );
setEffAlphaKey( spep_0 + 90, opening, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
]]

--SE
--顔カットイン
SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--構える
SE002 = playSeVer2( spep_0 + 40, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE002, 59 );
SE003 = playSeVer2( spep_0 + 50, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 80 );

--白フェード
entryFade( spep_0 +82 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--正面ダッシュ〜回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, dash_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash_f, 0 );
setEffRotateKey( spep_2 + 300, dash_f, 0 );
setEffAlphaKey( spep_2 + 0, dash_f, 255 );
setEffAlphaKey( spep_2 + 298, dash_f, 255 );
setEffAlphaKey( spep_2 + 299, dash_f, 255 );
setEffAlphaKey( spep_2 + 300, dash_f, 0 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, dash_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash_b, 0 );
setEffRotateKey( spep_2 + 300, dash_b, 0 );
setEffAlphaKey( spep_2 + 0, dash_b, 255 );
setEffAlphaKey( spep_2 + 298, dash_b, 255 );
setEffAlphaKey( spep_2 + 299, dash_b, 255 );
setEffAlphaKey( spep_2 + 300, dash_b, 0 );

--SE
--ダッシュする
SE005 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 0, 1277, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 300, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
       
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--敵側の動き
setDisp( spep_2-27 + 48, 1, 1);
setDisp( spep_2-27 + 230, 1, 0);

changeAnime( spep_2-27 + 48, 1, 104);
changeAnime( spep_2-27 + 82, 1, 108);
changeAnime( spep_2-27 + 102, 1, 106);
changeAnime( spep_2-27 + 142, 1, 108);
changeAnime( spep_2-27 + 174, 1, 117);
changeAnime( spep_2-27 + 196, 1, 118);
changeAnime( spep_2-27 + 220, 1, 108);

setMoveKey( spep_2-27 + 48, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_2-27 + 49, 1, 239.6, 22.5 , 0 );
setMoveKey( spep_2-27 + 50, 1, 231, 19.7 , 0 );
setMoveKey( spep_2-27 + 51, 1, 231, 19.7 , 0 );
setMoveKey( spep_2-27 + 52, 1, 222.6, 17 , 0 );
setMoveKey( spep_2-27 + 53, 1, 222.6, 17 , 0 );
setMoveKey( spep_2-27 + 54, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_2-27 + 55, 1, 214.1, 14.2 , 0 );
setMoveKey( spep_2-27 + 56, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_2-27 + 57, 1, 205.5, 11.5 , 0 );
setMoveKey( spep_2-27 + 58, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_2-27 + 59, 1, 197.1, 8.8 , 0 );
setMoveKey( spep_2-27 + 60, 1, 188.6, 6 , 0 );
setMoveKey( spep_2-27 + 61, 1, 188.6, 6 , 0 );
setMoveKey( spep_2-27 + 62, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_2-27 + 63, 1, 180.1, 3.3 , 0 );
setMoveKey( spep_2-27 + 64, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_2-27 + 65, 1, 171.6, 0.5 , 0 );
setMoveKey( spep_2-27 + 66, 1, 156, -4.4 , 0 );
setMoveKey( spep_2-27 + 67, 1, 156, -4.4 , 0 );
setMoveKey( spep_2-27 + 68, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_2-27 + 69, 1, 140.3, -9.4 , 0 );
setMoveKey( spep_2-27 + 70, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_2-27 + 71, 1, 122.9, -15.3 , 0 );
setMoveKey( spep_2-27 + 72, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_2-27 + 73, 1, 105.1, -21.7 , 0 );
setMoveKey( spep_2-27 + 74, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_2-27 + 75, 1, 86.7, -28.3 , 0 );
setMoveKey( spep_2-27 + 76, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_2-27 + 77, 1, 83.4, -30.4 , 0 );
setMoveKey( spep_2-27 + 78, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_2-27 + 79, 1, 79.6, -32.8 , 0 );
setMoveKey( spep_2-27 + 80, 1, 75.2, -35.5 , 0 );
setMoveKey( spep_2-27 + 81, 1, 75.2, -35.5 , 0 );

setMoveKey( spep_2-27 + 82, 1, 118, -21.9 , 0 );
setMoveKey( spep_2-27 + 83, 1, 118, -21.9 , 0 );
setMoveKey( spep_2-27 + 84, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_2-27 + 85, 1, 139.5, -26.3 , 0 );
setMoveKey( spep_2-27 + 86, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_2-27 + 87, 1, 137.3, -17.4 , 0 );
setMoveKey( spep_2-27 + 88, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_2-27 + 89, 1, 115.2, -14.3 , 0 );
setMoveKey( spep_2-27 + 90, 1, 129.3, -7 , 0 );
setMoveKey( spep_2-27 + 91, 1, 129.3, -7 , 0 );
setMoveKey( spep_2-27 + 92, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_2-27 + 93, 1, 116.7, -16.1 , 0 );
setMoveKey( spep_2-27 + 94, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_2-27 + 95, 1, 117.9, -5.6 , 0 );
setMoveKey( spep_2-27 + 96, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_2-27 + 97, 1, 128.1, -16.9 , 0 );
setMoveKey( spep_2-27 + 98, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_2-27 + 99, 1, 124.9, -9.3 , 0 );
setMoveKey( spep_2-27 + 100, 1, 124.7, -9.3 , 0 );
setMoveKey( spep_2-27 + 101, 1, 124.7, -9.3 , 0 );

setMoveKey( spep_2-27 + 102, 1, 127.2, -43 , 0 );
setMoveKey( spep_2-27 + 103, 1, 127.2, -43 , 0 );
setMoveKey( spep_2-27 + 104, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_2-27 + 105, 1, 159.1, -54.8 , 0 );
setMoveKey( spep_2-27 + 106, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_2-27 + 107, 1, 134.2, -45.3 , 0 );
setMoveKey( spep_2-27 + 108, 1, 103.5, -34 , 0 );
setMoveKey( spep_2-27 + 109, 1, 103.5, -34 , 0 );
setMoveKey( spep_2-27 + 110, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_2-27 + 111, 1, 105.4, -34.6 , 0 );
setMoveKey( spep_2-27 + 112, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_2-27 + 113, 1, 111.3, -29.6 , 0 );
setMoveKey( spep_2-27 + 114, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_2-27 + 115, 1, 102.5, -39.6 , 0 );
setMoveKey( spep_2-27 + 116, 1, 100.8, -30 , 0 );
setMoveKey( spep_2-27 + 117, 1, 100.8, -30 , 0 );
setMoveKey( spep_2-27 + 118, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_2-27 + 119, 1, 108.7, -35.7 , 0 );
setMoveKey( spep_2-27 + 120, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_2-27 + 121, 1, 108.5, -35.6 , 0 );
setMoveKey( spep_2-27 + 122, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_2-27 + 123, 1, 112.1, -31.9 , 0 );
setMoveKey( spep_2-27 + 124, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_2-27 + 125, 1, 139.9, -40.7 , 0 );
setMoveKey( spep_2-27 + 126, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_2-27 + 127, 1, 122.4, -27.7 , 0 );
setMoveKey( spep_2-27 + 128, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_2-27 + 129, 1, 101.8, -16.1 , 0 );
setMoveKey( spep_2-27 + 130, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_2-27 + 131, 1, 93.8, -22.4 , 0 );
setMoveKey( spep_2-27 + 132, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_2-27 + 133, 1, 91.6, -12.7 , 0 );
setMoveKey( spep_2-27 + 134, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_2-27 + 135, 1, 98.7, -15.6 , 0 );
setMoveKey( spep_2-27 + 136, 1, 98, -15.5 , 0 );
setMoveKey( spep_2-27 + 137, 1, 98, -15.5 , 0 );
setMoveKey( spep_2-27 + 138, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_2-27 + 139, 1, 99.1, -14.5 , 0 );
setMoveKey( spep_2-27 + 140, 1, 98.9, -14.5 , 0 );
setMoveKey( spep_2-27 + 141, 1, 98.9, -14.5 , 0 );

setMoveKey( spep_2-27 + 142, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_2-27 + 143, 1, 270.8, -26.7 , 0 );
setMoveKey( spep_2-27 + 144, 1, 214.9, -21 , 0 );
setMoveKey( spep_2-27 + 145, 1, 214.9, -21 , 0 );
setMoveKey( spep_2-27 + 146, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_2-27 + 147, 1, 168.4, -10.8 , 0 );
setMoveKey( spep_2-27 + 148, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_2-27 + 149, 1, 247.5, -16.1 , 0 );
setMoveKey( spep_2-27 + 150, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_2-27 + 151, 1, 186.6, -6.6 , 0 );
setMoveKey( spep_2-27 + 152, 1, 193, -2 , 0 );
setMoveKey( spep_2-27 + 153, 1, 193, -2 , 0 );
setMoveKey( spep_2-27 + 154, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_2-27 + 155, 1, 191.4, -7.5 , 0 );
setMoveKey( spep_2-27 + 156, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_2-27 + 157, 1, 189.7, 1.9 , 0 );
setMoveKey( spep_2-27 + 158, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_2-27 + 159, 1, 210.1, -5.7 , 0 );
setMoveKey( spep_2-27 + 160, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_2-27 + 161, 1, 210.6, 5.4 , 0 );
setMoveKey( spep_2-27 + 162, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_2-27 + 163, 1, 208.8, -0.2 , 0 );
setMoveKey( spep_2-27 + 164, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_2-27 + 165, 1, 207.2, 9.2 , 0 );
setMoveKey( spep_2-27 + 166, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_2-27 + 167, 1, 227.6, 1.5 , 0 );
setMoveKey( spep_2-27 + 168, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_2-27 + 169, 1, 228.1, 12.6 , 0 );
setMoveKey( spep_2-27 + 170, 1, 226.4, 7 , 0 );
setMoveKey( spep_2-27 + 171, 1, 226.4, 7 , 0 );
setMoveKey( spep_2-27 + 172, 1, 234.8, 13.4 , 0 );
setMoveKey( spep_2-27 + 173, 1, 234.8, 13.4 , 0 );

setMoveKey( spep_2-27 + 174, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_2-27 + 175, 1, 179.4, -60.3 , 0 );
setMoveKey( spep_2-27 + 176, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_2-27 + 177, 1, 161.7, -66.4 , 0 );
setMoveKey( spep_2-27 + 178, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_2-27 + 179, 1, 147.4, -71.3 , 0 );
setMoveKey( spep_2-27 + 180, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_2-27 + 181, 1, 136.3, -75.1 , 0 );
setMoveKey( spep_2-27 + 182, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_2-27 + 183, 1, 128.7, -77.7 , 0 );
setMoveKey( spep_2-27 + 184, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_2-27 + 185, 1, 124.5, -79.2 , 0 );
setMoveKey( spep_2-27 + 186, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_2-27 + 187, 1, 123.5, -79.6 , 0 );
setMoveKey( spep_2-27 + 188, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_2-27 + 189, 1, 124.2, -79.4 , 0 );
setMoveKey( spep_2-27 + 190, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_2-27 + 191, 1, 124.7, -79.3 , 0 );
setMoveKey( spep_2-27 + 192, 1, 125, -79.2 , 0 );
setMoveKey( spep_2-27 + 193, 1, 125, -79.2 , 0 );
setMoveKey( spep_2-27 + 194, 1, 125.1, -79.2 , 0 );
setMoveKey( spep_2-27 + 195, 1, 125.1, -79.2 , 0 );

setMoveKey( spep_2-27 + 196, 1, 153.4, 305.4 , 0 );
setMoveKey( spep_2-27 + 219, 1, 153.4, 305.4 , 0 );

setMoveKey( spep_2-27 + 220, 1, 43.3, 481 , 0 );
setMoveKey( spep_2-27 + 221, 1, 43.3, 481 , 0 );
setMoveKey( spep_2-27 + 222, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_2-27 + 223, 1, 66.3, 630.5 , 0 );
setMoveKey( spep_2-27 + 224, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_2-27 + 225, 1, 57.3, 631.9 , 0 );
setMoveKey( spep_2-27 + 226, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_2-27 + 227, 1, 83.5, 545.7 , 0 );
setMoveKey( spep_2-27 + 228, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_2-27 + 229, 1, 78.8, 550.4 , 0 );
setMoveKey( spep_2-27 + 230, 1, 88.8, 491.9 , 0 );
setMoveKey( spep_2-27 + 230, 1, 88.8, 491.9 , 0 );

setScaleKey( spep_2-27 + 48, 1, 1.96, 1.95 );
setScaleKey( spep_2-27 + 67, 1, 1.96, 1.95 );
setScaleKey( spep_2-27 + 68, 1, 1.95, 1.95 );
setScaleKey( spep_2-27 + 81, 1, 1.95, 1.95 );

setScaleKey( spep_2-27 + 82, 1, 2.63, 2.62 );
setScaleKey( spep_2-27 + 83, 1, 2.63, 2.62 );
setScaleKey( spep_2-27 + 84, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 85, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 86, 1, 2.68, 2.68 );
setScaleKey( spep_2-27 + 87, 1, 2.68, 2.68 );
setScaleKey( spep_2-27 + 88, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 89, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 90, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 91, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 92, 1, 2.15, 2.15 );
setScaleKey( spep_2-27 + 93, 1, 2.15, 2.15 );
setScaleKey( spep_2-27 + 94, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 95, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 96, 1, 2.11, 2.11 );
setScaleKey( spep_2-27 + 97, 1, 2.11, 2.11 );
setScaleKey( spep_2-27 + 98, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 100, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 101, 1, 2.1, 2.1 );

setScaleKey( spep_2-27 + 104, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 105, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 107, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 108, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 109, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 110, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 111, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 112, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 113, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 114, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 115, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 116, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 117, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 118, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 120, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 121, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 122, 1, 2.38, 2.38 );
setScaleKey( spep_2-27 + 123, 1, 2.38, 2.38 );
setScaleKey( spep_2-27 + 124, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 125, 1, 3.03, 3.03 );
setScaleKey( spep_2-27 + 126, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 127, 1, 2.42, 2.42 );
setScaleKey( spep_2-27 + 128, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 129, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 130, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 131, 1, 1.79, 1.79 );
setScaleKey( spep_2-27 + 132, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 133, 1, 1.77, 1.77 );
setScaleKey( spep_2-27 + 134, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 135, 1, 1.75, 1.75 );
setScaleKey( spep_2-27 + 136, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 137, 1, 1.74, 1.74 );
setScaleKey( spep_2-27 + 138, 1, 1.73, 1.73 );
setScaleKey( spep_2-27 + 141, 1, 1.73, 1.73 );

setScaleKey( spep_2-27 + 142, 1, 3.67, 3.67 );
setScaleKey( spep_2-27 + 143, 1, 3.67, 3.67 );
setScaleKey( spep_2-27 + 144, 1, 2.89, 2.89 );
setScaleKey( spep_2-27 + 145, 1, 2.89, 2.89 );
setScaleKey( spep_2-27 + 146, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 147, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 148, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 149, 1, 3.15, 3.15 );
setScaleKey( spep_2-27 + 150, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 153, 1, 2.2, 2.2 );
setScaleKey( spep_2-27 + 154, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 155, 1, 2.17, 2.17 );
setScaleKey( spep_2-27 + 156, 1, 2.16, 2.16 );
setScaleKey( spep_2-27 + 157, 1, 2.16, 2.16 );
setScaleKey( spep_2-27 + 158, 1, 2.14, 2.14 );
setScaleKey( spep_2-27 + 159, 1, 2.14, 2.14 );
setScaleKey( spep_2-27 + 160, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 161, 1, 2.13, 2.13 );
setScaleKey( spep_2-27 + 162, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 164, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 165, 1, 2.1, 2.1 );
setScaleKey( spep_2-27 + 166, 1, 2.07, 2.07 );
setScaleKey( spep_2-27 + 168, 1, 2.07, 2.07 );
setScaleKey( spep_2-27 + 169, 1, 2.07, 2.07 );
setScaleKey( spep_2-27 + 170, 1, 2.04, 2.04 );
setScaleKey( spep_2-27 + 171, 1, 2.04, 2.04 );
setScaleKey( spep_2-27 + 172, 1, 2.03, 2.03 );
setScaleKey( spep_2-27 + 173, 1, 2.03, 2.03 );

setScaleKey( spep_2-27 + 174, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 175, 1, 1.82, 1.82 );
setScaleKey( spep_2-27 + 176, 1, 1.81, 1.81 );
setScaleKey( spep_2-27 + 178, 1, 1.81, 1.81 );
setScaleKey( spep_2-27 + 179, 1, 1.81, 1.81 );
setScaleKey( spep_2-27 + 180, 1, 1.8, 1.8 );
setScaleKey( spep_2-27 + 195, 1, 1.8, 1.8 );

setScaleKey( spep_2-27 + 196, 1, 5.78, 5.78 );
setScaleKey( spep_2-27 + 219, 1, 5.78, 5.78 );

setScaleKey( spep_2-27 + 220, 1, 6.29, 6.29 );
setScaleKey( spep_2-27 + 230, 1, 6.29, 6.29 );

setRotateKey( spep_2-27 + 48, 1, 0 );
setRotateKey( spep_2-27 + 101, 1, 0 );

setRotateKey( spep_2-27 + 102, 1, -48.2 );
setRotateKey( spep_2-27 + 104, 1, -48.2 );
setRotateKey( spep_2-27 + 105, 1, -48.2 );
setRotateKey( spep_2-27 + 106, 1, -48 );
setRotateKey( spep_2-27 + 108, 1, -48 );
setRotateKey( spep_2-27 + 109, 1, -48 );
setRotateKey( spep_2-27 + 110, 1, -47.7 );
setRotateKey( spep_2-27 + 112, 1, -47.7 );
setRotateKey( spep_2-27 + 113, 1, -47.7 );
setRotateKey( spep_2-27 + 114, 1, -47.4 );
setRotateKey( spep_2-27 + 116, 1, -47.4 );
setRotateKey( spep_2-27 + 117, 1, -47.4 );
setRotateKey( spep_2-27 + 118, 1, -47.2 );
setRotateKey( spep_2-27 + 120, 1, -47.2 );
setRotateKey( spep_2-27 + 121, 1, -47.2 );
setRotateKey( spep_2-27 + 122, 1, -56.8 );
setRotateKey( spep_2-27 + 124, 1, -56.8 );
setRotateKey( spep_2-27 + 125, 1, -56.8 );
setRotateKey( spep_2-27 + 126, 1, -55.4 );
setRotateKey( spep_2-27 + 128, 1, -55.4 );
setRotateKey( spep_2-27 + 130, 1, -54.4 );
setRotateKey( spep_2-27 + 132, 1, -54.4 );
setRotateKey( spep_2-27 + 133, 1, -54.4 );
setRotateKey( spep_2-27 + 134, 1, -53.7 );
setRotateKey( spep_2-27 + 136, 1, -53.7 );
setRotateKey( spep_2-27 + 137, 1, -53.7 );
setRotateKey( spep_2-27 + 138, 1, -53.4 );
setRotateKey( spep_2-27 + 141, 1, -53.4 );

setRotateKey( spep_2-27 + 142, 1, 0 );
setRotateKey( spep_2-27 + 219, 1, 0 );

setRotateKey( spep_2-27 + 220, 1, 24.8 );
setRotateKey( spep_2-27 + 221, 1, 24.8 );
setRotateKey( spep_2-27 + 222, 1, 60.9 );
setRotateKey( spep_2-27 + 224, 1, 60.9 );
setRotateKey( spep_2-27 + 225, 1, 60.9 );
setRotateKey( spep_2-27 + 226, 1, 64.2 );
setRotateKey( spep_2-27 + 228, 1, 64.2 );
setRotateKey( spep_2-27 + 229, 1, 64.2 );
setRotateKey( spep_2-27 + 230, 1, 66 );
setRotateKey( spep_2-27 + 230, 1, 66 );

--敵側の動き
setDisp( spep_2-27 + 276, 1, 1);
setDisp( spep_2-25 + 300, 1, 0);

changeAnime( spep_2-27 + 276, 1, 108);
changeAnime( spep_2-27 + 288, 1, 106);

setMoveKey( spep_2-27 + 276, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_2-27 + 279, 1, -68.9, -202.7 , 0 );
setMoveKey( spep_2-27 + 280, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_2-27 + 283, 1, -68.8, -219.3 , 0 );
setMoveKey( spep_2-27 + 284, 1, -68.5, -248 , 0 );
setMoveKey( spep_2-27 + 285, 1, -68.5, -248 , 0 );
setMoveKey( spep_2-27 + 286, 1, -98.1, -341 , 0 );
setMoveKey( spep_2-27 + 287, 1, -98.1, -341 , 0 );

setMoveKey( spep_2-27 + 288, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_2-27 + 289, 1, -412.3, -4.7 , 0 );
setMoveKey( spep_2-27 + 290, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_2-27 + 291, 1, -318.2, 0.3 , 0 );
setMoveKey( spep_2-27 + 292, 1, -234, -6 , 0 );
setMoveKey( spep_2-27 + 293, 1, -234, -6 , 0 );
setMoveKey( spep_2-27 + 294, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_2-27 + 295, 1, -355.7, -0.8 , 0 );
setMoveKey( spep_2-27 + 296, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_2-27 + 297, 1, -226.8, -7.7 , 0 );
setMoveKey( spep_2-27 + 298, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_2-27 + 299, 1, -634.3, -104.1 , 0 );
setMoveKey( spep_2-27 + 300, 1, -635.2, -97.5 , 0 );
setMoveKey( spep_2-25 + 300, 1, -635.2, -97.5 , 0 );

setScaleKey( spep_2-27 + 276, 1, 6.99, 6.99 );
setScaleKey( spep_2-27 + 285, 1, 6.99, 6.99 );
setScaleKey( spep_2-27 + 286, 1, 9.62, 9.62 );
setScaleKey( spep_2-27 + 287, 1, 9.62, 9.62 );

setScaleKey( spep_2-27 + 288, 1, 10.45, 10.45 );
setScaleKey( spep_2-27 + 289, 1, 10.45, 10.45 );
setScaleKey( spep_2-27 + 290, 1, 8.21, 8.21 );
setScaleKey( spep_2-27 + 291, 1, 8.21, 8.21 );
setScaleKey( spep_2-27 + 292, 1, 5.97, 5.97 );
setScaleKey( spep_2-27 + 293, 1, 5.97, 5.97 );
setScaleKey( spep_2-27 + 294, 1, 8.95, 8.95 );
setScaleKey( spep_2-27 + 295, 1, 8.95, 8.95 );
setScaleKey( spep_2-27 + 296, 1, 5.97, 5.97 );
setScaleKey( spep_2-25 + 300, 1, 5.97, 5.97 );

setRotateKey( spep_2-27 + 276, 1, 74.2 );
setRotateKey( spep_2-27 + 287, 1, 74.2 );

setRotateKey( spep_2-27 + 288, 1, -69 );
setRotateKey( spep_2-25 + 300, 1, -69 );

--SE
--向かっていく
SE008 = playSeVer2( spep_2 + 32, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE008, 67 );

--パンチ
SE009 = playSeVer2( spep_2 + 54, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 54, 1110, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_2 + 72, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);

--キック
SE013 = playSeVer2( spep_2 + 92, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE013, 81 );
SE014 = playSeVer2( spep_2 + 92, 1110, "", 0, 0, 0, -1);

--キック２
SE015 = playSeVer2( spep_2 + 112, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE015, 92 );
SE016 = playSeVer2( spep_2 + 112, 1187, "",spep_2 + 170, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 112, SE016, 71 );

--敵立つ
SE017 = playSeVer2( spep_2 + 148, 1013, "", 0, 0, 0, -1);

--下回し蹴り
SE018 = playSeVer2( spep_2 + 174, 1116, "",spep_2 + 216, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 174, 44, "",spep_2 + 216, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 174, SE019, 68 );
SE020 = playSeVer2( spep_2 + 188, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE020, 81 );
SE021 = playSeVer2( spep_2 + 190, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE021, 83 );
SE022 = playSeVer2( spep_2 + 190, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE022, 89 );

--画面遷移
SE023 = playSeVer2( spep_2 + 202, 1232, "", 0, 0, 0, -1);

--後ろ回し蹴り
SE024 = playSeVer2( spep_2 + 246, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 258, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE025, 82 );
SE026 = playSeVer2( spep_2 + 258, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE026, 88 );

-- ** 次の準備 ** --
spep_3= spep_2 + 300;
------------------------------------------------------
--ガッ
------------------------------------------------------
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 156, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 156, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 156, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE027 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 98 ); -- 終了フレーム
end