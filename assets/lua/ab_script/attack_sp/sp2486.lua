--1025810:SSR超サイヤ人3ゴテンクス＆ピッコロ_バイスシャウト
--sp_effect_a9_00101

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
SP_01 = 161331;	--トランクス気合い入れる	 ef_001
SP_02 = 161333; --横視点　バイスシャウト敵吹っ飛ぶ    ef_002
SP_03 = 161335; --横視点　バイスシャウト敵吹っ飛ぶ    ef_003
SP_04 = 161337; --空間からビーム    ef_004

--敵側
SP_01r = 161332; --トランクス気合い入れる    ef_001_r
SP_02r = 161334; --横視点　バイスシャウト敵吹っ飛ぶ    ef_002_r
SP_03r = 161336; --横視点　バイスシャウト敵吹っ飛ぶ    ef_003_r
SP_04r = 161338; --空間からビーム    ef_004_r

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
-- トランクス気合い入れる  (94f)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
spirit = entryEffectLife( spep_0 + 0, SP_01, 94, 0x100, -1, 0, 0, 0 );  --トランクス気合い入れる
setEffMoveKey( spep_0 + 0, spirit, 0, 0 , 0 );
setEffMoveKey( spep_0 + 94, spirit, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, spirit, 1.0, 1.0 );
setEffScaleKey( spep_0 + 94, spirit, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, spirit, 0 );
setEffRotateKey( spep_0 + 94, spirit, 0 );
setEffAlphaKey( spep_0 + 0, spirit, 255 );
setEffAlphaKey( spep_0 + 94, spirit, 255 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1148, "",spep_0 + 106, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );

--胸をはる
SE004 = playSeVer2( spep_0 + 34, 1004, "", 0, 0, 0, -1);    

