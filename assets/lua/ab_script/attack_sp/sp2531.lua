--1026250:UR超サイヤ人ゴッド孫悟空_必殺技：ドラゴンスマッシュ
--sp_effect_b1_00249
--sp2531

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

--味方側
SP_01 = 161687; --回り込んで突撃 殴って追跡 ef_001_ch
SP_02 = 161689; --↑敵を挟んでの背景 ef_001_bg
SP_03 = 161690; --森林に入り蹴りからのコンボ ef_002_ch
SP_04 = 161692; --↑敵を挟んでの背景 ef_002_bg
SP_05 = 161693; --フィニッシュブロー 煙を上げて吹っ飛ぶ ef_003_ch
SP_06 = 161695; --↑敵を挟んでの背景 ef_003_bg

--敵側
SP_01r = 161688; --敵側 ef_001_ch_r
SP_03r = 161691; --敵側 ef_002_ch_r
SP_05r = 161694; --敵側 ef_003_ch_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 回り込んで突撃　殴って追跡(358F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --回り込んで突撃　殴って追跡 ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 358, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 358, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 358, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 358 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 358, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --↑敵を挟んでの背景 ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 358, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 358, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 358, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 358 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 358, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 101 );
changeAnime( spep_0 + 102 -1, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 243.8, -9.1 , 0 );
setMoveKey( spep_0 + 1, 1, 243.8, -9.1 , 0 );
setMoveKey( spep_0 + 2, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 3, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 4, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 5, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 6, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 90 -1, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 92 -1, 1, 239.5, -6.5 , 0 );
setMoveKey( spep_0 + 94 -1, 1, 235.1, -4 , 0 );
setMoveKey( spep_0 + 96 -1, 1, 230.8, -1.4 , 0 );
setMoveKey( spep_0 + 98 -1, 1, 226.5, 1.1 , 0 );
setMoveKey( spep_0 + 101 -1, 1, 222.1, 3.7 , 0 );
setMoveKey( spep_0 + 102 -1, 1, 217, 3.7 , 0 );
setMoveKey( spep_0 + 104 -1, 1, 215.2, 4.3 , 0 );
setMoveKey( spep_0 + 106 -1, 1, 213.4, 4.9 , 0 );
setMoveKey( spep_0 + 108 -1, 1, 211.6, 5.5 , 0 );
setMoveKey( spep_0 + 110 -1, 1, 209.8, 6.1 , 0 );
setMoveKey( spep_0 + 112 -1, 1, 208, 6.7 , 0 );
setMoveKey( spep_0 + 114 -1, 1, 206.2, 7.3 , 0 );
setMoveKey( spep_0 + 116 -1, 1, 207.8, 7.8 , 0 );
setMoveKey( spep_0 + 118 -1, 1, 209.4, 8.2 , 0 );
setMoveKey( spep_0 + 120 -1, 1, 211, 8.7 , 0 );
setMoveKey( spep_0 + 122 -1, 1, 212.6, 9.1 , 0 );
setMoveKey( spep_0 + 124 -1, 1, 214.2, 9.6 , 0 );
setMoveKey( spep_0 + 126 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 138 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 139 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 140 -1, 1, 242.2, 18 , 0 );
setMoveKey( spep_0 + 142 -1, 1, 236.9, 18 , 0 );
setMoveKey( spep_0 + 144 -1, 1, 230.4, 18 , 0 );
setMoveKey( spep_0 + 146 -1, 1, 222.8, 18 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 90 -1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 92 -1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 94 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 96 -1, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 98 -1, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 101 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 102 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 104 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 106 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 108 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 110 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 112 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 114 -1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 116 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 118 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 120 -1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 122 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 124 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 126 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 138 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 139 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 140 -1, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 142 -1, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 144 -1, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 146 -1, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 210, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );
SE003 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 210, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 200 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 16 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 16 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 16 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 16 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--カメラワーク
SE008 = playSeVer2( spep_0 + 72, 1072, "", 0, 16, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 358 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 222.8, 18 , 0 );
    setMoveKey( SP_dodge + 2, 1, 213.9, 18 , 0 );
    setMoveKey( SP_dodge + 4, 1, 203.9, 18 , 0 );
    setMoveKey( SP_dodge + 6, 1, 192.7, 18 , 0 );
    setMoveKey( SP_dodge + 8, 1, 180.3, 18 , 0 );
    setMoveKey( SP_dodge + 10, 1, 166.8, 18 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 2, 1, 0.53, 0.53 );
    setScaleKey( SP_dodge + 4, 1, 0.58, 0.58 );
    setScaleKey( SP_dodge + 6, 1, 0.63, 0.63 );
    setScaleKey( SP_dodge + 8, 1, 0.69, 0.69 );
    setScaleKey( SP_dodge + 10, 1, 0.75, 0.75 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 162 -1, 1, 101 );
changeAnime( spep_0 + 184 -1, 1, 108 );
changeAnime( spep_0 + 214 -1, 1, 106 );
setDisp( spep_0 + 222 -1, 1, 0 );

setMoveKey( spep_0 + 148 -1, 1, 213.9, 18 , 0 );
setMoveKey( spep_0 + 150 -1, 1, 203.9, 18 , 0 );
setMoveKey( spep_0 + 152 -1, 1, 192.7, 18 , 0 );
setMoveKey( spep_0 + 154 -1, 1, 180.3, 18 , 0 );
setMoveKey( spep_0 + 156 -1, 1, 166.8, 18 , 0 );
setMoveKey( spep_0 + 158 -1, 1, 152.1, 18 , 0 );
setMoveKey( spep_0 + 161 -1, 1, 136.2, 17.9 , 0 );
setMoveKey( spep_0 + 162 -1, 1, 177.6, 12.2 , 0 );
setMoveKey( spep_0 + 183 -1, 1, 177.6, 12.2 , 0 );
setMoveKey( spep_0 + 184 -1, 1, 185.3, 19.7 , 0 );
setMoveKey( spep_0 + 185 -1, 1, 185.3, 19.7 , 0 );
setMoveKey( spep_0 + 186 -1, 1, 150.6, 4.3 , 0 );
setMoveKey( spep_0 + 187 -1, 1, 150.6, 4.3 , 0 );
setMoveKey( spep_0 + 188 -1, 1, 168.6, 31.8 , 0 );
setMoveKey( spep_0 + 189 -1, 1, 168.6, 31.8 , 0 );
setMoveKey( spep_0 + 190 -1, 1, 144.2, 12.7 , 0 );
setMoveKey( spep_0 + 191 -1, 1, 144.2, 12.7 , 0 );
setMoveKey( spep_0 + 192 -1, 1, 125.6, 20.5 , 0 );
setMoveKey( spep_0 + 193 -1, 1, 125.6, 20.5 , 0 );
setMoveKey( spep_0 + 194 -1, 1, 150.6, 21.5 , 0 );
setMoveKey( spep_0 + 195 -1, 1, 150.6, 21.5 , 0 );
setMoveKey( spep_0 + 196 -1, 1, 141, 29.2 , 0 );
setMoveKey( spep_0 + 197 -1, 1, 141, 29.2 , 0 );
setMoveKey( spep_0 + 198 -1, 1, 154.5, 38.9 , 0 );
setMoveKey( spep_0 + 199 -1, 1, 154.5, 38.9 , 0 );
setMoveKey( spep_0 + 200 -1, 1, 138.1, 19.7 , 0 );
setMoveKey( spep_0 + 201 -1, 1, 138.1, 19.7 , 0 );
setMoveKey( spep_0 + 202 -1, 1, 150.6, 42.7 , 0 );
setMoveKey( spep_0 + 203 -1, 1, 150.6, 42.7 , 0 );
setMoveKey( spep_0 + 204 -1, 1, 173.7, 15.8 , 0 );
setMoveKey( spep_0 + 205 -1, 1, 173.7, 15.8 , 0 );
setMoveKey( spep_0 + 206 -1, 1, 183.4, 24.6 , 0 );
setMoveKey( spep_0 + 207 -1, 1, 183.4, 24.6 , 0 );
setMoveKey( spep_0 + 208 -1, 1, 171.1, 30 , 0 );
setMoveKey( spep_0 + 209 -1, 1, 171.1, 30 , 0 );
setMoveKey( spep_0 + 210 -1, 1, 186, 27.6 , 0 );
setMoveKey( spep_0 + 211 -1, 1, 186, 27.6 , 0 );
setMoveKey( spep_0 + 212 -1, 1, 181.4, 35.1 , 0 );
setMoveKey( spep_0 + 213 -1, 1, 181.4, 35.1 , 0 );
setMoveKey( spep_0 + 214 -1, 1, 310.7, 28.8 , 0 );
setMoveKey( spep_0 + 216 -1, 1, 310.7, 28.8 , 0 );
setMoveKey( spep_0 + 218 -1, 1, 516.4, 27.9 , 0 );
setMoveKey( spep_0 + 220 -1, 1, 516.4, 27.9 , 0 );
setMoveKey( spep_0 + 222 -1, 1, 673, 27.9 , 0 );

setScaleKey( spep_0 + 148 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 150 -1, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 152 -1, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 154 -1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 156 -1, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 158 -1, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 161 -1, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 162 -1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 183 -1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 184 -1, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 222 -1, 1, 1.8, 1.8 );

setRotateKey( spep_0 + 213 -1, 1, 0 );
setRotateKey( spep_0 + 214 -1, 1, -9.8 );
setRotateKey( spep_0 + 216 -1, 1, -9.8 );
setRotateKey( spep_0 + 218 -1, 1, -0.5 );
setRotateKey( spep_0 + 222 -1, 1, -0.5 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 302 -1, 1, 1 );
setDisp( spep_0 + 350 -1, 1, 0 );
changeAnime( spep_0 + 302 -1, 1, 106 );

setMoveKey( spep_0 + 302 -1, 1, -101.8, 149.1 , 0 );
setMoveKey( spep_0 + 303 -1, 1, -101.8, 149.1 , 0 );
setMoveKey( spep_0 + 304 -1, 1, -69.1, 121.7 , 0 );
setMoveKey( spep_0 + 305 -1, 1, -69.1, 121.7 , 0 );
setMoveKey( spep_0 + 306 -1, 1, -37.5, 95.2 , 0 );
setMoveKey( spep_0 + 307 -1, 1, -37.5, 95.2 , 0 );
setMoveKey( spep_0 + 308 -1, 1, -7.1, 69.7 , 0 );
setMoveKey( spep_0 + 309 -1, 1, -7.1, 69.7 , 0 );
setMoveKey( spep_0 + 310 -1, 1, 22.2, 45.1 , 0 );
setMoveKey( spep_0 + 311 -1, 1, 22.2, 45.1 , 0 );
setMoveKey( spep_0 + 312 -1, 1, 50.3, 21.5 , 0 );
setMoveKey( spep_0 + 313 -1, 1, 50.3, 21.5 , 0 );
setMoveKey( spep_0 + 314 -1, 1, 77.3, -1.1 , 0 );
setMoveKey( spep_0 + 315 -1, 1, 77.3, -1.1 , 0 );
setMoveKey( spep_0 + 316 -1, 1, 103.1, -22.8 , 0 );
setMoveKey( spep_0 + 317 -1, 1, 103.1, -22.8 , 0 );
setMoveKey( spep_0 + 318 -1, 1, 127.8, -43.5 , 0 );
setMoveKey( spep_0 + 319 -1, 1, 127.8, -43.5 , 0 );
setMoveKey( spep_0 + 320 -1, 1, 151.4, -63.3 , 0 );
setMoveKey( spep_0 + 321 -1, 1, 151.4, -63.3 , 0 );
setMoveKey( spep_0 + 322 -1, 1, 173.8, -82.1 , 0 );
setMoveKey( spep_0 + 323 -1, 1, 173.8, -82.1 , 0 );
setMoveKey( spep_0 + 324 -1, 1, 195.1, -100 , 0 );
setMoveKey( spep_0 + 325 -1, 1, 195.1, -100 , 0 );
setMoveKey( spep_0 + 326 -1, 1, 215.2, -116.9 , 0 );
setMoveKey( spep_0 + 327 -1, 1, 215.2, -116.9 , 0 );
setMoveKey( spep_0 + 328 -1, 1, 234.2, -132.8 , 0 );
setMoveKey( spep_0 + 329 -1, 1, 234.2, -132.8 , 0 );
setMoveKey( spep_0 + 330 -1, 1, 252.1, -147.8 , 0 );
setMoveKey( spep_0 + 331 -1, 1, 252.1, -147.8 , 0 );
setMoveKey( spep_0 + 332 -1, 1, 268.8, -161.8 , 0 );
setMoveKey( spep_0 + 333 -1, 1, 268.8, -161.8 , 0 );
setMoveKey( spep_0 + 334 -1, 1, 284.4, -174.9 , 0 );
setMoveKey( spep_0 + 335 -1, 1, 284.4, -174.9 , 0 );
setMoveKey( spep_0 + 336 -1, 1, 298.8, -187 , 0 );
setMoveKey( spep_0 + 337 -1, 1, 298.8, -187 , 0 );
setMoveKey( spep_0 + 338 -1, 1, 312.1, -198.1 , 0 );
setMoveKey( spep_0 + 339 -1, 1, 312.1, -198.1 , 0 );
setMoveKey( spep_0 + 340 -1, 1, 324.2, -208.3 , 0 );
setMoveKey( spep_0 + 341 -1, 1, 324.2, -208.3 , 0 );
setMoveKey( spep_0 + 342 -1, 1, 335.2, -217.6 , 0 );
setMoveKey( spep_0 + 343 -1, 1, 335.2, -217.6 , 0 );
setMoveKey( spep_0 + 344 -1, 1, 345.1, -225.8 , 0 );
setMoveKey( spep_0 + 345 -1, 1, 345.1, -225.8 , 0 );
setMoveKey( spep_0 + 346 -1, 1, 353.8, -233.2 , 0 );
setMoveKey( spep_0 + 347 -1, 1, 353.8, -233.2 , 0 );
setMoveKey( spep_0 + 348 -1, 1, 361.4, -239.5 , 0 );
setMoveKey( spep_0 + 349 -1, 1, 361.4, -239.5 , 0 );
setMoveKey( spep_0 + 350 -1, 1, 367.9, -244.9 , 0 );

