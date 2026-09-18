--1025820:UR超サイヤ人3ゴテンクス＆ピッコロ_バイスシャウト
--sp_effect_a9_00102

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
SP_01 = 161339;	--トランクス＆ピッコロ気合い入れる	 ef_001
SP_02 = 161341; --横視点　バイスシャウト敵吹っ飛ぶ    ef_002
SP_03 = 161343; --横視点　バイスシャウト敵吹っ飛ぶ    ef_003
SP_04 = 161345; --空間からビーム→穴から覗く    ef_004
SP_05 = 161347; --トランクス目を見開く    ef_005

--敵側
SP_01r = 161340; --トランクス＆ピッコロ気合い入れる    ef_001_r
SP_02r = 161342; --横視点　バイスシャウト敵吹っ飛ぶ    ef_002_r
SP_03r = 161344; --横視点　バイスシャウト敵吹っ飛ぶ    ef_003_r
SP_04r = 161346; --空間からビーム→穴から覗く    ef_004_r
SP_05r = 161348; --トランクス目を見開く    ef_005_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- トランクス気合い入れる	(244f)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
spirit = entryEffectLife( spep_0 + 0, SP_01, 244, 0x100, -1, 0, 0, 0 );  --トランクス気合い入れる
setEffMoveKey( spep_0 + 0, spirit, 0, 0 , 0 );
setEffMoveKey( spep_0 + 244, spirit, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, spirit, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, spirit, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, spirit, 0 );
setEffRotateKey( spep_0 + 244, spirit, 0 );
setEffAlphaKey( spep_0 + 0, spirit, 255 );
setEffAlphaKey( spep_0 + 244, spirit, 255 );

