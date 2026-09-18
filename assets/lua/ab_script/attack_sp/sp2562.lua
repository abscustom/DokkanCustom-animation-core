--1026760:SSR_アモンド&レズン_クラッシャーインベーション
--sp_effect_a7_00065
--sp2562

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
SP_01 = 161909;	--セリフカットイン ef_001
SP_02 = 161910;	--突進からフィニッシュまで(手前) ef_002
SP_03 = 161911;	--突進からフィニッシュまで(奥)   ef_002b


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

ENABLE_AUTO_TIME_STRETCH(0.85);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン(92F)
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフカットイン ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 92, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 92, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 92, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 92, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 92 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 92;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_1 + 0, speff2, 1.0, 1.0);
setEffScaleKey( spep_1 + 90, speff2, 1.0, 1.0);
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -192 );
setEffScaleKey( spep_1 + 0, spname, 1.0, 1.0);
setEffScaleKey( spep_1 + 90, spname, 1.0, 1.0);
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, housha, 90, 20 );
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, housha, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, housha, 0 );
setEffRotateKey( spep_1 + 90, housha, 0 );
setEffAlphaKey( spep_1 + 0, housha, 255 );
setEffAlphaKey( spep_1 + 90, housha, 255 );

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-------------------------------------------------
-- 突進からフィニッシュまで(424F)
-------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進からフィニッシュまで(手前) ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 424, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 424, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + 424, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + 424, finish_f, 255);
  
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 突進からフィニッシュまで(奥) ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 424, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 424, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + 424, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + 424, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 424 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--双子飛んで生きて回転
SE004 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 46, 0, 16, -1);
SE005 = playSeVer2( spep_2 + 22, 1151, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 24, 1004, "", 0, 0, 0, -1);

--画面前加速
SE007 = playSeVer2( spep_2 + 50, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 50, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE008, 89 );

--瞬間移動
SE009 = playSeVer2( spep_2 + 72, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_2 + 88; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
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

-- ** 敵キャラクター ** --
OFFSET_X = -1
-- 敵の動き_1 --
setDisp(spep_2 + 102 + OFFSET_X,1,1)
setDisp(spep_2 + 188 + OFFSET_X,1,0)

changeAnime( spep_2 + 102 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0, -19.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0, -19.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -0.1, -19.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -0.1, -19.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 0, -18.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 0, -18.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -0.1, -17.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -0.1, -17.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 0, -17.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 0, -17.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -0.1, -16.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -0.1, -16.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0, -15.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 0, -15.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0, -15.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0, -15.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 86.9, -55.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 86.9, -55.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 40.9, -11.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 40.9, -11.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 20.7, 20.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 20.7, 20.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 56.5, -31.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 56.5, -31.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 44.4, -7.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 44.4, -7.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 60.2, -11.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 60.2, -11.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 40.1, -23.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 40.1, -23.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 71.9, 16.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 71.9, 16.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 39.8, -23.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 39.8, -23.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 59.6, -11.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 59.6, -11.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 39.5, 4.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 39.5, 4.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 49.8, -16.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 49.8, -16.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 58.2, -20.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 58.2, -20.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 64.6, -23.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 64.6, -23.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 69.1, -25.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 69.1, -25.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 71.6, -26.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 71.6, -26.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 72.3, -26.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 72.3, -26.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 14.5, -9.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 14.5, -9.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -47.6, -54.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -47.6, -54.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 8.4, -14.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 8.4, -14.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 24.3, 25.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 24.3, 25.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 16.3, -30.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 16.3, -30.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 4.3, -6.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 4.3, -6.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 18.6, -15.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 18.6, -15.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -7.1, -44.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -7.1, -44.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 7.2, 10.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 7.2, 10.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -18.4, -6.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -18.4, -6.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -100, -146.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -100, -146.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -204.7, -221.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -204.7, -221.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -288.8, -303.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -288.8, -303.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -360.5, -374 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -360.5, -374 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -419.9, -432.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -419.9, -432.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -467.1, -478.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -467.1, -478.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -502.3, -513 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -502.3, -513 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -525.6, -535.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -525.6, -535.8 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.62, 1.62 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -95.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -95.5 );

-- 敵の動き_2 --
setDisp(spep_2 + 216 + OFFSET_X,1,1)
setDisp(spep_2 + 270 + OFFSET_X,1,0)

changeAnime( spep_2 + 152 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 216 + OFFSET_X, 1, 508.5, 690.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 508.5, 690.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 495.9, 673.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 495.9, 673.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 481.1, 653.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 481.1, 653.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 464, 631.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 464, 631.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 444.6, 605.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 444.6, 605.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 423, 577 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 423, 577 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 399, 545.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 399, 545.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 372.6, 510.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 372.6, 510.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 343.8, 472.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 343.8, 472.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 312.6, 430.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 312.6, 430.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 279, 386.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 279, 386.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 242.8, 338.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 242.8, 338.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 204, 286.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 204, 286.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 162.8, 232.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 162.8, 232.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 118.8, 174 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 118.8, 174 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 5.3, -112.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 5.3, -112.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 93, -204.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 93, -204.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 105.3, -157.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 105.3, -157.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 93.9, -206.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 93.9, -206.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 94.3, -247.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 94.3, -247.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 94.7, -208.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 94.7, -208.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 79.2, -177.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 79.2, -177.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 157.6, -281 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 157.6, -281 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 186.2, -222.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 186.2, -222.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 287.6, -302.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 287.6, -302.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 438.7, -415.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 438.7, -415.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 1212.6, -547.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 1212.6, -547.2 , 0 );

setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 7.68, 7.68 );