setScaleKey( spep_0 + 302 -1, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 350 -1, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 302 -1, 1, 70 );
setRotateKey( spep_0 + 350 -1, 1, 70 );

-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 16 );
SE015 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE015, 16 );
SE020 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE020, 25 );
SE021 = playSeVer2( spep_0 + 206, 1181, "",spep_0 + 330, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 206, SE021, 126 );
SE022 = playSeVer2( spep_0 + 206, 1407, "",spep_0 + 330, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 206, SE022, 158 );
SE023 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE023, 25 );
SE024 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE024, 25 );

--向かっていく
SE011 = playSeVer2( spep_0 + 134, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 134, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 134, 1002, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 260, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 264, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE027, 119 );

--パンチ
SE016 = playSeVer2( spep_0 + 170, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE016, 73 );
SE017 = playSeVer2( spep_0 + 176, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE017, 89 );
SE018 = playSeVer2( spep_0 + 176, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE018, 72 );
SE019 = playSeVer2( spep_0 + 178, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE019, 81 );

--俯瞰飛行音
SE025 = playSeVer2( spep_0 + 258, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE025, 76 );

--俯瞰飛行音
SE028 = playSeVer2( spep_0 + 296, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE028, 71 );
SE029 = playSeVer2( spep_0 + 296, 1304, "", 0, 0, 0, -1);