--顔カットイン
SE005 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);    

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 94 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;

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
-- 横視点　バイスシャウト敵吹っ飛ぶ(254F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
away_f = entryEffectLife( spep_2 + 0, SP_02, 246, 0x100, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_2 + 0, away_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 246, away_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, away_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 246, away_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, away_f, 0 );
setEffRotateKey( spep_2 + 246, away_f, 0 );
setEffAlphaKey( spep_2 + 0, away_f, 255 );
setEffAlphaKey( spep_2 + 246 -2, away_f, 255 );
setEffAlphaKey( spep_2 + 246 -1, away_f, 255 );
setEffAlphaKey( spep_2 + 246, away_f, 0 );

-- ** エフェクト等 ** --
away_b = entryEffectLife( spep_2 + 0, SP_03, 246, 0x80, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_2 + 0, away_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 246, away_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, away_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 246, away_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, away_b, 0 );
setEffRotateKey( spep_2 + 246, away_b, 0 );
setEffAlphaKey( spep_2 + 0, away_b, 255 );
setEffAlphaKey( spep_2 + 246 -2, away_b, 255 );
setEffAlphaKey( spep_2 + 246 -1, away_b, 255 );
setEffAlphaKey( spep_2 + 246, away_b, 0 );

--//////////セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_2 + 20;  --表示させたいフレーム−10の分を足す！

speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 246 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--バイスシャウト
SE009 = playSeVer2( spep_2 + 24, 1213, "",spep_2 + 300, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 24, SE009, 72 );          
SE010 = playSeVer2( spep_2 + 24, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE010, 72 );          
SE011 = playSeVer2( spep_2 + 24, 1306, "", 0, 0, 0, -1);                
SE012 = playSeVer2( spep_2 + 24, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE012, 71 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

   
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
a1 = 3

setDisp( spep_2 + 124 -a1, 1, 1 );
setDisp( spep_2 + 202 -a1, 1, 0 );

changeAnime( spep_2 + 124 -a1, 1, 100 );
changeAnime( spep_2 + 156 -a1, 1, 106 );
changeAnime( spep_2 + 162 -a1, 1, 108 );
changeAnime( spep_2 + 164 -a1, 1, 106 );
changeAnime( spep_2 + 166 -a1, 1, 108 );
changeAnime( spep_2 + 182 -a1, 1, 105 );

setMoveKey( spep_2 + 124 -a1, 1, 829.1, -31.3 , 0 );      --100
setMoveKey( spep_2 + 125 -a1, 1, 829.1, -31.3 , 0 );
setMoveKey( spep_2 + 126 -a1, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_2 + 127 -a1, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_2 + 128 -a1, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_2 + 129 -a1, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_2 + 130 -a1, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_2 + 131 -a1, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_2 + 132 -a1, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_2 + 133 -a1, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_2 + 134 -a1, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_2 + 135 -a1, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_2 + 136 -a1, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_2 + 137 -a1, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_2 + 138 -a1, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_2 + 139 -a1, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_2 + 140 -a1, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_2 + 141 -a1, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_2 + 142 -a1, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_2 + 143 -a1, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_2 + 144 -a1, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_2 + 145 -a1, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_2 + 146 -a1, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_2 + 147 -a1, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_2 + 148 -a1, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_2 + 149 -a1, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_2 + 150 -a1, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_2 + 151 -a1, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_2 + 152 -a1, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_2 + 153 -a1, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_2 + 154 -a1, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_2 + 155 -a1, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_2 + 156 -a1, 1, -4.2, 17.6 , 0 );      --106
setMoveKey( spep_2 + 157 -a1, 1, -4.2, 17.6 , 0 );
setMoveKey( spep_2 + 158 -a1, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_2 + 159 -a1, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_2 + 160 -a1, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_2 + 161 -a1, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_2 + 162 -a1, 1, 100, 10.9 , 0 );      --108
setMoveKey( spep_2 + 163 -a1, 1, 100, 10.9 , 0 );
setMoveKey( spep_2 + 164 -a1, 1, 5, 29.2 , 0 );      --106
setMoveKey( spep_2 + 165 -a1, 1, 5, 29.2 , 0 );
setMoveKey( spep_2 + 166 -a1, 1, 18, 12.1 , 0 );      --108
setMoveKey( spep_2 + 167 -a1, 1, 18, 12.1 , 0 );
setMoveKey( spep_2 + 168 -a1, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_2 + 169 -a1, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_2 + 170 -a1, 1, 21, 21.8 , 0 );
setMoveKey( spep_2 + 171 -a1, 1, 21, 21.8 , 0 );
setMoveKey( spep_2 + 172 -a1, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_2 + 173 -a1, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_2 + 174 -a1, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_2 + 175 -a1, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_2 + 176 -a1, 1, -4.6, 24 , 0 );
setMoveKey( spep_2 + 177 -a1, 1, -4.6, 24 , 0 );
setMoveKey( spep_2 + 178 -a1, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_2 + 179 -a1, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_2 + 180 -a1, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_2 + 181 -a1, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_2 + 182 -a1, 1, -65.4, 9.7 , 0 );      --105
setMoveKey( spep_2 + 183 -a1, 1, -65.4, 9.7 , 0 );
setMoveKey( spep_2 + 184 -a1, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_2 + 185 -a1, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_2 + 186 -a1, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_2 + 187 -a1, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_2 + 188 -a1, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_2 + 189 -a1, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_2 + 190 -a1, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_2 + 191 -a1, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_2 + 192 -a1, 1, -12, 56.9 , 0 );
setMoveKey( spep_2 + 193 -a1, 1, -12, 56.9 , 0 );
setMoveKey( spep_2 + 194 -a1, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_2 + 195 -a1, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_2 + 196 -a1, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_2 + 197 -a1, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_2 + 198 -a1, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_2 + 199 -a1, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_2 + 200 -a1, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_2 + 201 -a1, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_2 + 202 -a1, 1, 15.4, 80.4 , 0 );

setScaleKey( spep_2 + 124 -a1, 1, 1.95, 1.95 );      --100
setScaleKey( spep_2 + 153 -a1, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 154 -a1, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 155 -a1, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 156 -a1, 1, 1.75, 1.75 );      --106
setScaleKey( spep_2 + 157 -a1, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 158 -a1, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 159 -a1, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 160 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 161 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 162 -a1, 1, 1.87, 1.87 );      --108
setScaleKey( spep_2 + 163 -a1, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 164 -a1, 1, 1.85, 1.85 );      --106
setScaleKey( spep_2 + 165 -a1, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 166 -a1, 1, 1.84, 1.84 );      --108
setScaleKey( spep_2 + 167 -a1, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 168 -a1, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 169 -a1, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 170 -a1, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 171 -a1, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 172 -a1, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 173 -a1, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 174 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 175 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 176 -a1, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 177 -a1, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 178 -a1, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 179 -a1, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 180 -a1, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 181 -a1, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 182 -a1, 1, 1.08, 1.08 );      --105
setScaleKey( spep_2 + 183 -a1, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 184 -a1, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 185 -a1, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 186 -a1, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 187 -a1, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 188 -a1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 189 -a1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 190 -a1, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 191 -a1, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 192 -a1, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 193 -a1, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 194 -a1, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 195 -a1, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 196 -a1, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 197 -a1, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 198 -a1, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 201 -a1, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 202 -a1, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 124 -a1, 1, 0 );      --100
setRotateKey( spep_2 + 155 -a1, 1, 0 );
setRotateKey( spep_2 + 156 -a1, 1, -66.5 );      --106
setRotateKey( spep_2 + 157 -a1, 1, -66.5 );
setRotateKey( spep_2 + 158 -a1, 1, -61.5 );
setRotateKey( spep_2 + 159 -a1, 1, -61.5 );
setRotateKey( spep_2 + 160 -a1, 1, -69.5 );
setRotateKey( spep_2 + 161 -a1, 1, -69.5 );
setRotateKey( spep_2 + 162 -a1, 1, 0 );      --108
setRotateKey( spep_2 + 163 -a1, 1, 0 );
setRotateKey( spep_2 + 164 -a1, 1, -66.4 );      --106
setRotateKey( spep_2 + 165 -a1, 1, -66.4 );
setRotateKey( spep_2 + 166 -a1, 1, 0 );      --108
setRotateKey( spep_2 + 181 -a1, 1, 0 );
setRotateKey( spep_2 + 182 -a1, 1, 0 );      --105
setRotateKey( spep_2 + 202 -a1, 1, 0 );

-- ** 音 ** --
--バイスシャウト          
SE013 = playSeVer2( spep_2 + 72, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE013, 71 );          

--飛んでいく
SE014 = playSeVer2( spep_2 + 110, 1212, "",spep_2 + 274, 12, 46, -1);
setSeVolumeByWorkId( spep_2 + 110, SE014, 71 );
setStartTimeMs( SE014,  633 );
setPitch( spep_2 + 110, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--バイスシャウト
SE015 = playSeVer2( spep_2 + 120, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE015, 71 );         

--気弾弾ける
SE016 = playSeVer2( spep_2 + 192, 1145, "",spep_2 + 516, 6, 370, -1);
setSeVolumeByWorkId( spep_2 + 192, SE016, 123 );
setStartTimeMs( SE016,  250 );
setPitch( spep_2 + 192, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );
SE017 = playSeVer2( spep_2 + 194, 1193, "",spep_2 + 248, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 194, SE017, 150 );            
SE018 = playSeVer2( spep_2 + 194, 1252, "",spep_2 + 286, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 194, SE018, 126 );            

--穴開きかけ
SE019 = playSeVer2( spep_2 + 242, 1188, "",spep_2 + 302, 6, 26, -1);
setStartTimeMs( SE019,  267 );      
SE020 = playSeVer2( spep_2 + 242, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE020, 78 );                                           

-- ** 次の準備 ** --
spep_3 = spep_2 + 246;

------------------------------------------------------
-- 空間からビーム→穴から覗く(224f)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
last = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --空間からビーム→穴から覗く
setEffMoveKey( spep_3 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_3 + 224, last, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_3 + 224, last, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last, 0 );
setEffRotateKey( spep_3 + 224, last, 0 );
setEffAlphaKey( spep_3 + 0, last, 255 );
setEffAlphaKey( spep_3 + 224, last, 255 );

-- ** 音 ** --
--バイスシャウト貫通する
SE021 = playSeVer2( spep_3 + 26, 1258, "", 0, 0, 0, -1);                        
SE022 = playSeVer2( spep_3 + 30, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE022, 81 );
setBandpassFilter  ( spep_3 + 30, SE022, 24, 655 );
SE023 = playSeVer2( spep_3 + 30, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE023, 74 );                  
SE024 = playSeVer2( spep_3 + 30, 1239, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE024, 160 );
setPitch( spep_3 + 30, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );        
SE025 = playSeVer2( spep_3 + 30, 1325, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE025, 60 );                  
SE026 = playSeVer2( spep_3 + 30, 1295, "", 0, 0, 0, -1);                                               

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 224 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 +36 ); -- ダメージ表示フレーム
endPhase( spep_3 + 214 ); -- 終了フレーム


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- トランクス気合い入れる  (94f)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
spirit = entryEffectLife( spep_0 + 0, SP_01r, 94, 0x100, -1, 0, 0, 0 );  --トランクス気合い入れる
setEffMoveKey( spep_0 + 0, spirit, 0, 0 , 0 );
setEffMoveKey( spep_0 + 94, spirit, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, spirit, 1.0, 1.0 );
setEffScaleKey( spep_0 + 94, spirit, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, spirit, 0 );
setEffRotateKey( spep_0 + 94, spirit, 0 );
setEffAlphaKey( spep_0 + 0, spirit, 255 );
setEffAlphaKey( spep_0 + 94, spirit, 255 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1148, "",spep_0 + 106, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );

--胸をはる
SE004 = playSeVer2( spep_0 + 34, 1004, "", 0, 0, 0, -1);    

--顔カットイン
SE005 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);    

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 94 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;

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
-- 横視点　バイスシャウト敵吹っ飛ぶ(254F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
away_f = entryEffectLife( spep_2 + 0, SP_02r, 246, 0x100, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_2 + 0, away_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 246, away_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, away_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 246, away_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, away_f, 0 );
setEffRotateKey( spep_2 + 246, away_f, 0 );
setEffAlphaKey( spep_2 + 0, away_f, 255 );
setEffAlphaKey( spep_2 + 246 -2, away_f, 255 );
setEffAlphaKey( spep_2 + 246 -1, away_f, 255 );
setEffAlphaKey( spep_2 + 246, away_f, 0 );

-- ** エフェクト等 ** --
away_b = entryEffectLife( spep_2 + 0, SP_03r, 246, 0x80, -1, 0, 0, 0 );  --横視点　バイスシャウト敵吹っ飛ぶ
setEffMoveKey( spep_2 + 0, away_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 246, away_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, away_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 246, away_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, away_b, 0 );
setEffRotateKey( spep_2 + 246, away_b, 0 );
setEffAlphaKey( spep_2 + 0, away_b, 255 );
setEffAlphaKey( spep_2 + 246 -2, away_b, 255 );
setEffAlphaKey( spep_2 + 246 -1, away_b, 255 );
setEffAlphaKey( spep_2 + 246, away_b, 0 );

--//////////セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_2 + 20;  --表示させたいフレーム−10の分を足す！

--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 246 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--バイスシャウト
SE009 = playSeVer2( spep_2 + 24, 1213, "",spep_2 + 300, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 24, SE009, 72 );          
SE010 = playSeVer2( spep_2 + 24, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE010, 72 );          
SE011 = playSeVer2( spep_2 + 24, 1306, "", 0, 0, 0, -1);                
SE012 = playSeVer2( spep_2 + 24, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE012, 71 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

   
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
a1 = 3

setDisp( spep_2 + 124 -a1, 1, 1 );
setDisp( spep_2 + 202 -a1, 1, 0 );

changeAnime( spep_2 + 124 -a1, 1, 100 );
changeAnime( spep_2 + 156 -a1, 1, 106 );
changeAnime( spep_2 + 162 -a1, 1, 108 );
changeAnime( spep_2 + 164 -a1, 1, 106 );
changeAnime( spep_2 + 166 -a1, 1, 108 );
changeAnime( spep_2 + 182 -a1, 1, 105 );

setMoveKey( spep_2 + 124 -a1, 1, 829.1, -31.3 , 0 );      --100
setMoveKey( spep_2 + 125 -a1, 1, 829.1, -31.3 , 0 );
setMoveKey( spep_2 + 126 -a1, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_2 + 127 -a1, 1, 769.6, -31.3 , 0 );
setMoveKey( spep_2 + 128 -a1, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_2 + 129 -a1, 1, 710.1, -31.3 , 0 );
setMoveKey( spep_2 + 130 -a1, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_2 + 131 -a1, 1, 650.6, -31.3 , 0 );
setMoveKey( spep_2 + 132 -a1, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_2 + 133 -a1, 1, 591.1, -31.3 , 0 );
setMoveKey( spep_2 + 134 -a1, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_2 + 135 -a1, 1, 531.6, -31.3 , 0 );
setMoveKey( spep_2 + 136 -a1, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_2 + 137 -a1, 1, 472.1, -31.3 , 0 );
setMoveKey( spep_2 + 138 -a1, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_2 + 139 -a1, 1, 412.6, -31.3 , 0 );
setMoveKey( spep_2 + 140 -a1, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_2 + 141 -a1, 1, 353.1, -31.3 , 0 );
setMoveKey( spep_2 + 142 -a1, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_2 + 143 -a1, 1, 293.6, -31.3 , 0 );
setMoveKey( spep_2 + 144 -a1, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_2 + 145 -a1, 1, 234.1, -31.3 , 0 );
setMoveKey( spep_2 + 146 -a1, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_2 + 147 -a1, 1, 174.6, -31.3 , 0 );
setMoveKey( spep_2 + 148 -a1, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_2 + 149 -a1, 1, 115.1, -31.3 , 0 );
setMoveKey( spep_2 + 150 -a1, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_2 + 151 -a1, 1, 55.6, -31.3 , 0 );
setMoveKey( spep_2 + 152 -a1, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_2 + 153 -a1, 1, -3.9, -31.3 , 0 );
setMoveKey( spep_2 + 154 -a1, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_2 + 155 -a1, 1, -3.5, -30.2 , 0 );
setMoveKey( spep_2 + 156 -a1, 1, -4.2, 17.6 , 0 );      --106
setMoveKey( spep_2 + 157 -a1, 1, -4.2, 17.6 , 0 );
setMoveKey( spep_2 + 158 -a1, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_2 + 159 -a1, 1, 11.8, 26.1 , 0 );
setMoveKey( spep_2 + 160 -a1, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_2 + 161 -a1, 1, -0.2, 19.1 , 0 );
setMoveKey( spep_2 + 162 -a1, 1, 100, 10.9 , 0 );      --108
setMoveKey( spep_2 + 163 -a1, 1, 100, 10.9 , 0 );
setMoveKey( spep_2 + 164 -a1, 1, 5, 29.2 , 0 );      --106
setMoveKey( spep_2 + 165 -a1, 1, 5, 29.2 , 0 );
setMoveKey( spep_2 + 166 -a1, 1, 18, 12.1 , 0 );      --108
setMoveKey( spep_2 + 167 -a1, 1, 18, 12.1 , 0 );
setMoveKey( spep_2 + 168 -a1, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_2 + 169 -a1, 1, 25.6, 36.1 , 0 );
setMoveKey( spep_2 + 170 -a1, 1, 21, 21.8 , 0 );
setMoveKey( spep_2 + 171 -a1, 1, 21, 21.8 , 0 );
setMoveKey( spep_2 + 172 -a1, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_2 + 173 -a1, 1, 15.1, 22.5 , 0 );
setMoveKey( spep_2 + 174 -a1, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_2 + 175 -a1, 1, 6.9, 23.2 , 0 );
setMoveKey( spep_2 + 176 -a1, 1, -4.6, 24 , 0 );
setMoveKey( spep_2 + 177 -a1, 1, -4.6, 24 , 0 );
setMoveKey( spep_2 + 178 -a1, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_2 + 179 -a1, 1, -20.6, 24.8 , 0 );
setMoveKey( spep_2 + 180 -a1, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_2 + 181 -a1, 1, -43.2, 25.8 , 0 );
setMoveKey( spep_2 + 182 -a1, 1, -65.4, 9.7 , 0 );      --105
setMoveKey( spep_2 + 183 -a1, 1, -65.4, 9.7 , 0 );
setMoveKey( spep_2 + 184 -a1, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_2 + 185 -a1, 1, -56.9, 17.1 , 0 );
setMoveKey( spep_2 + 186 -a1, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_2 + 187 -a1, 1, -47.2, 25.7 , 0 );
setMoveKey( spep_2 + 188 -a1, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_2 + 189 -a1, 1, -36.3, 35.3 , 0 );
setMoveKey( spep_2 + 190 -a1, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_2 + 191 -a1, 1, -24.5, 45.7 , 0 );
setMoveKey( spep_2 + 192 -a1, 1, -12, 56.9 , 0 );
setMoveKey( spep_2 + 193 -a1, 1, -12, 56.9 , 0 );
setMoveKey( spep_2 + 194 -a1, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_2 + 195 -a1, 1, 1.1, 68.4 , 0 );
setMoveKey( spep_2 + 196 -a1, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_2 + 197 -a1, 1, 14.4, 80.1 , 0 );
setMoveKey( spep_2 + 198 -a1, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_2 + 199 -a1, 1, 14.7, 80.2 , 0 );
setMoveKey( spep_2 + 200 -a1, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_2 + 201 -a1, 1, 15.1, 80.2 , 0 );
setMoveKey( spep_2 + 202 -a1, 1, 15.4, 80.4 , 0 );

setScaleKey( spep_2 + 124 -a1, 1, 1.95, 1.95 );      --100
setScaleKey( spep_2 + 153 -a1, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 154 -a1, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 155 -a1, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 156 -a1, 1, 1.75, 1.75 );      --106
setScaleKey( spep_2 + 157 -a1, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 158 -a1, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 159 -a1, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 160 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 161 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 162 -a1, 1, 1.87, 1.87 );      --108
setScaleKey( spep_2 + 163 -a1, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 164 -a1, 1, 1.85, 1.85 );      --106
setScaleKey( spep_2 + 165 -a1, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 166 -a1, 1, 1.84, 1.84 );      --108
setScaleKey( spep_2 + 167 -a1, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 168 -a1, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 169 -a1, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 170 -a1, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 171 -a1, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 172 -a1, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 173 -a1, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 174 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 175 -a1, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 176 -a1, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 177 -a1, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 178 -a1, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 179 -a1, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 180 -a1, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 181 -a1, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 182 -a1, 1, 1.08, 1.08 );      --105
setScaleKey( spep_2 + 183 -a1, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 184 -a1, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 185 -a1, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 186 -a1, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 187 -a1, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 188 -a1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 189 -a1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 190 -a1, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 191 -a1, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 192 -a1, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 193 -a1, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 194 -a1, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 195 -a1, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 196 -a1, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 197 -a1, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 198 -a1, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 201 -a1, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 202 -a1, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 124 -a1, 1, 0 );      --100
setRotateKey( spep_2 + 155 -a1, 1, 0 );
setRotateKey( spep_2 + 156 -a1, 1, -66.5 );      --106
setRotateKey( spep_2 + 157 -a1, 1, -66.5 );
setRotateKey( spep_2 + 158 -a1, 1, -61.5 );
setRotateKey( spep_2 + 159 -a1, 1, -61.5 );
setRotateKey( spep_2 + 160 -a1, 1, -69.5 );
setRotateKey( spep_2 + 161 -a1, 1, -69.5 );
setRotateKey( spep_2 + 162 -a1, 1, 0 );      --108
setRotateKey( spep_2 + 163 -a1, 1, 0 );
setRotateKey( spep_2 + 164 -a1, 1, -66.4 );      --106
setRotateKey( spep_2 + 165 -a1, 1, -66.4 );
setRotateKey( spep_2 + 166 -a1, 1, 0 );      --108
setRotateKey( spep_2 + 181 -a1, 1, 0 );
setRotateKey( spep_2 + 182 -a1, 1, 0 );      --105
setRotateKey( spep_2 + 202 -a1, 1, 0 );

-- ** 音 ** --
--バイスシャウト          
SE013 = playSeVer2( spep_2 + 72, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE013, 71 );          

--飛んでいく
SE014 = playSeVer2( spep_2 + 110, 1212, "",spep_2 + 274, 12, 46, -1);
setSeVolumeByWorkId( spep_2 + 110, SE014, 71 );
setStartTimeMs( SE014,  633 );
setPitch( spep_2 + 110, SE014, -600 );
setTimeStretch( SE014, 0.6, 30, 4 );

--バイスシャウト
SE015 = playSeVer2( spep_2 + 120, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE015, 71 );         

--気弾弾ける
SE016 = playSeVer2( spep_2 + 192, 1145, "",spep_2 + 516, 6, 370, -1);
setSeVolumeByWorkId( spep_2 + 192, SE016, 123 );
setStartTimeMs( SE016,  250 );
setPitch( spep_2 + 192, SE016, 100 );
setTimeStretch( SE016, 1.07, 30, 4 );
SE017 = playSeVer2( spep_2 + 194, 1193, "",spep_2 + 248, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 194, SE017, 150 );            
SE018 = playSeVer2( spep_2 + 194, 1252, "",spep_2 + 286, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 194, SE018, 126 );            

--穴開きかけ
SE019 = playSeVer2( spep_2 + 242, 1188, "",spep_2 + 302, 6, 26, -1);
setStartTimeMs( SE019,  267 );      
SE020 = playSeVer2( spep_2 + 242, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE020, 78 );                                           

-- ** 次の準備 ** --
spep_3 = spep_2 + 246;

------------------------------------------------------
-- 空間からビーム→穴から覗く(224f)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
last = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --空間からビーム→穴から覗く
setEffMoveKey( spep_3 + 0, last, 0, 0 , 0 );
setEffMoveKey( spep_3 + 224, last, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, last, 1.0, 1.0 );
setEffScaleKey( spep_3 + 224, last, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, last, 0 );
setEffRotateKey( spep_3 + 224, last, 0 );
setEffAlphaKey( spep_3 + 0, last, 255 );
setEffAlphaKey( spep_3 + 224, last, 255 );

-- ** 音 ** --
--バイスシャウト貫通する
SE021 = playSeVer2( spep_3 + 26, 1258, "", 0, 0, 0, -1);                        
SE022 = playSeVer2( spep_3 + 30, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE022, 81 );
setBandpassFilter  ( spep_3 + 30, SE022, 24, 655 );
SE023 = playSeVer2( spep_3 + 30, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE023, 74 );                  
SE024 = playSeVer2( spep_3 + 30, 1239, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE024, 160 );
setPitch( spep_3 + 30, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );        
SE025 = playSeVer2( spep_3 + 30, 1325, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE025, 60 );                  
SE026 = playSeVer2( spep_3 + 30, 1295, "", 0, 0, 0, -1);                                               

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 224 +2, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 +36 ); -- ダメージ表示フレーム
endPhase( spep_3 + 214 ); -- 終了フレーム

end