setRotateKey( spep_2 + 216 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 21.2 );

-- 敵の動き_3 --
--真ん中から飛んでくる場合
spep_N = spep_2 + 286 - OFFSET_X

setDisp( spep_N + 0, 1, 1 );
setDisp( spep_2 + 424, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );

setMoveKey( spep_N + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_N -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_N -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 424, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_N -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_N -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_N -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_N -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_N -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_N -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 424, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -122.8 - 232 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N -3 + 6, 1, -1 );
setRotateKey( spep_N -3 + 8, 1, 120.7 );
setRotateKey( spep_N -3 + 10, 1, 242.5 );
setRotateKey( spep_N -3 + 12, 1, 364.3 );
setRotateKey( spep_N -3 + 14, 1, 486 );
setRotateKey( spep_N -3 + 16, 1, 607.8 );
setRotateKey( spep_N -3 + 18, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
setRotateKey( spep_2 + 424, 1, 729.5 );

-- ** 音 ** --
--キック
SE010 = playSeVer2( spep_2 + 106, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 116, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 116, 1110, "", 0, 0, 0, -1);

--頭突き
SE013 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 144, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE014, 71 );
SE015 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE015, 63 );

--瞬間移動
SE016 = playSeVer2( spep_2 + 190, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_2 + 212, 1116, "",spep_2 + 250, 0, 16, -1);

--殴り飛ばす
SE018 = playSeVer2( spep_2 + 244, 1187, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_2 + 285, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_2 + 299, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_2 + 299, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 294); -- ダメージ表示フレーム
endPhase( spep_2 + 424 - 2); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン(92F)
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフカットイン ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 92, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 92, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 92, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 92, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 92 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 92;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0);
setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0);
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -192 );
setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0);
setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0);
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, housha, 90, 20 );
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, housha, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, housha, 0 );
setEffRotateKey( spep_1 + 90, housha, 0 );
setEffAlphaKey( spep_1 + 0, housha, 255 );
setEffAlphaKey( spep_1 + 90, housha, 255 );

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-------------------------------------------------
-- 突進からフィニッシュまで(424F)
-------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進からフィニッシュまで(手前) ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 424, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + 424, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + 424, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + 424, finish_f, 255);
  
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- 突進からフィニッシュまで(奥) ef_002b
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 424, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + 424, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + 424, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + 424, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 424 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--双子飛んで生きて回転
SE004 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 46, 0, 16, -1);
SE005 = playSeVer2( spep_2 + 22, 1151, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 24, 1004, "", 0, 0, 0, -1);

--画面前加速
SE007 = playSeVer2( spep_2 + 50, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 50, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE008, 89 );