--飛行音
SE030 = playSeVer2( spep_0 + 296, 1019, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 358;


------------------------------------------------------
-- 森林に入り蹴りからのコンボ(347F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
combo_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --森林に入り蹴りからのコンボ ef_002_ch
setEffMoveKey( spep_1 + 0, combo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 347, combo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 347, combo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_f, 0 );
setEffRotateKey( spep_1 + 347, combo_f, 0 );
setEffAlphaKey( spep_1 + 0, combo_f, 255 );
setEffAlphaKey( spep_1 + 347 -1, combo_f, 255 );
setEffAlphaKey( spep_1 + 347, combo_f, 0 );

combo_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --↑敵を挟んでの背景 ef_002_bg
setEffMoveKey( spep_1 + 0, combo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 347, combo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 347, combo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_b, 0 );
setEffRotateKey( spep_1 + 347, combo_b, 0 );
setEffAlphaKey( spep_1 + 0, combo_b, 255 );
setEffAlphaKey( spep_1 + 347 -1, combo_b, 255 );
setEffAlphaKey( spep_1 + 347, combo_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -1 + 100, 1, 0 );
changeAnime( spep_1 -1 + 0, 1, 105 );

setMoveKey( spep_1 + 0, 1, -82.1, -24.7 , 0 );
setMoveKey( spep_1 -1 + 2, 1, -79.8, -24.8 , 0 );
setMoveKey( spep_1 -1 + 4, 1, -77.5, -24.9 , 0 );
setMoveKey( spep_1 -1 + 6, 1, -75.2, -25 , 0 );
setMoveKey( spep_1 -1 + 8, 1, -72.9, -25.1 , 0 );
setMoveKey( spep_1 -1 + 10, 1, -70.7, -25.2 , 0 );
setMoveKey( spep_1 -1 + 12, 1, -68.4, -25.2 , 0 );
setMoveKey( spep_1 -1 + 14, 1, -66.1, -25.3 , 0 );
setMoveKey( spep_1 -1 + 16, 1, -63.8, -25.4 , 0 );
setMoveKey( spep_1 -1 + 18, 1, -61.6, -25.4 , 0 );
setMoveKey( spep_1 -1 + 20, 1, -59.3, -25.5 , 0 );
setMoveKey( spep_1 -1 + 22, 1, -57, -25.5 , 0 );
setMoveKey( spep_1 -1 + 24, 1, -54.8, -25.6 , 0 );
setMoveKey( spep_1 -1 + 26, 1, -52.5, -25.6 , 0 );
setMoveKey( spep_1 -1 + 28, 1, -50.2, -25.7 , 0 );
setMoveKey( spep_1 -1 + 30, 1, -48, -25.7 , 0 );
setMoveKey( spep_1 -1 + 32, 1, -45.7, -25.8 , 0 );
setMoveKey( spep_1 -1 + 34, 1, -43.4, -25.8 , 0 );
setMoveKey( spep_1 -1 + 36, 1, -41.2, -25.8 , 0 );
setMoveKey( spep_1 -1 + 38, 1, -38.9, -25.9 , 0 );
setMoveKey( spep_1 -1 + 40, 1, -36.7, -25.9 , 0 );
setMoveKey( spep_1 -1 + 42, 1, -34.5, -25.9 , 0 );
setMoveKey( spep_1 -1 + 44, 1, -32.2, -25.9 , 0 );
setMoveKey( spep_1 -1 + 46, 1, -30, -25.9 , 0 );
setMoveKey( spep_1 -1 + 48, 1, -27.7, -26 , 0 );
setMoveKey( spep_1 -1 + 50, 1, -25.5, -26 , 0 );
setMoveKey( spep_1 -1 + 52, 1, -23.3, -26 , 0 );
setMoveKey( spep_1 -1 + 54, 1, -21.1, -26 , 0 );
setMoveKey( spep_1 -1 + 56, 1, -18.8, -26 , 0 );
setMoveKey( spep_1 -1 + 58, 1, -16.6, -26 , 0 );
setMoveKey( spep_1 -1 + 60, 1, -14.4, -26 , 0 );
setMoveKey( spep_1 -1 + 62, 1, -12.2, -26 , 0 );
setMoveKey( spep_1 -1 + 64, 1, -10, -26 , 0 );
setMoveKey( spep_1 -1 + 66, 1, -7.8, -26 , 0 );
setMoveKey( spep_1 -1 + 68, 1, -5.6, -26 , 0 );
setMoveKey( spep_1 -1 + 70, 1, -3.4, -26 , 0 );
setMoveKey( spep_1 -1 + 72, 1, -1.2, -26 , 0 );
setMoveKey( spep_1 -1 + 74, 1, 0.9, -25.9 , 0 );
setMoveKey( spep_1 -1 + 76, 1, 3.1, -25.9 , 0 );
setMoveKey( spep_1 -1 + 78, 1, 5.3, -25.9 , 0 );
setMoveKey( spep_1 -1 + 99, 1, 5.3, -25.9 , 0 );
setMoveKey( spep_1 -1 + 100, 1, 5.3, -25.9 , 0 );

setScaleKey( spep_1 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_1 -1 + 2, 1, 2.73, 2.73 );
setScaleKey( spep_1 -1 + 4, 1, 2.66, 2.66 );
setScaleKey( spep_1 -1 + 6, 1, 2.59, 2.59 );
setScaleKey( spep_1 -1 + 8, 1, 2.53, 2.53 );
setScaleKey( spep_1 -1 + 10, 1, 2.46, 2.46 );
setScaleKey( spep_1 -1 + 12, 1, 2.4, 2.4 );
setScaleKey( spep_1 -1 + 14, 1, 2.33, 2.33 );
setScaleKey( spep_1 -1 + 16, 1, 2.27, 2.27 );
setScaleKey( spep_1 -1 + 18, 1, 2.2, 2.2 );
setScaleKey( spep_1 -1 + 20, 1, 2.14, 2.14 );
setScaleKey( spep_1 -1 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_1 -1 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_1 -1 + 26, 1, 1.94, 1.94 );
setScaleKey( spep_1 -1 + 28, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 30, 1, 1.82, 1.82 );
setScaleKey( spep_1 -1 + 32, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 38, 1, 1.57, 1.57 );
setScaleKey( spep_1 -1 + 40, 1, 1.51, 1.51 );
setScaleKey( spep_1 -1 + 42, 1, 1.45, 1.45 );
setScaleKey( spep_1 -1 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_1 -1 + 46, 1, 1.32, 1.32 );
setScaleKey( spep_1 -1 + 48, 1, 1.26, 1.26 );
setScaleKey( spep_1 -1 + 50, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_1 -1 + 54, 1, 1.09, 1.09 );
setScaleKey( spep_1 -1 + 56, 1, 1.03, 1.03 );
setScaleKey( spep_1 -1 + 58, 1, 0.97, 0.97 );
setScaleKey( spep_1 -1 + 60, 1, 0.91, 0.91 );
setScaleKey( spep_1 -1 + 62, 1, 0.85, 0.85 );
setScaleKey( spep_1 -1 + 64, 1, 0.79, 0.79 );
setScaleKey( spep_1 -1 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_1 -1 + 68, 1, 0.68, 0.68 );
setScaleKey( spep_1 -1 + 70, 1, 0.62, 0.62 );
setScaleKey( spep_1 -1 + 72, 1, 0.57, 0.57 );
setScaleKey( spep_1 -1 + 74, 1, 0.51, 0.51 );
setScaleKey( spep_1 -1 + 76, 1, 0.45, 0.45 );
setScaleKey( spep_1 -1 + 78, 1, 0.4, 0.4 );
setScaleKey( spep_1 -1 + 100, 1, 0.1, 0.1 );

setRotateKey( spep_1 + 0, 1, 27.1 );
setRotateKey( spep_1 -1 + 100, 1, 27.1 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 184, 1, 1 );
setDisp( spep_1 -1 + 348, 1, 0 );
changeAnime( spep_1 -1 + 184, 1, 108 );
changeAnime( spep_1 -1 + 204, 1, 106 );
changeAnime( spep_1 -1 + 214, 1, 108 );
changeAnime( spep_1 -1 + 224, 1, 106 );
changeAnime( spep_1 -1 + 228, 1, 108 );
changeAnime( spep_1 -1 + 238, 1, 106 );
changeAnime( spep_1 -1 + 252, 1, 108 );
changeAnime( spep_1 -1 + 268, 1, 106 );
changeAnime( spep_1 -1 + 272, 1, 108 );
changeAnime( spep_1 -1 + 280, 1, 106 );
changeAnime( spep_1 -1 + 282, 1, 108 );
changeAnime( spep_1 -1 + 288, 1, 106 );
changeAnime( spep_1 -1 + 292, 1, 108 );
changeAnime( spep_1 -1 + 300, 1, 106 );
changeAnime( spep_1 -1 + 304, 1, 108 );
changeAnime( spep_1 -1 + 310, 1, 106 );
changeAnime( spep_1 -1 + 324, 1, 108 );

setMoveKey( spep_1 -1 + 184, 1, 36.3, -42.9 , 0 );
setMoveKey( spep_1 -1 + 185, 1, 36.3, -42.9 , 0 );
setMoveKey( spep_1 -1 + 186, 1, 40.8, -29.8 , 0 );
setMoveKey( spep_1 -1 + 187, 1, 40.8, -29.8 , 0 );
setMoveKey( spep_1 -1 + 188, 1, 34.2, -54.3 , 0 );
setMoveKey( spep_1 -1 + 189, 1, 34.2, -54.3 , 0 );
setMoveKey( spep_1 -1 + 190, 1, 41.3, -33.2 , 0 );
setMoveKey( spep_1 -1 + 191, 1, 41.3, -33.2 , 0 );
setMoveKey( spep_1 -1 + 192, 1, 39.6, -41.9 , 0 );
setMoveKey( spep_1 -1 + 193, 1, 39.6, -41.9 , 0 );
setMoveKey( spep_1 -1 + 194, 1, 40.4, -25.7 , 0 );
setMoveKey( spep_1 -1 + 195, 1, 40.4, -25.7 , 0 );
setMoveKey( spep_1 -1 + 196, 1, 41.3, -40.4 , 0 );
setMoveKey( spep_1 -1 + 197, 1, 41.3, -40.4 , 0 );
setMoveKey( spep_1 -1 + 198, 1, 35.9, -24.2 , 0 );
setMoveKey( spep_1 -1 + 199, 1, 35.9, -24.2 , 0 );
setMoveKey( spep_1 -1 + 200, 1, 58.4, -54.4 , 0 );
setMoveKey( spep_1 -1 + 201, 1, 58.4, -54.4 , 0 );
setMoveKey( spep_1 -1 + 202, 1, 43.8, -38.1 , 0 );
setMoveKey( spep_1 -1 + 203, 1, 43.8, -38.1 , 0 );--
setMoveKey( spep_1 -1 + 204, 1, 61.1, 16.9 , 0 );
setMoveKey( spep_1 -1 + 205, 1, 61.1, 16.9 , 0 );
setMoveKey( spep_1 -1 + 206, 1, 65.4, 16.2 , 0 );
setMoveKey( spep_1 -1 + 207, 1, 65.4, 16.2 , 0 );
setMoveKey( spep_1 -1 + 208, 1, 69.7, 15.4 , 0 );
setMoveKey( spep_1 -1 + 209, 1, 69.7, 15.4 , 0 );
setMoveKey( spep_1 -1 + 210, 1, 73.9, 14.7 , 0 );
setMoveKey( spep_1 -1 + 211, 1, 73.9, 14.7 , 0 );
setMoveKey( spep_1 -1 + 212, 1, 78.2, 13.9 , 0 );
setMoveKey( spep_1 -1 + 213, 1, 78.2, 13.9 , 0 );--
setMoveKey( spep_1 -1 + 214, 1, 137.8, -61.1 , 0 );
setMoveKey( spep_1 -1 + 215, 1, 137.8, -61.1 , 0 );
setMoveKey( spep_1 -1 + 216, 1, 125.4, -33.2 , 0 );
setMoveKey( spep_1 -1 + 217, 1, 125.4, -33.2 , 0 );
setMoveKey( spep_1 -1 + 218, 1, 103.4, -30.1 , 0 );
setMoveKey( spep_1 -1 + 219, 1, 103.4, -30.1 , 0 );
setMoveKey( spep_1 -1 + 220, 1, 107.6, -43.6 , 0 );
setMoveKey( spep_1 -1 + 221, 1, 107.6, -43.6 , 0 );
setMoveKey( spep_1 -1 + 222, 1, 76.3, -28.6 , 0 );
setMoveKey( spep_1 -1 + 223, 1, 76.3, -28.6 , 0 );--
setMoveKey( spep_1 -1 + 224, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 225, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 226, 1, 95.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 227, 1, 95.5, -42.5 , 0 );--
setMoveKey( spep_1 -1 + 228, 1, 111.4, -30.7 , 0 );
setMoveKey( spep_1 -1 + 229, 1, 111.4, -30.7 , 0 );
setMoveKey( spep_1 -1 + 230, 1, 129.9, -46.3 , 0 );
setMoveKey( spep_1 -1 + 231, 1, 129.9, -46.3 , 0 );
setMoveKey( spep_1 -1 + 232, 1, 132.4, -26.3 , 0 );
setMoveKey( spep_1 -1 + 233, 1, 132.4, -26.3 , 0 );
setMoveKey( spep_1 -1 + 234, 1, 142.1, -31.6 , 0 );
setMoveKey( spep_1 -1 + 235, 1, 142.1, -31.6 , 0 );
setMoveKey( spep_1 -1 + 236, 1, 130.5, -33.3 , 0 );
setMoveKey( spep_1 -1 + 237, 1, 130.5, -33.3 , 0 );--
setMoveKey( spep_1 -1 + 238, 1, 106.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 239, 1, 106.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 240, 1, 107.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 241, 1, 107.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 242, 1, 108.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 243, 1, 108.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 244, 1, 109.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 245, 1, 109.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 246, 1, 110.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 247, 1, 110.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 248, 1, 111.8, -42.5 , 0 );
setMoveKey( spep_1 -1 + 249, 1, 111.8, -42.5 , 0 );
setMoveKey( spep_1 -1 + 250, 1, 112.9, -42.5 , 0 );
setMoveKey( spep_1 -1 + 251, 1, 112.9, -42.5 , 0 );--
setMoveKey( spep_1 -1 + 252, 1, 166.6, -35.7 , 0 );
setMoveKey( spep_1 -1 + 253, 1, 166.6, -35.7 , 0 );
setMoveKey( spep_1 -1 + 254, 1, 161.9, -35.7 , 0 );
setMoveKey( spep_1 -1 + 255, 1, 161.9, -35.7 , 0 );
setMoveKey( spep_1 -1 + 256, 1, 160.2, -51.9 , 0 );
setMoveKey( spep_1 -1 + 257, 1, 160.2, -51.9 , 0 );
setMoveKey( spep_1 -1 + 258, 1, 158.4, -38.7 , 0 );
setMoveKey( spep_1 -1 + 259, 1, 158.4, -38.7 , 0 );
setMoveKey( spep_1 -1 + 260, 1, 165.7, -38.7 , 0 );
setMoveKey( spep_1 -1 + 261, 1, 165.7, -38.7 , 0 );
setMoveKey( spep_1 -1 + 262, 1, 163.9, -47.8 , 0 );
setMoveKey( spep_1 -1 + 263, 1, 163.9, -47.8 , 0 );
setMoveKey( spep_1 -1 + 264, 1, 153, -47.8 , 0 );
setMoveKey( spep_1 -1 + 265, 1, 153, -47.8 , 0 );
setMoveKey( spep_1 -1 + 266, 1, 142.1, -47.8 , 0 );
setMoveKey( spep_1 -1 + 267, 1, 142.1, -47.8 , 0 );--
setMoveKey( spep_1 -1 + 268, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 269, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 270, 1, 95.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 271, 1, 95.6, -42.5 , 0 );--
setMoveKey( spep_1 -1 + 272, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_1 -1 + 273, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_1 -1 + 274, 1, 150, -42.7 , 0 );
setMoveKey( spep_1 -1 + 275, 1, 150, -42.7 , 0 );
setMoveKey( spep_1 -1 + 276, 1, 154.8, -34.4 , 0 );
setMoveKey( spep_1 -1 + 277, 1, 154.8, -34.4 , 0 );
setMoveKey( spep_1 -1 + 278, 1, 150.5, -35.3 , 0 );
setMoveKey( spep_1 -1 + 279, 1, 150.5, -35.3 , 0 );--
setMoveKey( spep_1 -1 + 280, 1, 129.7, -42.4 , 0 );
setMoveKey( spep_1 -1 + 281, 1, 129.7, -42.4 , 0 );--
setMoveKey( spep_1 -1 + 282, 1, 157.3, -30.6 , 0 );
setMoveKey( spep_1 -1 + 283, 1, 157.3, -30.6 , 0 );
setMoveKey( spep_1 -1 + 284, 1, 157, -39.7 , 0 );
setMoveKey( spep_1 -1 + 285, 1, 157, -39.7 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 156.6, -27.5 , 0 );
setMoveKey( spep_1 -1 + 287, 1, 156.6, -27.5 , 0 );--
setMoveKey( spep_1 -1 + 288, 1, 128.6, -39.4 , 0 );
setMoveKey( spep_1 -1 + 289, 1, 128.6, -39.4 , 0 );
setMoveKey( spep_1 -1 + 290, 1, 142.1, -39.4 , 0 );
setMoveKey( spep_1 -1 + 291, 1, 142.1, -39.4 , 0 );--
setMoveKey( spep_1 -1 + 292, 1, 152.9, -57.1 , 0 );
setMoveKey( spep_1 -1 + 293, 1, 152.9, -57.1 , 0 );
setMoveKey( spep_1 -1 + 294, 1, 166.8, -57.1 , 0 );
setMoveKey( spep_1 -1 + 295, 1, 166.8, -57.1 , 0 );
setMoveKey( spep_1 -1 + 296, 1, 168.5, -44.9 , 0 );
setMoveKey( spep_1 -1 + 297, 1, 168.5, -44.9 , 0 );
setMoveKey( spep_1 -1 + 298, 1, 182.5, -44.9 , 0 );
setMoveKey( spep_1 -1 + 299, 1, 182.5, -44.9 , 0 );--
setMoveKey( spep_1 -1 + 300, 1, 165.3, -49.6 , 0 );
setMoveKey( spep_1 -1 + 301, 1, 165.3, -49.6 , 0 );
setMoveKey( spep_1 -1 + 302, 1, 193.1, -49.6 , 0 );
setMoveKey( spep_1 -1 + 303, 1, 193.1, -49.6 , 0 );--
setMoveKey( spep_1 -1 + 304, 1, 189.5, -24 , 0 );
setMoveKey( spep_1 -1 + 305, 1, 189.5, -24 , 0 );
setMoveKey( spep_1 -1 + 306, 1, 204.9, -24 , 0 );
setMoveKey( spep_1 -1 + 307, 1, 204.9, -24 , 0 );
setMoveKey( spep_1 -1 + 308, 1, 208.2, -36.3 , 0 );
setMoveKey( spep_1 -1 + 309, 1, 208.2, -36.3 , 0 );--
setMoveKey( spep_1 -1 + 310, 1, 201.8, -33.6 , 0 );
setMoveKey( spep_1 -1 + 311, 1, 201.8, -33.6 , 0 );
setMoveKey( spep_1 -1 + 312, 1, 202.9, -21.4 , 0 );
setMoveKey( spep_1 -1 + 313, 1, 202.9, -21.4 , 0 );
setMoveKey( spep_1 -1 + 314, 1, 191.8, -21.4 , 0 );
setMoveKey( spep_1 -1 + 315, 1, 191.8, -21.4 , 0 );
setMoveKey( spep_1 -1 + 316, 1, 126.8, -26.5 , 0 );
setMoveKey( spep_1 -1 + 317, 1, 126.8, -26.5 , 0 );
setMoveKey( spep_1 -1 + 318, 1, 119.7, -26.5 , 0 );
setMoveKey( spep_1 -1 + 319, 1, 119.7, -26.5 , 0 );
setMoveKey( spep_1 -1 + 320, 1, 112.6, -26.5 , 0 );
setMoveKey( spep_1 -1 + 321, 1, 112.6, -26.5 , 0 );
setMoveKey( spep_1 -1 + 322, 1, 105.5, -26.5 , 0 );
setMoveKey( spep_1 -1 + 323, 1, 105.5, -26.5 , 0 );--
setMoveKey( spep_1 -1 + 324, 1, 251.9, -23 , 0 );
setMoveKey( spep_1 -1 + 325, 1, 251.9, -23 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 262, -22.2 , 0 );
setMoveKey( spep_1 -1 + 327, 1, 262, -22.2 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 104.8, -18.8 , 0 );
setMoveKey( spep_1 -1 + 329, 1, 104.8, -18.8 , 0 );
setMoveKey( spep_1 -1 + 330, 1, -31, -16.1 , 0 );
setMoveKey( spep_1 -1 + 331, 1, -31, -16.1 , 0 );
setMoveKey( spep_1 -1 + 332, 1, -32.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 333, 1, -32.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 334, 1, -26.9, -12.4 , 0 );
setMoveKey( spep_1 -1 + 335, 1, -26.9, -12.4 , 0 );
setMoveKey( spep_1 -1 + 336, 1, 199.3, -26 , 0 );
setMoveKey( spep_1 -1 + 338, 1, 767.7, -26 , 0 );
setMoveKey( spep_1 -1 + 340, 1, 1353.1, -26 , 0 );
setMoveKey( spep_1 -1 + 342, 1, 1346.6, -26 , 0 );
setMoveKey( spep_1 -1 + 344, 1, 1342.5, -26 , 0 );
setMoveKey( spep_1 -1 + 346, 1, 1338.4, -26 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 1334.3, -26 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 1334.3, -26 , 0 );

setScaleKey( spep_1 -1 + 184, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 203, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 204, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 213, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 214, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 223, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 224, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 227, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 228, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 237, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 238, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 251, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 252, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 267, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 268, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 271, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 272, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 279, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 280, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 281, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 282, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 287, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 288, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 291, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 292, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 299, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 300, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 303, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 304, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 309, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 310, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 323, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 324, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 348, 1, 1.4, 1.4 );--

setRotateKey( spep_1 -1 + 184, 1, 0 );
setRotateKey( spep_1 -1 + 203, 1, 0 );--
setRotateKey( spep_1 -1 + 204, 1, -23.2 );
setRotateKey( spep_1 -1 + 213, 1, -23.2 );--
setRotateKey( spep_1 -1 + 214, 1, 0 );
setRotateKey( spep_1 -1 + 223, 1, 0 );--
setRotateKey( spep_1 -1 + 224, 1, -38.1 );
setRotateKey( spep_1 -1 + 227, 1, -38.1 );--
setRotateKey( spep_1 -1 + 228, 1, 0 );
setRotateKey( spep_1 -1 + 237, 1, 0 );--
setRotateKey( spep_1 -1 + 238, 1, -45.8 );
setRotateKey( spep_1 -1 + 240, 1, -45.1 );
setRotateKey( spep_1 -1 + 242, 1, -44.3 );
setRotateKey( spep_1 -1 + 244, 1, -43.6 );
setRotateKey( spep_1 -1 + 246, 1, -42.8 );
setRotateKey( spep_1 -1 + 248, 1, -42.1 );
setRotateKey( spep_1 -1 + 250, 1, -41.3 );
setRotateKey( spep_1 -1 + 251, 1, -41.3 );--
setRotateKey( spep_1 -1 + 252, 1, 0 );
setRotateKey( spep_1 -1 + 267, 1, 0 );--
setRotateKey( spep_1 -1 + 268, 1, -38.1 );
setRotateKey( spep_1 -1 + 270, 1, -43.3 );
setRotateKey( spep_1 -1 + 271, 1, -43.3 );--
setRotateKey( spep_1 -1 + 272, 1, 0 );
setRotateKey( spep_1 -1 + 279, 1, 0 );--
setRotateKey( spep_1 -1 + 280, 1, -38.1 );
setRotateKey( spep_1 -1 + 281, 1, -38.1 );--
setRotateKey( spep_1 -1 + 282, 1, 0 );
setRotateKey( spep_1 -1 + 287, 1, 0 );--
setRotateKey( spep_1 -1 + 288, 1, -38.1 );
setRotateKey( spep_1 -1 + 291, 1, -38.1 );--
setRotateKey( spep_1 -1 + 292, 1, 0 );
setRotateKey( spep_1 -1 + 299, 1, 0 );--
setRotateKey( spep_1 -1 + 300, 1, -26.3 );
setRotateKey( spep_1 -1 + 303, 1, -23.4 );--
setRotateKey( spep_1 -1 + 304, 1, 0 );
setRotateKey( spep_1 -1 + 309, 1, 0 );--
setRotateKey( spep_1 -1 + 310, 1, -38.1 );
setRotateKey( spep_1 -1 + 323, 1, -38.1 );--
setRotateKey( spep_1 -1 + 324, 1, 0 );
setRotateKey( spep_1 -1 + 348, 1, 0 );

-- ** 音 ** --
--飛行音
SE031 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 0, 1314, "",spep_1 + 206, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 0, SE032, 73 );
SE036 = playSeVer2( spep_1 + 64, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 128, 1019, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 186, 1314, "",spep_1 + 364, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 186, SE043, 32 );
SE044 = playSeVer2( spep_1 + 192, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 192, SE044, 56 );
SE050 = playSeVer2( spep_1 + 256, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 256, SE050, 56 );
SE058 = playSeVer2( spep_1 + 320, 1019, "",spep_1 + 366, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 320, SE058, 56 );

--悟空フレームイン
SE033 = playSeVer2( spep_1 + 28, 1072, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 52, 1116, "",spep_1 + 100, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 52, SE034, 79 );
SE035 = playSeVer2( spep_1 + 60, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE035,  133 );

--正面向かってくる
SE037 = playSeVer2( spep_1 + 102, 44, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 102, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 106, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE039, 54 );
setTimeStretch( SE039, 1.33, 30, 4 );

--キック
SE041 = playSeVer2( spep_1 + 172, 1187, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 172, 1153, "", 0, 0, 0, -1);

--ラッシュ
SE045 = playSeVer2( spep_1 + 210, 1110, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_1 + 210, 1009, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 248, 1010, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_1 + 248, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 248, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 248, SE049, 75 );
SE051 = playSeVer2( spep_1 + 266, 1006, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_1 + 266, 1110, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_1 + 278, 1006, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_1 + 278, 1110, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 290, 1006, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_1 + 290, 1000, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_1 + 298, 1110, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_1 + 320, 1187, "",spep_1 + 358, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 320, SE059, 71 );
SE060 = playSeVer2( spep_1 + 320, 1120, "",spep_1 + 358, 0, 10, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 347 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 347;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_2 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

   spname = entryEffectLife( spep_2 + 0, 1512, 90, 0x100, -1, 0, 0, -195 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_2 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_2 + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_2 + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_2 + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_2 + 0, housha, 0 );
    setEffRotateKey( spep_2 + 90, housha, 0 );
    setEffAlphaKey( spep_2 + 0, housha, 255 );
    setEffAlphaKey( spep_2 + 90, housha, 255 );

    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_2 + 0, shuchusen, 90, 20 );
    setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( spep_2 + 0, shuchusen, 0 );
    setEffRotateKey( spep_2 + 90, shuchusen, 0 );
    setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff2 = entryEffectLife( spep_2 + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_2 + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_2 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_2 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_2 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_2 + 0, kaminari, 0 );
    setEffRotateKey( spep_2 + 90, kaminari, 0 );
    setEffAlphaKey( spep_2 + 0, kaminari, 255 );
    setEffAlphaKey( spep_2 + 90, kaminari, 255 );

    spname = entryEffectLife( spep_2 + 0, 3246, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_2 + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_2 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_2 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_2 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_2 + 0, haikei, 0 );
    setEffRotateKey( spep_2 + 90, haikei, 0 );
    setEffAlphaKey( spep_2 + 0, haikei, 255 );
    setEffAlphaKey( spep_2 + 90, haikei, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff2 = entryEffectLife( spep_2 + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_2 + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_2 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_2 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_2 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_2 + 0, kaminari, 0 );
    setEffRotateKey( spep_2 + 90, kaminari, 0 );
    setEffAlphaKey( spep_2 + 0, kaminari, 255 );
    setEffAlphaKey( spep_2 + 90, kaminari, 255 );

    spname = entryEffectLife( spep_2 + 0, 3250, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え 

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_2 + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_2 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_2 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_2 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_2 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_2 + 0, haikei, 0 );
    setEffRotateKey( spep_2 + 90, haikei, 0 );
    setEffAlphaKey( spep_2 + 0, haikei, 255 );
    setEffAlphaKey( spep_2 + 90, haikei, 255 );
end

-- ** 音 ** --
SE_CUTIN = playSeVer2( spep_2 + 0, 1035, "", 0, 0, 0, -1);

--画面前突っ込んでくる
SE062 = playSeVer2( spep_2 + 84, 1182, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 84, 9, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 86, 1277, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 86, 1304, "",spep_2 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 86, SE065, 82 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュブロー　煙を上げて吹っ飛ぶ(326F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュブロー 煙を上げて吹っ飛ぶ ef_003_ch
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 326, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 326, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 326, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 326, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --↑敵を挟んでの背景 ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 326, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 326, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 326, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 326, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -1 + 72, 1, 1 );
setDisp( spep_3 -1 + 148, 1, 0 );
changeAnime( spep_3 -1 + 72, 1, 107 );
changeAnime( spep_3 -1 + 80, 1, 5 );

setMoveKey( spep_3 -1 + 72, 1, 45.7, -28.8 , 0 );
setMoveKey( spep_3 -1 + 75, 1, 45.7, -28.8 , 0 );
setMoveKey( spep_3 -1 + 76, 1, -126.2, -145.8 , 0 );
setMoveKey( spep_3 -1 + 79, 1, -126.2, -145.8 , 0 );--
setMoveKey( spep_3 -1 + 80, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 81, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 82, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 83, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 84, 1, 123.7, -112.3 , 0 );
setMoveKey( spep_3 -1 + 85, 1, 123.7, -112.3 , 0 );
setMoveKey( spep_3 -1 + 86, 1, 125, -111 , 0 );
setMoveKey( spep_3 -1 + 87, 1, 125, -111 , 0 );
setMoveKey( spep_3 -1 + 88, 1, 122.5, -36.6 , 0 );
setMoveKey( spep_3 -1 + 89, 1, 122.5, -36.6 , 0 );
setMoveKey( spep_3 -1 + 90, 1, 124, -37.5 , 0 );
setMoveKey( spep_3 -1 + 91, 1, 124, -37.5 , 0 );
setMoveKey( spep_3 -1 + 92, 1, 156.3, -107.6 , 0 );
setMoveKey( spep_3 -1 + 93, 1, 156.3, -107.6 , 0 );
setMoveKey( spep_3 -1 + 94, 1, 155.6, -106.3 , 0 );
setMoveKey( spep_3 -1 + 95, 1, 155.6, -106.3 , 0 );
setMoveKey( spep_3 -1 + 96, 1, 162.6, -28 , 0 );
setMoveKey( spep_3 -1 + 97, 1, 162.6, -28 , 0 );
setMoveKey( spep_3 -1 + 98, 1, 161.3, -29.9 , 0 );
setMoveKey( spep_3 -1 + 99, 1, 161.3, -29.9 , 0 );
setMoveKey( spep_3 -1 + 100, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 101, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 102, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 103, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 104, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 105, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 106, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 107, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 108, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 109, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 110, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 111, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 112, 1, 167.6, -64.8 , 0 );
setMoveKey( spep_3 -1 + 113, 1, 167.6, -64.8 , 0 );
setMoveKey( spep_3 -1 + 114, 1, 172.2, -61.2 , 0 );
setMoveKey( spep_3 -1 + 115, 1, 172.2, -61.2 , 0 );
setMoveKey( spep_3 -1 + 116, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 117, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 118, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 119, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 120, 1, 155.2, -81.9 , 0 );
setMoveKey( spep_3 -1 + 121, 1, 155.2, -81.9 , 0 );
setMoveKey( spep_3 -1 + 122, 1, 161.9, -81.8 , 0 );
setMoveKey( spep_3 -1 + 123, 1, 161.9, -81.8 , 0 );--
setMoveKey( spep_3 -1 + 124, 1, 142.3, -25 , 0 );
setMoveKey( spep_3 -1 + 148, 1, 142.3, -25 , 0 );

setScaleKey( spep_3 -1 + 72, 1, 3, 3 );
setScaleKey( spep_3 -1 + 75, 1, 3, 3 );
setScaleKey( spep_3 -1 + 76, 1, 3.99, 3.99 );
setScaleKey( spep_3 -1 + 79, 1, 3.99, 3.99 );--
setScaleKey( spep_3 -1 + 80, 1, 3, 3 );
setScaleKey( spep_3 -1 + 99, 1, 3, 3 );
setScaleKey( spep_3 -1 + 100, 1, 2.75, 2.75 );
setScaleKey( spep_3 -1 + 111, 1, 2.75, 2.75 );
setScaleKey( spep_3 -1 + 112, 1, 2.68, 2.68 );
setScaleKey( spep_3 -1 + 113, 1, 2.68, 2.68 );
setScaleKey( spep_3 -1 + 114, 1, 2.52, 2.52 );
setScaleKey( spep_3 -1 + 119, 1, 2.52, 2.52 );
setScaleKey( spep_3 -1 + 120, 1, 2.43, 2.43 );
setScaleKey( spep_3 -1 + 121, 1, 2.43, 2.43 );
setScaleKey( spep_3 -1 + 122, 1, 2.35, 2.35 );
setScaleKey( spep_3 -1 + 123, 1, 2.35, 2.35 );--
setScaleKey( spep_3 -1 + 124, 1, 0.87, 0.87 );
setScaleKey( spep_3 -1 + 126, 1, 0.78, 0.78 );
setScaleKey( spep_3 -1 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_3 -1 + 130, 1, 0.62, 0.62 );
setScaleKey( spep_3 -1 + 132, 1, 0.56, 0.56 );
setScaleKey( spep_3 -1 + 134, 1, 0.5, 0.5 );
setScaleKey( spep_3 -1 + 136, 1, 0.46, 0.46 );
setScaleKey( spep_3 -1 + 138, 1, 0.42, 0.42 );
setScaleKey( spep_3 -1 + 140, 1, 0.39, 0.39 );
setScaleKey( spep_3 -1 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_3 -1 + 144, 1, 0.35, 0.35 );
setScaleKey( spep_3 -1 + 146, 1, 0.35, 0.35 );
setScaleKey( spep_3 -1 + 148, 1, 0.35, 0.35 );

setRotateKey( spep_3 -1 + 72, 1, -63.6 );
setRotateKey( spep_3 -1 + 75, 1, -63.6 );
setRotateKey( spep_3 -1 + 76, 1, -60.2 );
setRotateKey( spep_3 -1 + 79, 1, -60.2 );--
setRotateKey( spep_3 -1 + 80, 1, 24.2 );
setRotateKey( spep_3 -1 + 123, 1, 24.2 );--
setRotateKey( spep_3 -1 + 124, 1, 24.4 );
setRotateKey( spep_3 -1 + 148, 1, 24.4 );

-- ** 音 ** --
--振りかぶる
SE066 = playSeVer2( spep_3 + 36, 1116, "",spep_3 + 78, 0, 20, -1);

--殴り飛ばす
SE067 = playSeVer2( spep_3 + 72, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE067, 65 );
SE068 = playSeVer2( spep_3 + 72, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE068, 72 );
SE069 = playSeVer2( spep_3 + 72, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE069, 93 );
SE070 = playSeVer2( spep_3 + 82, 1120, "", 0, 0, 0, -1);

--敵吹き飛ばす
SE071 = playSeVer2( spep_3 + 112, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 112, SE071, 74 );

--地面激突
SE072 = playSeVer2( spep_3 + 140, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE072, 82 );
SE073 = playSeVer2( spep_3 + 140, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE073, 123 );
SE074 = playSeVer2( spep_3 + 140, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE074, 73 );

--地面ひきづられる
SE075 = playSeVer2( spep_3 + 150, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 150, SE075, 78 );
setPitch( spep_3 + 150, SE075, -500 );
setTimeStretch( SE075, 0.67, 30, 4 );
SE076 = playSeVer2( spep_3 + 158, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 158, SE076, 68 );
setPitch( spep_3 + 158, SE076, -500 );
setTimeStretch( SE076, 0.67, 30, 4 );
SE077 = playSeVer2( spep_3 + 166, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 166, SE077, 94 );
setPitch( spep_3 + 166, SE077, -600 );
setTimeStretch( SE077, 0.6, 30, 4 );
SE078 = playSeVer2( spep_3 + 176, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 176, SE078, 77 );
setPitch( spep_3 + 176, SE078, -500 );
setTimeStretch( SE078, 0.67, 30, 4 );
SE079 = playSeVer2( spep_3 + 184, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 184, SE079, 65 );
setPitch( spep_3 + 184, SE079, -400 );
setTimeStretch( SE079, 0.73, 30, 4 );
SE080 = playSeVer2( spep_3 + 194, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 194, SE080, 60 );
setPitch( spep_3 + 194, SE080, -500 );
setTimeStretch( SE080, 0.67, 30, 4 );
SE081 = playSeVer2( spep_3 + 202, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 202, SE081, 63 );
setPitch( spep_3 + 202, SE081, -700 );
setTimeStretch( SE081, 0.53, 30, 4 );
SE082 = playSeVer2( spep_3 + 212, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 212, SE082, 63 );
setPitch( spep_3 + 212, SE082, -500 );
setTimeStretch( SE082, 0.67, 30, 4 );
SE083 = playSeVer2( spep_3 + 222, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 222, SE083, 71 );
setPitch( spep_3 + 222, SE083, -300 );
setTimeStretch( SE083, 0.8, 30, 4 );
SE084 = playSeVer2( spep_3 + 230, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 230, SE084, 56 );
setPitch( spep_3 + 230, SE084, -500 );
setTimeStretch( SE084, 0.67, 30, 4 );
SE085 = playSeVer2( spep_3 + 240, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 240, SE085, 77 );
setPitch( spep_3 + 240, SE085, -500 );
setTimeStretch( SE085, 0.67, 30, 4 );

--爆発
SE086 = playSeVer2( spep_3 + 242, 1024, "", 0, 0, 0, -1);
SE087 = playSeVer2( spep_3 + 242, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 326 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 166 );
endPhase( spep_3 + 316 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 回り込んで突撃　殴って追跡(358F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --回り込んで突撃　殴って追跡    ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 358, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 358, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 358, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 358 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 358, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --↑敵を挟んでの背景 ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 358, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 358, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 358, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 358 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 358, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
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

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 101 );
changeAnime( spep_0 + 102 -1, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 243.8, -9.1 , 0 );
setMoveKey( spep_0 + 1, 1, 243.8, -9.1 , 0 );
setMoveKey( spep_0 + 2, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 3, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 4, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 5, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 6, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 90 -1, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 92 -1, 1, 239.5, -6.5 , 0 );
setMoveKey( spep_0 + 94 -1, 1, 235.1, -4 , 0 );
setMoveKey( spep_0 + 96 -1, 1, 230.8, -1.4 , 0 );
setMoveKey( spep_0 + 98 -1, 1, 226.5, 1.1 , 0 );
setMoveKey( spep_0 + 101 -1, 1, 222.1, 3.7 , 0 );
setMoveKey( spep_0 + 102 -1, 1, 217, 3.7 , 0 );
setMoveKey( spep_0 + 104 -1, 1, 215.2, 4.3 , 0 );
setMoveKey( spep_0 + 106 -1, 1, 213.4, 4.9 , 0 );
setMoveKey( spep_0 + 108 -1, 1, 211.6, 5.5 , 0 );
setMoveKey( spep_0 + 110 -1, 1, 209.8, 6.1 , 0 );
setMoveKey( spep_0 + 112 -1, 1, 208, 6.7 , 0 );
setMoveKey( spep_0 + 114 -1, 1, 206.2, 7.3 , 0 );
setMoveKey( spep_0 + 116 -1, 1, 207.8, 7.8 , 0 );
setMoveKey( spep_0 + 118 -1, 1, 209.4, 8.2 , 0 );
setMoveKey( spep_0 + 120 -1, 1, 211, 8.7 , 0 );
setMoveKey( spep_0 + 122 -1, 1, 212.6, 9.1 , 0 );
setMoveKey( spep_0 + 124 -1, 1, 214.2, 9.6 , 0 );
setMoveKey( spep_0 + 126 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 138 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 139 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 140 -1, 1, 242.2, 18 , 0 );
setMoveKey( spep_0 + 142 -1, 1, 236.9, 18 , 0 );
setMoveKey( spep_0 + 144 -1, 1, 230.4, 18 , 0 );
setMoveKey( spep_0 + 146 -1, 1, 222.8, 18 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 90 -1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 92 -1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 94 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 96 -1, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 98 -1, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 101 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 102 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 104 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 106 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 108 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 110 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 112 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 114 -1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 116 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 118 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 120 -1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 122 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 124 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 126 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 138 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 139 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 140 -1, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 142 -1, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 144 -1, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 146 -1, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 210, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );
SE003 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 210, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 200 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 16 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 16 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 16 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 16 );

--顔カットイン
--SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--カメラワーク
SE008 = playSeVer2( spep_0 + 72, 1072, "", 0, 16, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 358 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 222.8, 18 , 0 );
    setMoveKey( SP_dodge + 2, 1, 213.9, 18 , 0 );
    setMoveKey( SP_dodge + 4, 1, 203.9, 18 , 0 );
    setMoveKey( SP_dodge + 6, 1, 192.7, 18 , 0 );
    setMoveKey( SP_dodge + 8, 1, 180.3, 18 , 0 );
    setMoveKey( SP_dodge + 10, 1, 166.8, 18 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 2, 1, 0.53, 0.53 );
    setScaleKey( SP_dodge + 4, 1, 0.58, 0.58 );
    setScaleKey( SP_dodge + 6, 1, 0.63, 0.63 );
    setScaleKey( SP_dodge + 8, 1, 0.69, 0.69 );
    setScaleKey( SP_dodge + 10, 1, 0.75, 0.75 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 162 -1, 1, 101 );
changeAnime( spep_0 + 184 -1, 1, 108 );
changeAnime( spep_0 + 214 -1, 1, 106 );
setDisp( spep_0 + 222 -1, 1, 0 );

setMoveKey( spep_0 + 148 -1, 1, 213.9, 18 , 0 );
setMoveKey( spep_0 + 150 -1, 1, 203.9, 18 , 0 );
setMoveKey( spep_0 + 152 -1, 1, 192.7, 18 , 0 );
setMoveKey( spep_0 + 154 -1, 1, 180.3, 18 , 0 );
setMoveKey( spep_0 + 156 -1, 1, 166.8, 18 , 0 );
setMoveKey( spep_0 + 158 -1, 1, 152.1, 18 , 0 );
setMoveKey( spep_0 + 161 -1, 1, 136.2, 17.9 , 0 );
setMoveKey( spep_0 + 162 -1, 1, 177.6, 12.2 , 0 );
setMoveKey( spep_0 + 183 -1, 1, 177.6, 12.2 , 0 );
setMoveKey( spep_0 + 184 -1, 1, 185.3, 19.7 , 0 );
setMoveKey( spep_0 + 185 -1, 1, 185.3, 19.7 , 0 );
setMoveKey( spep_0 + 186 -1, 1, 150.6, 4.3 , 0 );
setMoveKey( spep_0 + 187 -1, 1, 150.6, 4.3 , 0 );
setMoveKey( spep_0 + 188 -1, 1, 168.6, 31.8 , 0 );
setMoveKey( spep_0 + 189 -1, 1, 168.6, 31.8 , 0 );
setMoveKey( spep_0 + 190 -1, 1, 144.2, 12.7 , 0 );
setMoveKey( spep_0 + 191 -1, 1, 144.2, 12.7 , 0 );
setMoveKey( spep_0 + 192 -1, 1, 125.6, 20.5 , 0 );
setMoveKey( spep_0 + 193 -1, 1, 125.6, 20.5 , 0 );
setMoveKey( spep_0 + 194 -1, 1, 150.6, 21.5 , 0 );
setMoveKey( spep_0 + 195 -1, 1, 150.6, 21.5 , 0 );
setMoveKey( spep_0 + 196 -1, 1, 141, 29.2 , 0 );
setMoveKey( spep_0 + 197 -1, 1, 141, 29.2 , 0 );
setMoveKey( spep_0 + 198 -1, 1, 154.5, 38.9 , 0 );
setMoveKey( spep_0 + 199 -1, 1, 154.5, 38.9 , 0 );
setMoveKey( spep_0 + 200 -1, 1, 138.1, 19.7 , 0 );
setMoveKey( spep_0 + 201 -1, 1, 138.1, 19.7 , 0 );
setMoveKey( spep_0 + 202 -1, 1, 150.6, 42.7 , 0 );
setMoveKey( spep_0 + 203 -1, 1, 150.6, 42.7 , 0 );
setMoveKey( spep_0 + 204 -1, 1, 173.7, 15.8 , 0 );
setMoveKey( spep_0 + 205 -1, 1, 173.7, 15.8 , 0 );
setMoveKey( spep_0 + 206 -1, 1, 183.4, 24.6 , 0 );
setMoveKey( spep_0 + 207 -1, 1, 183.4, 24.6 , 0 );
setMoveKey( spep_0 + 208 -1, 1, 171.1, 30 , 0 );
setMoveKey( spep_0 + 209 -1, 1, 171.1, 30 , 0 );
setMoveKey( spep_0 + 210 -1, 1, 186, 27.6 , 0 );
setMoveKey( spep_0 + 211 -1, 1, 186, 27.6 , 0 );
setMoveKey( spep_0 + 212 -1, 1, 181.4, 35.1 , 0 );
setMoveKey( spep_0 + 213 -1, 1, 181.4, 35.1 , 0 );
setMoveKey( spep_0 + 214 -1, 1, 310.7, 28.8 , 0 );
setMoveKey( spep_0 + 216 -1, 1, 310.7, 28.8 , 0 );
setMoveKey( spep_0 + 218 -1, 1, 516.4, 27.9 , 0 );
setMoveKey( spep_0 + 220 -1, 1, 516.4, 27.9 , 0 );
setMoveKey( spep_0 + 222 -1, 1, 673, 27.9 , 0 );

setScaleKey( spep_0 + 148 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 150 -1, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 152 -1, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 154 -1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 156 -1, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 158 -1, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 161 -1, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 162 -1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 183 -1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 184 -1, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 222 -1, 1, 1.8, 1.8 );

setRotateKey( spep_0 + 213 -1, 1, 0 );
setRotateKey( spep_0 + 214 -1, 1, -9.8 );
setRotateKey( spep_0 + 216 -1, 1, -9.8 );
setRotateKey( spep_0 + 218 -1, 1, -0.5 );
setRotateKey( spep_0 + 222 -1, 1, -0.5 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 302 -1, 1, 1 );
setDisp( spep_0 + 350 -1, 1, 0 );
changeAnime( spep_0 + 302 -1, 1, 106 );

setMoveKey( spep_0 + 302 -1, 1, -101.8, 149.1 , 0 );
setMoveKey( spep_0 + 303 -1, 1, -101.8, 149.1 , 0 );
setMoveKey( spep_0 + 304 -1, 1, -69.1, 121.7 , 0 );
setMoveKey( spep_0 + 305 -1, 1, -69.1, 121.7 , 0 );
setMoveKey( spep_0 + 306 -1, 1, -37.5, 95.2 , 0 );
setMoveKey( spep_0 + 307 -1, 1, -37.5, 95.2 , 0 );
setMoveKey( spep_0 + 308 -1, 1, -7.1, 69.7 , 0 );
setMoveKey( spep_0 + 309 -1, 1, -7.1, 69.7 , 0 );
setMoveKey( spep_0 + 310 -1, 1, 22.2, 45.1 , 0 );
setMoveKey( spep_0 + 311 -1, 1, 22.2, 45.1 , 0 );
setMoveKey( spep_0 + 312 -1, 1, 50.3, 21.5 , 0 );
setMoveKey( spep_0 + 313 -1, 1, 50.3, 21.5 , 0 );
setMoveKey( spep_0 + 314 -1, 1, 77.3, -1.1 , 0 );
setMoveKey( spep_0 + 315 -1, 1, 77.3, -1.1 , 0 );
setMoveKey( spep_0 + 316 -1, 1, 103.1, -22.8 , 0 );
setMoveKey( spep_0 + 317 -1, 1, 103.1, -22.8 , 0 );
setMoveKey( spep_0 + 318 -1, 1, 127.8, -43.5 , 0 );
setMoveKey( spep_0 + 319 -1, 1, 127.8, -43.5 , 0 );
setMoveKey( spep_0 + 320 -1, 1, 151.4, -63.3 , 0 );
setMoveKey( spep_0 + 321 -1, 1, 151.4, -63.3 , 0 );
setMoveKey( spep_0 + 322 -1, 1, 173.8, -82.1 , 0 );
setMoveKey( spep_0 + 323 -1, 1, 173.8, -82.1 , 0 );
setMoveKey( spep_0 + 324 -1, 1, 195.1, -100 , 0 );
setMoveKey( spep_0 + 325 -1, 1, 195.1, -100 , 0 );
setMoveKey( spep_0 + 326 -1, 1, 215.2, -116.9 , 0 );
setMoveKey( spep_0 + 327 -1, 1, 215.2, -116.9 , 0 );
setMoveKey( spep_0 + 328 -1, 1, 234.2, -132.8 , 0 );
setMoveKey( spep_0 + 329 -1, 1, 234.2, -132.8 , 0 );
setMoveKey( spep_0 + 330 -1, 1, 252.1, -147.8 , 0 );
setMoveKey( spep_0 + 331 -1, 1, 252.1, -147.8 , 0 );
setMoveKey( spep_0 + 332 -1, 1, 268.8, -161.8 , 0 );
setMoveKey( spep_0 + 333 -1, 1, 268.8, -161.8 , 0 );
setMoveKey( spep_0 + 334 -1, 1, 284.4, -174.9 , 0 );
setMoveKey( spep_0 + 335 -1, 1, 284.4, -174.9 , 0 );
setMoveKey( spep_0 + 336 -1, 1, 298.8, -187 , 0 );
setMoveKey( spep_0 + 337 -1, 1, 298.8, -187 , 0 );
setMoveKey( spep_0 + 338 -1, 1, 312.1, -198.1 , 0 );
setMoveKey( spep_0 + 339 -1, 1, 312.1, -198.1 , 0 );
setMoveKey( spep_0 + 340 -1, 1, 324.2, -208.3 , 0 );
setMoveKey( spep_0 + 341 -1, 1, 324.2, -208.3 , 0 );
setMoveKey( spep_0 + 342 -1, 1, 335.2, -217.6 , 0 );
setMoveKey( spep_0 + 343 -1, 1, 335.2, -217.6 , 0 );
setMoveKey( spep_0 + 344 -1, 1, 345.1, -225.8 , 0 );
setMoveKey( spep_0 + 345 -1, 1, 345.1, -225.8 , 0 );
setMoveKey( spep_0 + 346 -1, 1, 353.8, -233.2 , 0 );
setMoveKey( spep_0 + 347 -1, 1, 353.8, -233.2 , 0 );
setMoveKey( spep_0 + 348 -1, 1, 361.4, -239.5 , 0 );
setMoveKey( spep_0 + 349 -1, 1, 361.4, -239.5 , 0 );
setMoveKey( spep_0 + 350 -1, 1, 367.9, -244.9 , 0 );

setScaleKey( spep_0 + 302 -1, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 350 -1, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 302 -1, 1, 70 );
setRotateKey( spep_0 + 350 -1, 1, 70 );

-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 16 );
SE015 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE015, 16 );
SE020 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE020, 25 );
SE021 = playSeVer2( spep_0 + 206, 1181, "",spep_0 + 330, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 206, SE021, 126 );
SE022 = playSeVer2( spep_0 + 206, 1407, "",spep_0 + 330, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 206, SE022, 158 );
SE023 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE023, 25 );
SE024 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE024, 25 );