--[[spep_x = spep_0 + 166;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--踏み出す
SE002 = playSeVer2( spep_0 + 28, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 164 );
SE003 = playSeVer2( spep_0 + 32, 19, "",spep_0 + 70, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 74 );
SE004 = playSeVer2( spep_0 + 36, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 129 );

--息吸い込む
SE005 = playSeVer2( spep_0 + 90, 1004, "", 0, 0, 0, -1);    
SE006 = playSeVer2( spep_0 + 90, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 90, SE006, 60 );
SE007 = playSeVer2( spep_0 + 90, 1183, "",spep_0 + 156, 0, 14, -1); 

--顔カットイン
SE008 = playSeVer2( spep_0 + 170, 1018, "", 0, 0, 0, -1);
   
--二人叫ぶ
SE009 = playSeVer2( spep_0 + 172, 1258, "",spep_0 + 256, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 87 );
SE010 = playSeVer2( spep_0 + 176, 1035, "",spep_0 + 256, 0, 14, -1); 
SE011 = playSeVer2( spep_0 + 176, 1024, "",spep_0 + 256, 0, 14, -1); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 244 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 244;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 98, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- トランクス目を見開く(44f)
------------------------------------------------------
--spep_2 = 0;

a1 = 4

-- ** エフェクト等 ** --
wide = entryEffectLife( spep_2 + 0, SP_05, 44 -a1, 0x100, -1, 0, 0, 0 );  --トランクス目を見開く
setEffMoveKey( spep_2 + 0, wide, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44 -a1, wide, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, wide, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44 -a1, wide, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, wide, 0 );
setEffRotateKey( spep_2 + 44 -a1, wide, 0 );
setEffAlphaKey( spep_2 + 0, wide, 255 );
setEffAlphaKey( spep_2 + 44 -2 -a1, wide, 255 );
setEffAlphaKey( spep_2 + 44 -1 -a1, wide, 255 );
setEffAlphaKey( spep_2 + 44 -a1, wide, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 44 -a1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 44 -a1, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44 -a1, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 44 -a1, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 44 -a1, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 44 -2 -a1, shuchusen, 255 );
setEffAlphaKey( spep_2 + 44 -1 -a1, shuchusen, 255 );
setEffAlphaKey( spep_2 + 44 -a1, shuchusen, 0 );

-- ** 音 ** --
--目見開く
SE013 = playSeVer2( spep_2 + 8, 1237, "", 0, 4, 0, -1);
setStartTimeMs( SE013,  123 );
SE014 = playSeVer2( spep_2 + 8, 20, "", 0, 0, 0, -1);       

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 44 -a1 +2, 0, 0, 0, 0, 255 );  --黒　背景                

-- ** 次の準備 ** --
spep_3 = spep_2 + 44 -a1;

------------------------------------------------------
-- 横視点　バイスシャウト敵吹っ飛ぶ(254F)
------------------------------------------------------
--spep_3 = 0;
a2 = 8

-- ** エフェクト等 ** --
away_f = entryEffectLife( spep_3 + 0, SP_02, 254 -a2, 0x100, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_3 + 0, away_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254 -a2, away_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, away_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254 -a2, away_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, away_f, 0 );
setEffRotateKey( spep_3 + 254 -a2, away_f, 0 );
setEffAlphaKey( spep_3 + 0, away_f, 255 );
setEffAlphaKey( spep_3 + 254 -2 -a2, away_f, 255 );
setEffAlphaKey( spep_3 + 254 -1 -a2, away_f, 255 );
setEffAlphaKey( spep_3 + 254 -a2, away_f, 0 );

-- ** エフェクト等 ** --
away_b = entryEffectLife( spep_3 + 0, SP_03, 254 -a2, 0x80, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_3 + 0, away_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254 -a2, away_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, away_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254 -a2, away_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, away_b, 0 );
setEffRotateKey( spep_3 + 254 -a2, away_b, 0 );
setEffAlphaKey( spep_3 + 0, away_b, 255 );
setEffAlphaKey( spep_3 + 254 -2 -a2, away_b, 255 );
setEffAlphaKey( spep_3 + 254 -1 -a2, away_b, 255 );
setEffAlphaKey( spep_3 + 254 -a2, away_b, 0 );

--[[spep_y = spep_3 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_y + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 音 ** --
--バイスシャウト
SE015 = playSeVer2( spep_3 + 24, 1213, "",spep_3 + 300 -a2, 0, 68, -1);
setSeVolumeByWorkId( spep_3 + 24, SE015, 72 );          
SE016 = playSeVer2( spep_3 + 24, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE016, 72 );          
SE017 = playSeVer2( spep_3 + 24, 1306, "", 0, 0, 0, -1);                
SE018 = playSeVer2( spep_3 + 24, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE018, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 254 -a2 +2, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 70 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);

   
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

-- ** 敵キャラクター ** --
a3 = 3

setDisp( spep_3 + 124 -a3, 1, 1 );
setDisp( spep_3 + 202 -a3, 1, 0 );

changeAnime( spep_3 + 124 -a3, 1, 100 );
changeAnime( spep_3 + 156 -a3, 1, 106 );
changeAnime( spep_3 + 162 -a3, 1, 108 );
changeAnime( spep_3 + 164 -a3, 1, 106 );
changeAnime( spep_3 + 166 -a3, 1, 108 );
changeAnime( spep_3 + 182 -a3, 1, 105 );

setMoveKey( spep_3 + 124 -a3, 1, 829.1, -31.3 , 0 );      --100
setMoveKey( spep_3 + 125 -a3, 1, 829.1, -31.3 , 0 );
setMoveKey( spep_3 + 126 -a3, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_3 + 127 -a3, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_3 + 128 -a3, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_3 + 129 -a3, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_3 + 130 -a3, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_3 + 131 -a3, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_3 + 132 -a3, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_3 + 133 -a3, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_3 + 134 -a3, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_3 + 135 -a3, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_3 + 136 -a3, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_3 + 137 -a3, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_3 + 138 -a3, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_3 + 139 -a3, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_3 + 140 -a3, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_3 + 141 -a3, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_3 + 142 -a3, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_3 + 143 -a3, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_3 + 144 -a3, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_3 + 145 -a3, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_3 + 146 -a3, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_3 + 147 -a3, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_3 + 148 -a3, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_3 + 149 -a3, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_3 + 150 -a3, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_3 + 151 -a3, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_3 + 152 -a3, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_3 + 153 -a3, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_3 + 154 -a3, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_3 + 155 -a3, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_3 + 156 -a3, 1, -4.2, 17.6 , 0 );      --106
setMoveKey( spep_3 + 157 -a3, 1, -4.2, 17.6 , 0 );
setMoveKey( spep_3 + 158 -a3, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_3 + 159 -a3, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_3 + 160 -a3, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_3 + 161 -a3, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_3 + 162 -a3, 1, 100, 10.9 , 0 );      --108
setMoveKey( spep_3 + 163 -a3, 1, 100, 10.9 , 0 );
setMoveKey( spep_3 + 164 -a3, 1, 5, 29.2 , 0 );      --106
setMoveKey( spep_3 + 165 -a3, 1, 5, 29.2 , 0 );
setMoveKey( spep_3 + 166 -a3, 1, 18, 12.1 , 0 );      --108
setMoveKey( spep_3 + 167 -a3, 1, 18, 12.1 , 0 );
setMoveKey( spep_3 + 168 -a3, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_3 + 169 -a3, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_3 + 170 -a3, 1, 21, 21.8 , 0 );
setMoveKey( spep_3 + 171 -a3, 1, 21, 21.8 , 0 );
setMoveKey( spep_3 + 172 -a3, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_3 + 173 -a3, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_3 + 174 -a3, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_3 + 175 -a3, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_3 + 176 -a3, 1, -4.6, 24 , 0 );
setMoveKey( spep_3 + 177 -a3, 1, -4.6, 24 , 0 );
setMoveKey( spep_3 + 178 -a3, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_3 + 179 -a3, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_3 + 180 -a3, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_3 + 181 -a3, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_3 + 182 -a3, 1, -65.4, 9.7 , 0 );      --105
setMoveKey( spep_3 + 183 -a3, 1, -65.4, 9.7 , 0 );
setMoveKey( spep_3 + 184 -a3, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_3 + 185 -a3, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_3 + 186 -a3, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_3 + 187 -a3, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_3 + 188 -a3, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_3 + 189 -a3, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_3 + 190 -a3, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_3 + 191 -a3, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_3 + 192 -a3, 1, -12, 56.9 , 0 );
setMoveKey( spep_3 + 193 -a3, 1, -12, 56.9 , 0 );
setMoveKey( spep_3 + 194 -a3, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_3 + 195 -a3, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_3 + 196 -a3, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_3 + 197 -a3, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_3 + 198 -a3, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_3 + 199 -a3, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_3 + 200 -a3, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_3 + 201 -a3, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_3 + 202 -a3, 1, 15.4, 80.4 , 0 );

setScaleKey( spep_3 + 124 -a3, 1, 1.95, 1.95 );      --100
setScaleKey( spep_3 + 153 -a3, 1, 1.95, 1.95 );
setScaleKey( spep_3 + 154 -a3, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 155 -a3, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 156 -a3, 1, 1.75, 1.75 );      --106
setScaleKey( spep_3 + 157 -a3, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 158 -a3, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 159 -a3, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 160 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 161 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 162 -a3, 1, 1.87, 1.87 );      --108
setScaleKey( spep_3 + 163 -a3, 1, 1.87, 1.87 );
setScaleKey( spep_3 + 164 -a3, 1, 1.85, 1.85 );      --106
setScaleKey( spep_3 + 165 -a3, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 166 -a3, 1, 1.84, 1.84 );      --108
setScaleKey( spep_3 + 167 -a3, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 168 -a3, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 169 -a3, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 170 -a3, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 171 -a3, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 172 -a3, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 173 -a3, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 174 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 175 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 176 -a3, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 177 -a3, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 178 -a3, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 179 -a3, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 180 -a3, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 181 -a3, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 182 -a3, 1, 1.08, 1.08 );      --105
setScaleKey( spep_3 + 183 -a3, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 184 -a3, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 185 -a3, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 186 -a3, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 187 -a3, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 188 -a3, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 189 -a3, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 190 -a3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 191 -a3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 192 -a3, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 193 -a3, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 194 -a3, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 195 -a3, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 196 -a3, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 197 -a3, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 198 -a3, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 201 -a3, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 202 -a3, 1, 0.52, 0.52 );

setRotateKey( spep_3 + 124 -a3, 1, 0 );      --100
setRotateKey( spep_3 + 155 -a3, 1, 0 );
setRotateKey( spep_3 + 156 -a3, 1, -66.5 );      --106
setRotateKey( spep_3 + 157 -a3, 1, -66.5 );
setRotateKey( spep_3 + 158 -a3, 1, -61.5 );
setRotateKey( spep_3 + 159 -a3, 1, -61.5 );
setRotateKey( spep_3 + 160 -a3, 1, -69.5 );
setRotateKey( spep_3 + 161 -a3, 1, -69.5 );
setRotateKey( spep_3 + 162 -a3, 1, 0 );      --108
setRotateKey( spep_3 + 163 -a3, 1, 0 );
setRotateKey( spep_3 + 164 -a3, 1, -66.4 );      --106
setRotateKey( spep_3 + 165 -a3, 1, -66.4 );
setRotateKey( spep_3 + 166 -a3, 1, 0 );      --108
setRotateKey( spep_3 + 181 -a3, 1, 0 );
setRotateKey( spep_3 + 182 -a3, 1, 0 );      --105
setRotateKey( spep_3 + 202 -a3, 1, 0 );

-- ** 音 ** --
--バイスシャウト          
SE019 = playSeVer2( spep_3 + 72, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE019, 71 );          

--飛んでいく
SE020 = playSeVer2( spep_3 + 110, 1212, "",spep_3 + 274 -a2, 12, 46, -1);
setSeVolumeByWorkId( spep_3 + 110, SE020, 71 );
setStartTimeMs( SE020,  633 );
setPitch( spep_3 + 110, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );

--バイスシャウト
SE021 = playSeVer2( spep_3 + 120, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 120, SE021, 71 );

--気弾弾ける
SE022 = playSeVer2( spep_3 + 192, 1145, "",spep_3 + 316 -a2, 6, 70, 0.5);
setSeVolumeByWorkId( spep_3 + 192, SE022, 123 );
setStartTimeMs( SE022,  250 );
setPitch( spep_3 + 192, SE022, 100 );
setTimeStretch( SE022, 1.07, 30, 4 );
SE023 = playSeVer2( spep_3 + 194, 1193, "",spep_3 + 248 -a2, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 194, SE023, 150 );            
SE024 = playSeVer2( spep_3 + 194, 1252, "",spep_3 + 286 -a2, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 194, SE024, 126 );            

--穴開きかけ
SE025 = playSeVer2( spep_3 + 250, 1188, "",spep_3 + 302 -a2, 6, 26, -1);
setStartTimeMs( SE025,  267 );      
SE026 = playSeVer2( spep_3 + 250, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 250, SE026, 78 );                         

-- ** 次の準備 ** --
spep_4 = spep_3 + 254 -a2;

------------------------------------------------------
-- 空間からビーム→穴から覗く(270f)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
last = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --空間からビーム→穴から覗く
setEffMoveKey( spep_4 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_4 + 270, last, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_4 + 270, last, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last, 0 );
setEffRotateKey( spep_4 + 270, last, 0 );
setEffAlphaKey( spep_4 + 0, last, 255 );
setEffAlphaKey( spep_4 + 270, last, 255 );

-- ** 音 ** --
--バイスシャウト貫通する
SE027 = playSeVer2( spep_4 + 22, 1258, "", 0, 0, 0, -1);                        
SE028 = playSeVer2( spep_4 + 26, 1213, "",spep_4 + 144, 0, 80, -1);
setSeVolumeByWorkId( spep_4 + 26, SE028, 81 );
setBandpassFilter  ( spep_4 + 26, SE028, 24, 655 );
SE029 = playSeVer2( spep_4 + 26, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 26, SE029, 74 );                  
SE030 = playSeVer2( spep_4 + 26, 1239, "",spep_4 + 152, 0, 56, -1);
setSeVolumeByWorkId( spep_4 + 26, SE030, 160 );
setPitch( spep_4 + 26, SE030, -600 );
setTimeStretch( SE030, 0.6, 30, 4 );        
SE031 = playSeVer2( spep_4 + 26, 1325, "",spep_4 + 152, 0, 56, -1);
setSeVolumeByWorkId( spep_4 + 26, SE031, 60 );                  
SE032 = playSeVer2( spep_4 + 26, 1295, "",spep_4 + 152, 0, 56, -1);                     

--穴から覗く
SE033 = playSeVer2( spep_4 + 98, 1147, "", 0, 0, 0, -1);                        
SE034 = playSeVer2( spep_4 + 104, 1056, "", 0, 0, 0, -1);                       
SE035 = playSeVer2( spep_4 + 164, 1056, "", 0, 0, 0, -1);                       

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 270 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_4 +36 ); -- ダメージ表示フレーム
endPhase( spep_4 + 260 ); -- 終了フレーム


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- トランクス気合い入れる  (244f)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
spirit = entryEffectLife( spep_0 + 0, SP_01r, 244, 0x100, -1, 0, 0, 0 );  --トランクス気合い入れる
setEffMoveKey( spep_0 + 0, spirit, 0, 0 , 0 );
setEffMoveKey( spep_0 + 244, spirit, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, spirit, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, spirit, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, spirit, 0 );
setEffRotateKey( spep_0 + 244, spirit, 0 );
setEffAlphaKey( spep_0 + 0, spirit, 255 );
setEffAlphaKey( spep_0 + 244, spirit, 255 );

--[[spep_x = spep_0 + 166;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--踏み出す
SE002 = playSeVer2( spep_0 + 28, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 164 );
SE003 = playSeVer2( spep_0 + 32, 19, "",spep_0 + 70, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 74 );
SE004 = playSeVer2( spep_0 + 36, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 129 );

--息吸い込む
SE005 = playSeVer2( spep_0 + 90, 1004, "", 0, 0, 0, -1);    
SE006 = playSeVer2( spep_0 + 90, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 90, SE006, 60 );
SE007 = playSeVer2( spep_0 + 90, 1183, "",spep_0 + 156, 0, 14, -1); 

--顔カットイン
SE008 = playSeVer2( spep_0 + 170, 1018, "", 0, 0, 0, -1);
   
--二人叫ぶ
SE009 = playSeVer2( spep_0 + 172, 1258, "",spep_0 + 256, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 87 );
SE010 = playSeVer2( spep_0 + 176, 1035, "",spep_0 + 256, 0, 14, -1); 
SE011 = playSeVer2( spep_0 + 176, 1024, "",spep_0 + 256, 0, 14, -1); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 244 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 244;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 98, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- トランクス目を見開く(44f)
------------------------------------------------------
--spep_2 = 0;

a1 = 4

-- ** エフェクト等 ** --
wide = entryEffectLife( spep_2 + 0, SP_05r, 44 -a1, 0x100, -1, 0, 0, 0 );  --トランクス目を見開く
setEffMoveKey( spep_2 + 0, wide, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44 -a1, wide, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, wide, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44 -a1, wide, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, wide, 0 );
setEffRotateKey( spep_2 + 44 -a1, wide, 0 );
setEffAlphaKey( spep_2 + 0, wide, 255 );
setEffAlphaKey( spep_2 + 44 -2 -a1, wide, 255 );
setEffAlphaKey( spep_2 + 44 -1 -a1, wide, 255 );
setEffAlphaKey( spep_2 + 44 -a1, wide, 0 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 44 -a1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 44 -a1, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 44 -a1, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 44 -a1, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 44 -a1, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 44 -2 -a1, shuchusen, 255 );
setEffAlphaKey( spep_2 + 44 -1 -a1, shuchusen, 255 );
setEffAlphaKey( spep_2 + 44 -a1, shuchusen, 0 );

-- ** 音 ** --
--目見開く
SE013 = playSeVer2( spep_2 + 8, 1237, "", 0, 4, 0, -1);
setStartTimeMs( SE013,  123 );
SE014 = playSeVer2( spep_2 + 8, 20, "", 0, 0, 0, -1);       

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 44 -a1 +2, 0, 0, 0, 0, 255 );  --黒　背景                

-- ** 次の準備 ** --
spep_3 = spep_2 + 44 -a1;

------------------------------------------------------
-- 横視点　バイスシャウト敵吹っ飛ぶ(254F)
------------------------------------------------------
--spep_3 = 0;
a2 = 8

-- ** エフェクト等 ** --
away_f = entryEffectLife( spep_3 + 0, SP_02r, 254 -a2, 0x100, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_3 + 0, away_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254 -a2, away_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, away_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254 -a2, away_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, away_f, 0 );
setEffRotateKey( spep_3 + 254 -a2, away_f, 0 );
setEffAlphaKey( spep_3 + 0, away_f, 255 );
setEffAlphaKey( spep_3 + 254 -2 -a2, away_f, 255 );
setEffAlphaKey( spep_3 + 254 -1 -a2, away_f, 255 );
setEffAlphaKey( spep_3 + 254 -a2, away_f, 0 );

-- ** エフェクト等 ** --
away_b = entryEffectLife( spep_3 + 0, SP_03r, 254 -a2, 0x80, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_3 + 0, away_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 254 -a2, away_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, away_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 254 -a2, away_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, away_b, 0 );
setEffRotateKey( spep_3 + 254 -a2, away_b, 0 );
setEffAlphaKey( spep_3 + 0, away_b, 255 );
setEffAlphaKey( spep_3 + 254 -2 -a2, away_b, 255 );
setEffAlphaKey( spep_3 + 254 -1 -a2, away_b, 255 );
setEffAlphaKey( spep_3 + 254 -a2, away_b, 0 );

--[[spep_y = spep_3 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_y + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 音 ** --
--バイスシャウト
SE015 = playSeVer2( spep_3 + 24, 1213, "",spep_3 + 300 -a2, 0, 68, -1);
setSeVolumeByWorkId( spep_3 + 24, SE015, 72 );          
SE016 = playSeVer2( spep_3 + 24, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE016, 72 );          
SE017 = playSeVer2( spep_3 + 24, 1306, "", 0, 0, 0, -1);                
SE018 = playSeVer2( spep_3 + 24, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE018, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 254 -a2 +2, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 70 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);

   
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

-- ** 敵キャラクター ** --
a3 = 3

setDisp( spep_3 + 124 -a3, 1, 1 );
setDisp( spep_3 + 202 -a3, 1, 0 );

changeAnime( spep_3 + 124 -a3, 1, 100 );
changeAnime( spep_3 + 156 -a3, 1, 106 );
changeAnime( spep_3 + 162 -a3, 1, 108 );
changeAnime( spep_3 + 164 -a3, 1, 106 );
changeAnime( spep_3 + 166 -a3, 1, 108 );
changeAnime( spep_3 + 182 -a3, 1, 105 );

setMoveKey( spep_3 + 124 -a3, 1, 829.1, -31.3 , 0 );      --100
setMoveKey( spep_3 + 125 -a3, 1, 829.1, -31.3 , 0 );
setMoveKey( spep_3 + 126 -a3, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_3 + 127 -a3, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_3 + 128 -a3, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_3 + 129 -a3, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_3 + 130 -a3, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_3 + 131 -a3, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_3 + 132 -a3, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_3 + 133 -a3, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_3 + 134 -a3, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_3 + 135 -a3, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_3 + 136 -a3, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_3 + 137 -a3, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_3 + 138 -a3, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_3 + 139 -a3, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_3 + 140 -a3, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_3 + 141 -a3, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_3 + 142 -a3, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_3 + 143 -a3, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_3 + 144 -a3, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_3 + 145 -a3, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_3 + 146 -a3, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_3 + 147 -a3, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_3 + 148 -a3, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_3 + 149 -a3, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_3 + 150 -a3, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_3 + 151 -a3, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_3 + 152 -a3, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_3 + 153 -a3, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_3 + 154 -a3, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_3 + 155 -a3, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_3 + 156 -a3, 1, -4.2, 17.6 , 0 );      --106
setMoveKey( spep_3 + 157 -a3, 1, -4.2, 17.6 , 0 );
setMoveKey( spep_3 + 158 -a3, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_3 + 159 -a3, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_3 + 160 -a3, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_3 + 161 -a3, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_3 + 162 -a3, 1, 100, 10.9 , 0 );      --108
setMoveKey( spep_3 + 163 -a3, 1, 100, 10.9 , 0 );
setMoveKey( spep_3 + 164 -a3, 1, 5, 29.2 , 0 );      --106
setMoveKey( spep_3 + 165 -a3, 1, 5, 29.2 , 0 );
setMoveKey( spep_3 + 166 -a3, 1, 18, 12.1 , 0 );      --108
setMoveKey( spep_3 + 167 -a3, 1, 18, 12.1 , 0 );
setMoveKey( spep_3 + 168 -a3, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_3 + 169 -a3, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_3 + 170 -a3, 1, 21, 21.8 , 0 );
setMoveKey( spep_3 + 171 -a3, 1, 21, 21.8 , 0 );
setMoveKey( spep_3 + 172 -a3, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_3 + 173 -a3, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_3 + 174 -a3, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_3 + 175 -a3, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_3 + 176 -a3, 1, -4.6, 24 , 0 );
setMoveKey( spep_3 + 177 -a3, 1, -4.6, 24 , 0 );
setMoveKey( spep_3 + 178 -a3, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_3 + 179 -a3, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_3 + 180 -a3, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_3 + 181 -a3, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_3 + 182 -a3, 1, -65.4, 9.7 , 0 );      --105
setMoveKey( spep_3 + 183 -a3, 1, -65.4, 9.7 , 0 );
setMoveKey( spep_3 + 184 -a3, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_3 + 185 -a3, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_3 + 186 -a3, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_3 + 187 -a3, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_3 + 188 -a3, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_3 + 189 -a3, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_3 + 190 -a3, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_3 + 191 -a3, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_3 + 192 -a3, 1, -12, 56.9 , 0 );
setMoveKey( spep_3 + 193 -a3, 1, -12, 56.9 , 0 );
setMoveKey( spep_3 + 194 -a3, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_3 + 195 -a3, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_3 + 196 -a3, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_3 + 197 -a3, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_3 + 198 -a3, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_3 + 199 -a3, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_3 + 200 -a3, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_3 + 201 -a3, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_3 + 202 -a3, 1, 15.4, 80.4 , 0 );

setScaleKey( spep_3 + 124 -a3, 1, 1.95, 1.95 );      --100
setScaleKey( spep_3 + 153 -a3, 1, 1.95, 1.95 );
setScaleKey( spep_3 + 154 -a3, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 155 -a3, 1, 1.93, 1.93 );
setScaleKey( spep_3 + 156 -a3, 1, 1.75, 1.75 );      --106
setScaleKey( spep_3 + 157 -a3, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 158 -a3, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 159 -a3, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 160 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 161 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 162 -a3, 1, 1.87, 1.87 );      --108
setScaleKey( spep_3 + 163 -a3, 1, 1.87, 1.87 );
setScaleKey( spep_3 + 164 -a3, 1, 1.85, 1.85 );      --106
setScaleKey( spep_3 + 165 -a3, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 166 -a3, 1, 1.84, 1.84 );      --108
setScaleKey( spep_3 + 167 -a3, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 168 -a3, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 169 -a3, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 170 -a3, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 171 -a3, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 172 -a3, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 173 -a3, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 174 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 175 -a3, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 176 -a3, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 177 -a3, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 178 -a3, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 179 -a3, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 180 -a3, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 181 -a3, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 182 -a3, 1, 1.08, 1.08 );      --105
setScaleKey( spep_3 + 183 -a3, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 184 -a3, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 185 -a3, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 186 -a3, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 187 -a3, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 188 -a3, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 189 -a3, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 190 -a3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 191 -a3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 192 -a3, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 193 -a3, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 194 -a3, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 195 -a3, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 196 -a3, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 197 -a3, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 198 -a3, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 201 -a3, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 202 -a3, 1, 0.52, 0.52 );

setRotateKey( spep_3 + 124 -a3, 1, 0 );      --100
setRotateKey( spep_3 + 155 -a3, 1, 0 );
setRotateKey( spep_3 + 156 -a3, 1, -66.5 );      --106
setRotateKey( spep_3 + 157 -a3, 1, -66.5 );
setRotateKey( spep_3 + 158 -a3, 1, -61.5 );
setRotateKey( spep_3 + 159 -a3, 1, -61.5 );
setRotateKey( spep_3 + 160 -a3, 1, -69.5 );
setRotateKey( spep_3 + 161 -a3, 1, -69.5 );
setRotateKey( spep_3 + 162 -a3, 1, 0 );      --108
setRotateKey( spep_3 + 163 -a3, 1, 0 );
setRotateKey( spep_3 + 164 -a3, 1, -66.4 );      --106
setRotateKey( spep_3 + 165 -a3, 1, -66.4 );
setRotateKey( spep_3 + 166 -a3, 1, 0 );      --108
setRotateKey( spep_3 + 181 -a3, 1, 0 );
setRotateKey( spep_3 + 182 -a3, 1, 0 );      --105
setRotateKey( spep_3 + 202 -a3, 1, 0 );

-- ** 音 ** --
--バイスシャウト          
SE019 = playSeVer2( spep_3 + 72, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 72, SE019, 71 );          

--飛んでいく
SE020 = playSeVer2( spep_3 + 110, 1212, "",spep_3 + 274 -a2, 12, 46, -1);
setSeVolumeByWorkId( spep_3 + 110, SE020, 71 );
setStartTimeMs( SE020,  633 );
setPitch( spep_3 + 110, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );

--バイスシャウト
SE021 = playSeVer2( spep_3 + 120, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 120, SE021, 71 );

--気弾弾ける
SE022 = playSeVer2( spep_3 + 192, 1145, "",spep_3 + 316 -a2, 6, 70, 0.5);
setSeVolumeByWorkId( spep_3 + 192, SE022, 123 );
setStartTimeMs( SE022,  250 );
setPitch( spep_3 + 192, SE022, 100 );
setTimeStretch( SE022, 1.07, 30, 4 );
SE023 = playSeVer2( spep_3 + 194, 1193, "",spep_3 + 248 -a2, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 194, SE023, 150 );            
SE024 = playSeVer2( spep_3 + 194, 1252, "",spep_3 + 286 -a2, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 194, SE024, 126 );            

--穴開きかけ
SE025 = playSeVer2( spep_3 + 250, 1188, "",spep_3 + 302 -a2, 6, 26, -1);
setStartTimeMs( SE025,  267 );      
SE026 = playSeVer2( spep_3 + 250, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 250, SE026, 78 );                         

-- ** 次の準備 ** --
spep_4 = spep_3 + 254 -a2;

------------------------------------------------------
-- 空間からビーム→穴から覗く(270f)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
last = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --空間からビーム→穴から覗く
setEffMoveKey( spep_4 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_4 + 270, last, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_4 + 270, last, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last, 0 );
setEffRotateKey( spep_4 + 270, last, 0 );
setEffAlphaKey( spep_4 + 0, last, 255 );
setEffAlphaKey( spep_4 + 270, last, 255 );

-- ** 音 ** --
--バイスシャウト貫通する
SE027 = playSeVer2( spep_4 + 22, 1258, "", 0, 0, 0, -1);                        
SE028 = playSeVer2( spep_4 + 26, 1213, "",spep_4 + 144, 0, 80, -1);
setSeVolumeByWorkId( spep_4 + 26, SE028, 81 );
setBandpassFilter  ( spep_4 + 26, SE028, 24, 655 );
SE029 = playSeVer2( spep_4 + 26, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 26, SE029, 74 );                  
SE030 = playSeVer2( spep_4 + 26, 1239, "",spep_4 + 152, 0, 56, -1);
setSeVolumeByWorkId( spep_4 + 26, SE030, 160 );
setPitch( spep_4 + 26, SE030, -600 );
setTimeStretch( SE030, 0.6, 30, 4 );        
SE031 = playSeVer2( spep_4 + 26, 1325, "",spep_4 + 152, 0, 56, -1);
setSeVolumeByWorkId( spep_4 + 26, SE031, 60 );                  
SE032 = playSeVer2( spep_4 + 26, 1295, "",spep_4 + 152, 0, 56, -1);                     

--穴から覗く
SE033 = playSeVer2( spep_4 + 98, 1147, "", 0, 0, 0, -1);                        
SE034 = playSeVer2( spep_4 + 104, 1056, "", 0, 0, 0, -1);                       
SE035 = playSeVer2( spep_4 + 164, 1056, "", 0, 0, 0, -1);                       

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 270 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_4 +36 ); -- ダメージ表示フレーム
endPhase( spep_4 + 260 ); -- 終了フレーム

end