--瞬間移動
SE009 = playSeVer2( spep_2 + 72, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_2 + 88; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
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

-- ** 敵キャラクター ** --
OFFSET_X = -1
-- 敵の動き_1 --
setDisp(spep_2 + 102 + OFFSET_X,1,1)
setDisp(spep_2 + 188 + OFFSET_X,1,0)

changeAnime( spep_2 + 102 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0, -19.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0, -19.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 0.1, -19.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0.1, -19.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 0, -18.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 0, -18.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 0.1, -17.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 0.1, -17.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 0, -17.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 0, -17.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 0.1, -16.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0.1, -16.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0, -15.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 0, -15.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0, -15.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0, -15.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -86.9, -55.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -86.9, -55.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -40.9, -11.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -40.9, -11.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -20.7, 20.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -20.7, 20.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -56.5, -31.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -56.5, -31.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -44.4, -7.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -44.4, -7.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -60.2, -11.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -60.2, -11.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -40.1, -23.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -40.1, -23.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -71.9, 16.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -71.9, 16.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -39.8, -23.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -39.8, -23.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -59.6, -11.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -59.6, -11.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -39.5, 4.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -39.5, 4.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -49.8, -16.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -49.8, -16.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -58.2, -20.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -58.2, -20.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -64.6, -23.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -64.6, -23.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -69.1, -25.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -69.1, -25.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -71.6, -26.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -71.6, -26.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -72.3, -26.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -72.3, -26.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -14.5, -9.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -14.5, -9.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 47.6, -54.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 47.6, -54.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -8.4, -14.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -8.4, -14.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -24.3, 25.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -24.3, 25.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -16.3, -30.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -16.3, -30.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -4.3, -6.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -4.3, -6.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -18.6, -15.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -18.6, -15.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 7.1, -44.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 7.1, -44.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -7.2, 10.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -7.2, 10.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 18.4, -6.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 18.4, -6.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 100, -146.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 100, -146.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 204.7, -221.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 204.7, -221.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 288.8, -303.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 288.8, -303.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 360.5, -374 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 360.5, -374 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 419.9, -432.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 419.9, -432.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 467.1, -478.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 467.1, -478.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 502.3, -513 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 502.3, -513 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 525.6, -535.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 525.6, -535.8 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.62, 1.62 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 95.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 95.5 );

-- 敵の動き_2 --
setDisp(spep_2 + 216 + OFFSET_X,1,1)
setDisp(spep_2 + 270 + OFFSET_X,1,0)

changeAnime( spep_2 + 152 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 246 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 216 + OFFSET_X, 1, -508.5, 690.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -508.5, 690.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -495.9, 673.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -495.9, 673.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -481.1, 653.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -481.1, 653.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -464, 631.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -464, 631.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -444.6, 605.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -444.6, 605.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -423, 577 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -423, 577 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -399, 545.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -399, 545.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -372.6, 510.3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -372.6, 510.3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -343.8, 472.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -343.8, 472.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -312.6, 430.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -312.6, 430.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -279, 386.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -279, 386.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -242.8, 338.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -242.8, 338.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -204, 286.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -204, 286.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -162.8, 232.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -162.8, 232.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -118.8, 174 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -118.8, 174 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -5.3, -112.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -5.3, -112.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -93, -204.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -93, -204.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -105.3, -157.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -105.3, -157.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -93.9, -206.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -93.9, -206.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -94.3, -247.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -94.3, -247.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -94.7, -208.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -94.7, -208.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -79.2, -177.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -79.2, -177.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -157.6, -281 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -157.6, -281 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -186.2, -222.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -186.2, -222.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -287.6, -302.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -287.6, -302.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -438.7, -415.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -438.7, -415.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1212.6, -547.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -1212.6, -547.2 , 0 );

setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 7.68, 7.68 );

setRotateKey( spep_2 + 216 + OFFSET_X, 1, 103.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 103.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -21.2 );

-- 敵の動き_3 --
--真ん中から飛んでくる場合

spep_N = spep_2 + 286 - OFFSET_X

setDisp( spep_N + 0, 1, 1 );
setDisp( spep_2 + 424, 1, 0 );
 
changeAnime( spep_N + 0, 1, 7 );

setMoveKey( spep_N + 0, 1, 8.2 - 30, -19.3 + 30, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N -3 + 6, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N -3 + 8, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N -3 + 10, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N -3 + 12, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N -3 + 14, 1, 28.8, -46 , 0 );
setMoveKey( spep_N -3 + 16, 1, 32.3, -52 , 0 );
setMoveKey( spep_N -3 + 18, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 20, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 22, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 24, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 26, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 28, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 30, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N -3 + 32, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N -3 + 34, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_2 + 424, 1, 37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_N -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_N -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_N -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_N -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_N -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_N -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_N -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_N -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 424, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, 122.8 + 232 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N -3 + 6, 1, 1 );
setRotateKey( spep_N -3 + 8, 1, -120.7 );
setRotateKey( spep_N -3 + 10, 1, -242.5 );
setRotateKey( spep_N -3 + 12, 1, -364.3 );
setRotateKey( spep_N -3 + 14, 1, -486 );
setRotateKey( spep_N -3 + 16, 1, -607.8 );
setRotateKey( spep_N -3 + 18, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
setRotateKey( spep_2 + 424, 1, -729.5 );

-- ** 音 ** --
--キック
SE010 = playSeVer2( spep_2 + 106, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 116, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 116, 1110, "", 0, 0, 0, -1);

--頭突き
SE013 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 144, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE014, 71 );
SE015 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE015, 63 );

--瞬間移動
SE016 = playSeVer2( spep_2 + 190, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_2 + 212, 1116, "",spep_2 + 250, 0, 16, -1);

--殴り飛ばす
SE018 = playSeVer2( spep_2 + 244, 1187, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_2 + 285, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_2 + 299, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_2 + 299, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 294); -- ダメージ表示フレーム
endPhase( spep_2 + 424 - 2); -- 終了フレーム
end