--向かっていく
SE011 = playSeVer2( spep_0 + 134, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 134, 1117, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 134, 1002, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 260, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 264, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE027, 119 );

--パンチ
SE016 = playSeVer2( spep_0 + 170, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE016, 73 );
SE017 = playSeVer2( spep_0 + 176, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE017, 89 );
SE018 = playSeVer2( spep_0 + 176, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE018, 72 );
SE019 = playSeVer2( spep_0 + 178, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE019, 81 );

--俯瞰飛行音
SE025 = playSeVer2( spep_0 + 258, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE025, 76 );

--俯瞰飛行音
SE028 = playSeVer2( spep_0 + 296, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE028, 71 );
SE029 = playSeVer2( spep_0 + 296, 1304, "", 0, 0, 0, -1);

--飛行音
SE030 = playSeVer2( spep_0 + 296, 1019, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 358;


------------------------------------------------------
-- 森林に入り蹴りからのコンボ(347F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
combo_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --森林に入り蹴りからのコンボ    ef_002_ch
setEffMoveKey( spep_1 + 0, combo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 347, combo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 347, combo_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_f, 0 );
setEffRotateKey( spep_1 + 347, combo_f, 0 );
setEffAlphaKey( spep_1 + 0, combo_f, 255 );
setEffAlphaKey( spep_1 + 347 -1, combo_f, 255 );
setEffAlphaKey( spep_1 + 347, combo_f, 0 );

combo_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --↑敵を挟んでの背景 ef_002_bg
setEffMoveKey( spep_1 + 0, combo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 347, combo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 347, combo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_b, 0 );
setEffRotateKey( spep_1 + 347, combo_b, 0 );
setEffAlphaKey( spep_1 + 0, combo_b, 255 );
setEffAlphaKey( spep_1 + 347 -1, combo_b, 255 );
setEffAlphaKey( spep_1 + 347, combo_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -1 + 100, 1, 0 );
changeAnime( spep_1 -1 + 0, 1, 105 );

setMoveKey( spep_1 + 0, 1, -82.1, -24.7 , 0 );
setMoveKey( spep_1 -1 + 2, 1, -79.8, -24.8 , 0 );
setMoveKey( spep_1 -1 + 4, 1, -77.5, -24.9 , 0 );
setMoveKey( spep_1 -1 + 6, 1, -75.2, -25 , 0 );
setMoveKey( spep_1 -1 + 8, 1, -72.9, -25.1 , 0 );
setMoveKey( spep_1 -1 + 10, 1, -70.7, -25.2 , 0 );
setMoveKey( spep_1 -1 + 12, 1, -68.4, -25.2 , 0 );
setMoveKey( spep_1 -1 + 14, 1, -66.1, -25.3 , 0 );
setMoveKey( spep_1 -1 + 16, 1, -63.8, -25.4 , 0 );
setMoveKey( spep_1 -1 + 18, 1, -61.6, -25.4 , 0 );
setMoveKey( spep_1 -1 + 20, 1, -59.3, -25.5 , 0 );
setMoveKey( spep_1 -1 + 22, 1, -57, -25.5 , 0 );
setMoveKey( spep_1 -1 + 24, 1, -54.8, -25.6 , 0 );
setMoveKey( spep_1 -1 + 26, 1, -52.5, -25.6 , 0 );
setMoveKey( spep_1 -1 + 28, 1, -50.2, -25.7 , 0 );
setMoveKey( spep_1 -1 + 30, 1, -48, -25.7 , 0 );
setMoveKey( spep_1 -1 + 32, 1, -45.7, -25.8 , 0 );
setMoveKey( spep_1 -1 + 34, 1, -43.4, -25.8 , 0 );
setMoveKey( spep_1 -1 + 36, 1, -41.2, -25.8 , 0 );
setMoveKey( spep_1 -1 + 38, 1, -38.9, -25.9 , 0 );
setMoveKey( spep_1 -1 + 40, 1, -36.7, -25.9 , 0 );
setMoveKey( spep_1 -1 + 42, 1, -34.5, -25.9 , 0 );
setMoveKey( spep_1 -1 + 44, 1, -32.2, -25.9 , 0 );
setMoveKey( spep_1 -1 + 46, 1, -30, -25.9 , 0 );
setMoveKey( spep_1 -1 + 48, 1, -27.7, -26 , 0 );
setMoveKey( spep_1 -1 + 50, 1, -25.5, -26 , 0 );
setMoveKey( spep_1 -1 + 52, 1, -23.3, -26 , 0 );
setMoveKey( spep_1 -1 + 54, 1, -21.1, -26 , 0 );
setMoveKey( spep_1 -1 + 56, 1, -18.8, -26 , 0 );
setMoveKey( spep_1 -1 + 58, 1, -16.6, -26 , 0 );
setMoveKey( spep_1 -1 + 60, 1, -14.4, -26 , 0 );
setMoveKey( spep_1 -1 + 62, 1, -12.2, -26 , 0 );
setMoveKey( spep_1 -1 + 64, 1, -10, -26 , 0 );
setMoveKey( spep_1 -1 + 66, 1, -7.8, -26 , 0 );
setMoveKey( spep_1 -1 + 68, 1, -5.6, -26 , 0 );
setMoveKey( spep_1 -1 + 70, 1, -3.4, -26 , 0 );
setMoveKey( spep_1 -1 + 72, 1, -1.2, -26 , 0 );
setMoveKey( spep_1 -1 + 74, 1, 0.9, -25.9 , 0 );
setMoveKey( spep_1 -1 + 76, 1, 3.1, -25.9 , 0 );
setMoveKey( spep_1 -1 + 78, 1, 5.3, -25.9 , 0 );
setMoveKey( spep_1 -1 + 99, 1, 5.3, -25.9 , 0 );
setMoveKey( spep_1 -1 + 100, 1, 5.3, -25.9 , 0 );

setScaleKey( spep_1 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_1 -1 + 2, 1, 2.73, 2.73 );
setScaleKey( spep_1 -1 + 4, 1, 2.66, 2.66 );
setScaleKey( spep_1 -1 + 6, 1, 2.59, 2.59 );
setScaleKey( spep_1 -1 + 8, 1, 2.53, 2.53 );
setScaleKey( spep_1 -1 + 10, 1, 2.46, 2.46 );
setScaleKey( spep_1 -1 + 12, 1, 2.4, 2.4 );
setScaleKey( spep_1 -1 + 14, 1, 2.33, 2.33 );
setScaleKey( spep_1 -1 + 16, 1, 2.27, 2.27 );
setScaleKey( spep_1 -1 + 18, 1, 2.2, 2.2 );
setScaleKey( spep_1 -1 + 20, 1, 2.14, 2.14 );
setScaleKey( spep_1 -1 + 22, 1, 2.07, 2.07 );
setScaleKey( spep_1 -1 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_1 -1 + 26, 1, 1.94, 1.94 );
setScaleKey( spep_1 -1 + 28, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 30, 1, 1.82, 1.82 );
setScaleKey( spep_1 -1 + 32, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 34, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 38, 1, 1.57, 1.57 );
setScaleKey( spep_1 -1 + 40, 1, 1.51, 1.51 );
setScaleKey( spep_1 -1 + 42, 1, 1.45, 1.45 );
setScaleKey( spep_1 -1 + 44, 1, 1.39, 1.39 );
setScaleKey( spep_1 -1 + 46, 1, 1.32, 1.32 );
setScaleKey( spep_1 -1 + 48, 1, 1.26, 1.26 );
setScaleKey( spep_1 -1 + 50, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 52, 1, 1.15, 1.15 );
setScaleKey( spep_1 -1 + 54, 1, 1.09, 1.09 );
setScaleKey( spep_1 -1 + 56, 1, 1.03, 1.03 );
setScaleKey( spep_1 -1 + 58, 1, 0.97, 0.97 );
setScaleKey( spep_1 -1 + 60, 1, 0.91, 0.91 );
setScaleKey( spep_1 -1 + 62, 1, 0.85, 0.85 );
setScaleKey( spep_1 -1 + 64, 1, 0.79, 0.79 );
setScaleKey( spep_1 -1 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_1 -1 + 68, 1, 0.68, 0.68 );
setScaleKey( spep_1 -1 + 70, 1, 0.62, 0.62 );
setScaleKey( spep_1 -1 + 72, 1, 0.57, 0.57 );
setScaleKey( spep_1 -1 + 74, 1, 0.51, 0.51 );
setScaleKey( spep_1 -1 + 76, 1, 0.45, 0.45 );
setScaleKey( spep_1 -1 + 78, 1, 0.4, 0.4 );
setScaleKey( spep_1 -1 + 100, 1, 0.1, 0.1 );

setRotateKey( spep_1 + 0, 1, 27.1 );
setRotateKey( spep_1 -1 + 100, 1, 27.1 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -1 + 184, 1, 1 );
setDisp( spep_1 -1 + 348, 1, 0 );
changeAnime( spep_1 -1 + 184, 1, 108 );
changeAnime( spep_1 -1 + 204, 1, 106 );
changeAnime( spep_1 -1 + 214, 1, 108 );
changeAnime( spep_1 -1 + 224, 1, 106 );
changeAnime( spep_1 -1 + 228, 1, 108 );
changeAnime( spep_1 -1 + 238, 1, 106 );
changeAnime( spep_1 -1 + 252, 1, 108 );
changeAnime( spep_1 -1 + 268, 1, 106 );
changeAnime( spep_1 -1 + 272, 1, 108 );
changeAnime( spep_1 -1 + 280, 1, 106 );
changeAnime( spep_1 -1 + 282, 1, 108 );
changeAnime( spep_1 -1 + 288, 1, 106 );
changeAnime( spep_1 -1 + 292, 1, 108 );
changeAnime( spep_1 -1 + 300, 1, 106 );
changeAnime( spep_1 -1 + 304, 1, 108 );
changeAnime( spep_1 -1 + 310, 1, 106 );
changeAnime( spep_1 -1 + 324, 1, 108 );

setMoveKey( spep_1 -1 + 184, 1, 36.3, -42.9 , 0 );
setMoveKey( spep_1 -1 + 185, 1, 36.3, -42.9 , 0 );
setMoveKey( spep_1 -1 + 186, 1, 40.8, -29.8 , 0 );
setMoveKey( spep_1 -1 + 187, 1, 40.8, -29.8 , 0 );
setMoveKey( spep_1 -1 + 188, 1, 34.2, -54.3 , 0 );
setMoveKey( spep_1 -1 + 189, 1, 34.2, -54.3 , 0 );
setMoveKey( spep_1 -1 + 190, 1, 41.3, -33.2 , 0 );
setMoveKey( spep_1 -1 + 191, 1, 41.3, -33.2 , 0 );
setMoveKey( spep_1 -1 + 192, 1, 39.6, -41.9 , 0 );
setMoveKey( spep_1 -1 + 193, 1, 39.6, -41.9 , 0 );
setMoveKey( spep_1 -1 + 194, 1, 40.4, -25.7 , 0 );
setMoveKey( spep_1 -1 + 195, 1, 40.4, -25.7 , 0 );
setMoveKey( spep_1 -1 + 196, 1, 41.3, -40.4 , 0 );
setMoveKey( spep_1 -1 + 197, 1, 41.3, -40.4 , 0 );
setMoveKey( spep_1 -1 + 198, 1, 35.9, -24.2 , 0 );
setMoveKey( spep_1 -1 + 199, 1, 35.9, -24.2 , 0 );
setMoveKey( spep_1 -1 + 200, 1, 58.4, -54.4 , 0 );
setMoveKey( spep_1 -1 + 201, 1, 58.4, -54.4 , 0 );
setMoveKey( spep_1 -1 + 202, 1, 43.8, -38.1 , 0 );
setMoveKey( spep_1 -1 + 203, 1, 43.8, -38.1 , 0 );--
setMoveKey( spep_1 -1 + 204, 1, 61.1, 16.9 , 0 );
setMoveKey( spep_1 -1 + 205, 1, 61.1, 16.9 , 0 );
setMoveKey( spep_1 -1 + 206, 1, 65.4, 16.2 , 0 );
setMoveKey( spep_1 -1 + 207, 1, 65.4, 16.2 , 0 );
setMoveKey( spep_1 -1 + 208, 1, 69.7, 15.4 , 0 );
setMoveKey( spep_1 -1 + 209, 1, 69.7, 15.4 , 0 );
setMoveKey( spep_1 -1 + 210, 1, 73.9, 14.7 , 0 );
setMoveKey( spep_1 -1 + 211, 1, 73.9, 14.7 , 0 );
setMoveKey( spep_1 -1 + 212, 1, 78.2, 13.9 , 0 );
setMoveKey( spep_1 -1 + 213, 1, 78.2, 13.9 , 0 );--
setMoveKey( spep_1 -1 + 214, 1, 137.8, -61.1 , 0 );
setMoveKey( spep_1 -1 + 215, 1, 137.8, -61.1 , 0 );
setMoveKey( spep_1 -1 + 216, 1, 125.4, -33.2 , 0 );
setMoveKey( spep_1 -1 + 217, 1, 125.4, -33.2 , 0 );
setMoveKey( spep_1 -1 + 218, 1, 103.4, -30.1 , 0 );
setMoveKey( spep_1 -1 + 219, 1, 103.4, -30.1 , 0 );
setMoveKey( spep_1 -1 + 220, 1, 107.6, -43.6 , 0 );
setMoveKey( spep_1 -1 + 221, 1, 107.6, -43.6 , 0 );
setMoveKey( spep_1 -1 + 222, 1, 76.3, -28.6 , 0 );
setMoveKey( spep_1 -1 + 223, 1, 76.3, -28.6 , 0 );--
setMoveKey( spep_1 -1 + 224, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 225, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 226, 1, 95.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 227, 1, 95.5, -42.5 , 0 );--
setMoveKey( spep_1 -1 + 228, 1, 111.4, -30.7 , 0 );
setMoveKey( spep_1 -1 + 229, 1, 111.4, -30.7 , 0 );
setMoveKey( spep_1 -1 + 230, 1, 129.9, -46.3 , 0 );
setMoveKey( spep_1 -1 + 231, 1, 129.9, -46.3 , 0 );
setMoveKey( spep_1 -1 + 232, 1, 132.4, -26.3 , 0 );
setMoveKey( spep_1 -1 + 233, 1, 132.4, -26.3 , 0 );
setMoveKey( spep_1 -1 + 234, 1, 142.1, -31.6 , 0 );
setMoveKey( spep_1 -1 + 235, 1, 142.1, -31.6 , 0 );
setMoveKey( spep_1 -1 + 236, 1, 130.5, -33.3 , 0 );
setMoveKey( spep_1 -1 + 237, 1, 130.5, -33.3 , 0 );--
setMoveKey( spep_1 -1 + 238, 1, 106.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 239, 1, 106.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 240, 1, 107.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 241, 1, 107.5, -42.5 , 0 );
setMoveKey( spep_1 -1 + 242, 1, 108.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 243, 1, 108.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 244, 1, 109.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 245, 1, 109.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 246, 1, 110.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 247, 1, 110.7, -42.5 , 0 );
setMoveKey( spep_1 -1 + 248, 1, 111.8, -42.5 , 0 );
setMoveKey( spep_1 -1 + 249, 1, 111.8, -42.5 , 0 );
setMoveKey( spep_1 -1 + 250, 1, 112.9, -42.5 , 0 );
setMoveKey( spep_1 -1 + 251, 1, 112.9, -42.5 , 0 );--
setMoveKey( spep_1 -1 + 252, 1, 166.6, -35.7 , 0 );
setMoveKey( spep_1 -1 + 253, 1, 166.6, -35.7 , 0 );
setMoveKey( spep_1 -1 + 254, 1, 161.9, -35.7 , 0 );
setMoveKey( spep_1 -1 + 255, 1, 161.9, -35.7 , 0 );
setMoveKey( spep_1 -1 + 256, 1, 160.2, -51.9 , 0 );
setMoveKey( spep_1 -1 + 257, 1, 160.2, -51.9 , 0 );
setMoveKey( spep_1 -1 + 258, 1, 158.4, -38.7 , 0 );
setMoveKey( spep_1 -1 + 259, 1, 158.4, -38.7 , 0 );
setMoveKey( spep_1 -1 + 260, 1, 165.7, -38.7 , 0 );
setMoveKey( spep_1 -1 + 261, 1, 165.7, -38.7 , 0 );
setMoveKey( spep_1 -1 + 262, 1, 163.9, -47.8 , 0 );
setMoveKey( spep_1 -1 + 263, 1, 163.9, -47.8 , 0 );
setMoveKey( spep_1 -1 + 264, 1, 153, -47.8 , 0 );
setMoveKey( spep_1 -1 + 265, 1, 153, -47.8 , 0 );
setMoveKey( spep_1 -1 + 266, 1, 142.1, -47.8 , 0 );
setMoveKey( spep_1 -1 + 267, 1, 142.1, -47.8 , 0 );--
setMoveKey( spep_1 -1 + 268, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 269, 1, 93.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 270, 1, 95.6, -42.5 , 0 );
setMoveKey( spep_1 -1 + 271, 1, 95.6, -42.5 , 0 );--
setMoveKey( spep_1 -1 + 272, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_1 -1 + 273, 1, 145.2, -32.7 , 0 );
setMoveKey( spep_1 -1 + 274, 1, 150, -42.7 , 0 );
setMoveKey( spep_1 -1 + 275, 1, 150, -42.7 , 0 );
setMoveKey( spep_1 -1 + 276, 1, 154.8, -34.4 , 0 );
setMoveKey( spep_1 -1 + 277, 1, 154.8, -34.4 , 0 );
setMoveKey( spep_1 -1 + 278, 1, 150.5, -35.3 , 0 );
setMoveKey( spep_1 -1 + 279, 1, 150.5, -35.3 , 0 );--
setMoveKey( spep_1 -1 + 280, 1, 129.7, -42.4 , 0 );
setMoveKey( spep_1 -1 + 281, 1, 129.7, -42.4 , 0 );--
setMoveKey( spep_1 -1 + 282, 1, 157.3, -30.6 , 0 );
setMoveKey( spep_1 -1 + 283, 1, 157.3, -30.6 , 0 );
setMoveKey( spep_1 -1 + 284, 1, 157, -39.7 , 0 );
setMoveKey( spep_1 -1 + 285, 1, 157, -39.7 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 156.6, -27.5 , 0 );
setMoveKey( spep_1 -1 + 287, 1, 156.6, -27.5 , 0 );--
setMoveKey( spep_1 -1 + 288, 1, 128.6, -39.4 , 0 );
setMoveKey( spep_1 -1 + 289, 1, 128.6, -39.4 , 0 );
setMoveKey( spep_1 -1 + 290, 1, 142.1, -39.4 , 0 );
setMoveKey( spep_1 -1 + 291, 1, 142.1, -39.4 , 0 );--
setMoveKey( spep_1 -1 + 292, 1, 152.9, -57.1 , 0 );
setMoveKey( spep_1 -1 + 293, 1, 152.9, -57.1 , 0 );
setMoveKey( spep_1 -1 + 294, 1, 166.8, -57.1 , 0 );
setMoveKey( spep_1 -1 + 295, 1, 166.8, -57.1 , 0 );
setMoveKey( spep_1 -1 + 296, 1, 168.5, -44.9 , 0 );
setMoveKey( spep_1 -1 + 297, 1, 168.5, -44.9 , 0 );
setMoveKey( spep_1 -1 + 298, 1, 182.5, -44.9 , 0 );
setMoveKey( spep_1 -1 + 299, 1, 182.5, -44.9 , 0 );--
setMoveKey( spep_1 -1 + 300, 1, 165.3, -49.6 , 0 );
setMoveKey( spep_1 -1 + 301, 1, 165.3, -49.6 , 0 );
setMoveKey( spep_1 -1 + 302, 1, 193.1, -49.6 , 0 );
setMoveKey( spep_1 -1 + 303, 1, 193.1, -49.6 , 0 );--
setMoveKey( spep_1 -1 + 304, 1, 189.5, -24 , 0 );
setMoveKey( spep_1 -1 + 305, 1, 189.5, -24 , 0 );
setMoveKey( spep_1 -1 + 306, 1, 204.9, -24 , 0 );
setMoveKey( spep_1 -1 + 307, 1, 204.9, -24 , 0 );
setMoveKey( spep_1 -1 + 308, 1, 208.2, -36.3 , 0 );
setMoveKey( spep_1 -1 + 309, 1, 208.2, -36.3 , 0 );--
setMoveKey( spep_1 -1 + 310, 1, 201.8, -33.6 , 0 );
setMoveKey( spep_1 -1 + 311, 1, 201.8, -33.6 , 0 );
setMoveKey( spep_1 -1 + 312, 1, 202.9, -21.4 , 0 );
setMoveKey( spep_1 -1 + 313, 1, 202.9, -21.4 , 0 );
setMoveKey( spep_1 -1 + 314, 1, 191.8, -21.4 , 0 );
setMoveKey( spep_1 -1 + 315, 1, 191.8, -21.4 , 0 );
setMoveKey( spep_1 -1 + 316, 1, 126.8, -26.5 , 0 );
setMoveKey( spep_1 -1 + 317, 1, 126.8, -26.5 , 0 );
setMoveKey( spep_1 -1 + 318, 1, 119.7, -26.5 , 0 );
setMoveKey( spep_1 -1 + 319, 1, 119.7, -26.5 , 0 );
setMoveKey( spep_1 -1 + 320, 1, 112.6, -26.5 , 0 );
setMoveKey( spep_1 -1 + 321, 1, 112.6, -26.5 , 0 );
setMoveKey( spep_1 -1 + 322, 1, 105.5, -26.5 , 0 );
setMoveKey( spep_1 -1 + 323, 1, 105.5, -26.5 , 0 );--
setMoveKey( spep_1 -1 + 324, 1, 251.9, -23 , 0 );
setMoveKey( spep_1 -1 + 325, 1, 251.9, -23 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 262, -22.2 , 0 );
setMoveKey( spep_1 -1 + 327, 1, 262, -22.2 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 104.8, -18.8 , 0 );
setMoveKey( spep_1 -1 + 329, 1, 104.8, -18.8 , 0 );
setMoveKey( spep_1 -1 + 330, 1, -31, -16.1 , 0 );
setMoveKey( spep_1 -1 + 331, 1, -31, -16.1 , 0 );
setMoveKey( spep_1 -1 + 332, 1, -32.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 333, 1, -32.6, -12.4 , 0 );
setMoveKey( spep_1 -1 + 334, 1, -26.9, -12.4 , 0 );
setMoveKey( spep_1 -1 + 335, 1, -26.9, -12.4 , 0 );
setMoveKey( spep_1 -1 + 336, 1, 199.3, -26 , 0 );
setMoveKey( spep_1 -1 + 338, 1, 767.7, -26 , 0 );
setMoveKey( spep_1 -1 + 340, 1, 1353.1, -26 , 0 );
setMoveKey( spep_1 -1 + 342, 1, 1346.6, -26 , 0 );
setMoveKey( spep_1 -1 + 344, 1, 1342.5, -26 , 0 );
setMoveKey( spep_1 -1 + 346, 1, 1338.4, -26 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 1334.3, -26 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 1334.3, -26 , 0 );

setScaleKey( spep_1 -1 + 184, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 203, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 204, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 213, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 214, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 223, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 224, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 227, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 228, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 237, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 238, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 251, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 252, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 267, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 268, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 271, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 272, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 279, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 280, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 281, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 282, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 287, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 288, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 291, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 292, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 299, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 300, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 303, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 304, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 309, 1, 1.4, 1.4 );--
setScaleKey( spep_1 -1 + 310, 1, 1.2, 1.2 );
setScaleKey( spep_1 -1 + 323, 1, 1.2, 1.2 );--
setScaleKey( spep_1 -1 + 324, 1, 1.4, 1.4 );
setScaleKey( spep_1 -1 + 348, 1, 1.4, 1.4 );--

setRotateKey( spep_1 -1 + 184, 1, 0 );
setRotateKey( spep_1 -1 + 203, 1, 0 );--
setRotateKey( spep_1 -1 + 204, 1, -23.2 );
setRotateKey( spep_1 -1 + 213, 1, -23.2 );--
setRotateKey( spep_1 -1 + 214, 1, 0 );
setRotateKey( spep_1 -1 + 223, 1, 0 );--
setRotateKey( spep_1 -1 + 224, 1, -38.1 );
setRotateKey( spep_1 -1 + 227, 1, -38.1 );--
setRotateKey( spep_1 -1 + 228, 1, 0 );
setRotateKey( spep_1 -1 + 237, 1, 0 );--
setRotateKey( spep_1 -1 + 238, 1, -45.8 );
setRotateKey( spep_1 -1 + 240, 1, -45.1 );
setRotateKey( spep_1 -1 + 242, 1, -44.3 );
setRotateKey( spep_1 -1 + 244, 1, -43.6 );
setRotateKey( spep_1 -1 + 246, 1, -42.8 );
setRotateKey( spep_1 -1 + 248, 1, -42.1 );
setRotateKey( spep_1 -1 + 250, 1, -41.3 );
setRotateKey( spep_1 -1 + 251, 1, -41.3 );--
setRotateKey( spep_1 -1 + 252, 1, 0 );
setRotateKey( spep_1 -1 + 267, 1, 0 );--
setRotateKey( spep_1 -1 + 268, 1, -38.1 );
setRotateKey( spep_1 -1 + 270, 1, -43.3 );
setRotateKey( spep_1 -1 + 271, 1, -43.3 );--
setRotateKey( spep_1 -1 + 272, 1, 0 );
setRotateKey( spep_1 -1 + 279, 1, 0 );--
setRotateKey( spep_1 -1 + 280, 1, -38.1 );
setRotateKey( spep_1 -1 + 281, 1, -38.1 );--
setRotateKey( spep_1 -1 + 282, 1, 0 );
setRotateKey( spep_1 -1 + 287, 1, 0 );--
setRotateKey( spep_1 -1 + 288, 1, -38.1 );
setRotateKey( spep_1 -1 + 291, 1, -38.1 );--
setRotateKey( spep_1 -1 + 292, 1, 0 );
setRotateKey( spep_1 -1 + 299, 1, 0 );--
setRotateKey( spep_1 -1 + 300, 1, -26.3 );
setRotateKey( spep_1 -1 + 303, 1, -23.4 );--
setRotateKey( spep_1 -1 + 304, 1, 0 );
setRotateKey( spep_1 -1 + 309, 1, 0 );--
setRotateKey( spep_1 -1 + 310, 1, -38.1 );
setRotateKey( spep_1 -1 + 323, 1, -38.1 );--
setRotateKey( spep_1 -1 + 324, 1, 0 );
setRotateKey( spep_1 -1 + 348, 1, 0 );

-- ** 音 ** --
--飛行音
SE031 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 0, 1314, "",spep_1 + 206, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 0, SE032, 73 );
SE036 = playSeVer2( spep_1 + 64, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 128, 1019, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 186, 1314, "",spep_1 + 364, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 186, SE043, 32 );
SE044 = playSeVer2( spep_1 + 192, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 192, SE044, 56 );
SE050 = playSeVer2( spep_1 + 256, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 256, SE050, 56 );
SE058 = playSeVer2( spep_1 + 320, 1019, "",spep_1 + 366, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 320, SE058, 56 );

--悟空フレームイン
SE033 = playSeVer2( spep_1 + 28, 1072, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 52, 1116, "",spep_1 + 100, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 52, SE034, 79 );
SE035 = playSeVer2( spep_1 + 60, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE035,  133 );

--正面向かってくる
SE037 = playSeVer2( spep_1 + 102, 44, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 102, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 106, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE039, 54 );
setTimeStretch( SE039, 1.33, 30, 4 );

--キック
SE041 = playSeVer2( spep_1 + 172, 1187, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_1 + 172, 1153, "", 0, 0, 0, -1);

--ラッシュ
SE045 = playSeVer2( spep_1 + 210, 1110, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_1 + 210, 1009, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 248, 1010, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_1 + 248, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 248, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 248, SE049, 75 );
SE051 = playSeVer2( spep_1 + 266, 1006, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_1 + 266, 1110, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_1 + 278, 1006, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_1 + 278, 1110, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 290, 1006, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_1 + 290, 1000, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_1 + 298, 1110, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_1 + 320, 1187, "",spep_1 + 358, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 320, SE059, 71 );
SE060 = playSeVer2( spep_1 + 320, 1120, "",spep_1 + 358, 0, 10, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 347 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 347;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --

speff2 = entryEffectLife( spep_2 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_2 + 0, speff2, -1.0, 1.0); -- 敵側のみ 
setEffScaleKey( spep_2 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_2 + 0, 1512, 90, 0x100, -1, 0, 0, -195 );
setEffScaleKey( spep_2 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_2 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_2 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_2 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, housha, 0 );
setEffRotateKey( spep_2 + 90, housha, 0 );
setEffAlphaKey( spep_2 + 0, housha, 255 );
setEffAlphaKey( spep_2 + 90, housha, 255 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--画面前突っ込んでくる
SE062 = playSeVer2( spep_2 + 84, 1182, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 84, 9, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 86, 1277, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 86, 1304, "",spep_2 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 86, SE065, 82 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュブロー　煙を上げて吹っ飛ぶ(326F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --フィニッシュブロー　煙を上げて吹っ飛ぶ ef_003_ch
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 326, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 326, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 326, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 326, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --↑敵を挟んでの背景    ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 326, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 326, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 326, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 326, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -1 + 72, 1, 1 );
setDisp( spep_3 -1 + 148, 1, 0 );
changeAnime( spep_3 -1 + 72, 1, 107 );
changeAnime( spep_3 -1 + 80, 1, 5 );

setMoveKey( spep_3 -1 + 72, 1, 45.7, -28.8 , 0 );
setMoveKey( spep_3 -1 + 75, 1, 45.7, -28.8 , 0 );
setMoveKey( spep_3 -1 + 76, 1, -126.2, -145.8 , 0 );
setMoveKey( spep_3 -1 + 79, 1, -126.2, -145.8 , 0 );--
setMoveKey( spep_3 -1 + 80, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 81, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 82, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 83, 1, 146.8, -50.7 , 0 );
setMoveKey( spep_3 -1 + 84, 1, 123.7, -112.3 , 0 );
setMoveKey( spep_3 -1 + 85, 1, 123.7, -112.3 , 0 );
setMoveKey( spep_3 -1 + 86, 1, 125, -111 , 0 );
setMoveKey( spep_3 -1 + 87, 1, 125, -111 , 0 );
setMoveKey( spep_3 -1 + 88, 1, 122.5, -36.6 , 0 );
setMoveKey( spep_3 -1 + 89, 1, 122.5, -36.6 , 0 );
setMoveKey( spep_3 -1 + 90, 1, 124, -37.5 , 0 );
setMoveKey( spep_3 -1 + 91, 1, 124, -37.5 , 0 );
setMoveKey( spep_3 -1 + 92, 1, 156.3, -107.6 , 0 );
setMoveKey( spep_3 -1 + 93, 1, 156.3, -107.6 , 0 );
setMoveKey( spep_3 -1 + 94, 1, 155.6, -106.3 , 0 );
setMoveKey( spep_3 -1 + 95, 1, 155.6, -106.3 , 0 );
setMoveKey( spep_3 -1 + 96, 1, 162.6, -28 , 0 );
setMoveKey( spep_3 -1 + 97, 1, 162.6, -28 , 0 );
setMoveKey( spep_3 -1 + 98, 1, 161.3, -29.9 , 0 );
setMoveKey( spep_3 -1 + 99, 1, 161.3, -29.9 , 0 );
setMoveKey( spep_3 -1 + 100, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 101, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 102, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 103, 1, 178.2, -93.1 , 0 );
setMoveKey( spep_3 -1 + 104, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 105, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 106, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 107, 1, 139.7, -16.2 , 0 );
setMoveKey( spep_3 -1 + 108, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 109, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 110, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 111, 1, 169.9, -68.4 , 0 );
setMoveKey( spep_3 -1 + 112, 1, 167.6, -64.8 , 0 );
setMoveKey( spep_3 -1 + 113, 1, 167.6, -64.8 , 0 );
setMoveKey( spep_3 -1 + 114, 1, 172.2, -61.2 , 0 );
setMoveKey( spep_3 -1 + 115, 1, 172.2, -61.2 , 0 );
setMoveKey( spep_3 -1 + 116, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 117, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 118, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 119, 1, 149.1, -84.2 , 0 );
setMoveKey( spep_3 -1 + 120, 1, 155.2, -81.9 , 0 );
setMoveKey( spep_3 -1 + 121, 1, 155.2, -81.9 , 0 );
setMoveKey( spep_3 -1 + 122, 1, 161.9, -81.8 , 0 );
setMoveKey( spep_3 -1 + 123, 1, 161.9, -81.8 , 0 );--
setMoveKey( spep_3 -1 + 124, 1, 142.3, -25 , 0 );
setMoveKey( spep_3 -1 + 148, 1, 142.3, -25 , 0 );

setScaleKey( spep_3 -1 + 72, 1, 3, 3 );
setScaleKey( spep_3 -1 + 75, 1, 3, 3 );
setScaleKey( spep_3 -1 + 76, 1, 3.99, 3.99 );
setScaleKey( spep_3 -1 + 79, 1, 3.99, 3.99 );--
setScaleKey( spep_3 -1 + 80, 1, 3, 3 );
setScaleKey( spep_3 -1 + 99, 1, 3, 3 );
setScaleKey( spep_3 -1 + 100, 1, 2.75, 2.75 );
setScaleKey( spep_3 -1 + 111, 1, 2.75, 2.75 );
setScaleKey( spep_3 -1 + 112, 1, 2.68, 2.68 );
setScaleKey( spep_3 -1 + 113, 1, 2.68, 2.68 );
setScaleKey( spep_3 -1 + 114, 1, 2.52, 2.52 );
setScaleKey( spep_3 -1 + 119, 1, 2.52, 2.52 );
setScaleKey( spep_3 -1 + 120, 1, 2.43, 2.43 );
setScaleKey( spep_3 -1 + 121, 1, 2.43, 2.43 );
setScaleKey( spep_3 -1 + 122, 1, 2.35, 2.35 );
setScaleKey( spep_3 -1 + 123, 1, 2.35, 2.35 );--
setScaleKey( spep_3 -1 + 124, 1, 0.87, 0.87 );
setScaleKey( spep_3 -1 + 126, 1, 0.78, 0.78 );
setScaleKey( spep_3 -1 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_3 -1 + 130, 1, 0.62, 0.62 );
setScaleKey( spep_3 -1 + 132, 1, 0.56, 0.56 );
setScaleKey( spep_3 -1 + 134, 1, 0.5, 0.5 );
setScaleKey( spep_3 -1 + 136, 1, 0.46, 0.46 );
setScaleKey( spep_3 -1 + 138, 1, 0.42, 0.42 );
setScaleKey( spep_3 -1 + 140, 1, 0.39, 0.39 );
setScaleKey( spep_3 -1 + 142, 1, 0.36, 0.36 );
setScaleKey( spep_3 -1 + 144, 1, 0.35, 0.35 );
setScaleKey( spep_3 -1 + 146, 1, 0.35, 0.35 );
setScaleKey( spep_3 -1 + 148, 1, 0.35, 0.35 );

setRotateKey( spep_3 -1 + 72, 1, -63.6 );
setRotateKey( spep_3 -1 + 75, 1, -63.6 );
setRotateKey( spep_3 -1 + 76, 1, -60.2 );
setRotateKey( spep_3 -1 + 79, 1, -60.2 );--
setRotateKey( spep_3 -1 + 80, 1, 24.2 );
setRotateKey( spep_3 -1 + 123, 1, 24.2 );--
setRotateKey( spep_3 -1 + 124, 1, 24.4 );
setRotateKey( spep_3 -1 + 148, 1, 24.4 );

-- ** 音 ** --
--振りかぶる
SE066 = playSeVer2( spep_3 + 36, 1116, "",spep_3 + 78, 0, 20, -1);

--殴り飛ばす
SE067 = playSeVer2( spep_3 + 72, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE067, 65 );
SE068 = playSeVer2( spep_3 + 72, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE068, 72 );
SE069 = playSeVer2( spep_3 + 72, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE069, 93 );
SE070 = playSeVer2( spep_3 + 82, 1120, "", 0, 0, 0, -1);

--敵吹き飛ばす
SE071 = playSeVer2( spep_3 + 112, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 112, SE071, 74 );

--地面激突
SE072 = playSeVer2( spep_3 + 140, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE072, 82 );
SE073 = playSeVer2( spep_3 + 140, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE073, 123 );
SE074 = playSeVer2( spep_3 + 140, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE074, 73 );

--地面ひきづられる
SE075 = playSeVer2( spep_3 + 150, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 150, SE075, 78 );
setPitch( spep_3 + 150, SE075, -500 );
setTimeStretch( SE075, 0.67, 30, 4 );
SE076 = playSeVer2( spep_3 + 158, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 158, SE076, 68 );
setPitch( spep_3 + 158, SE076, -500 );
setTimeStretch( SE076, 0.67, 30, 4 );
SE077 = playSeVer2( spep_3 + 166, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 166, SE077, 94 );
setPitch( spep_3 + 166, SE077, -600 );
setTimeStretch( SE077, 0.6, 30, 4 );
SE078 = playSeVer2( spep_3 + 176, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 176, SE078, 77 );
setPitch( spep_3 + 176, SE078, -500 );
setTimeStretch( SE078, 0.67, 30, 4 );
SE079 = playSeVer2( spep_3 + 184, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 184, SE079, 65 );
setPitch( spep_3 + 184, SE079, -400 );
setTimeStretch( SE079, 0.73, 30, 4 );
SE080 = playSeVer2( spep_3 + 194, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 194, SE080, 60 );
setPitch( spep_3 + 194, SE080, -500 );
setTimeStretch( SE080, 0.67, 30, 4 );
SE081 = playSeVer2( spep_3 + 202, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 202, SE081, 63 );
setPitch( spep_3 + 202, SE081, -700 );
setTimeStretch( SE081, 0.53, 30, 4 );
SE082 = playSeVer2( spep_3 + 212, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 212, SE082, 63 );
setPitch( spep_3 + 212, SE082, -500 );
setTimeStretch( SE082, 0.67, 30, 4 );
SE083 = playSeVer2( spep_3 + 222, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 222, SE083, 71 );
setPitch( spep_3 + 222, SE083, -300 );
setTimeStretch( SE083, 0.8, 30, 4 );
SE084 = playSeVer2( spep_3 + 230, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 230, SE084, 56 );
setPitch( spep_3 + 230, SE084, -500 );
setTimeStretch( SE084, 0.67, 30, 4 );
SE085 = playSeVer2( spep_3 + 240, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 240, SE085, 77 );
setPitch( spep_3 + 240, SE085, -500 );
setTimeStretch( SE085, 0.67, 30, 4 );

--爆発
SE086 = playSeVer2( spep_3 + 242, 1024, "", 0, 0, 0, -1);
SE087 = playSeVer2( spep_3 + 242, 1188, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 326 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 166 );
endPhase( spep_3 + 316 );


end