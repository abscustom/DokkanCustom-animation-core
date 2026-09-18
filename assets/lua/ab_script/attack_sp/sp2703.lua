-- 1028720: LR_ギニュー(特戦隊)_超必殺技_スペシャルファイティングアサルト
-- sp_effect_a1_00434
-- sp2703

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 敵味方共通
SP_002 = 162843;  -- グルド攻撃からフィニッシュ：前 ef_002


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場 ef_001
------------------------------------------------------
MAX_FRAME_0 = 82;

setupMovie(spep_0 + 0, SP_002, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 59 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 82

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
--setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94-2;

------------------------------------------------------
-- グルド攻撃からフィニッシュ：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 1038;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- グルド攻撃からフィニッシュ：前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, 177.9, 411.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 176.9, 411.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 176.9, 411.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 175.8, 411.9 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 175.8, 411.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 174.8, 411.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 174.8, 411.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 173.8, 411.9 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 173.8, 411.9 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 172.7, 411.9 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 172.7, 411.9 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 171.7, 411.9 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 171.7, 411.9 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 170.7, 411.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 170.7, 411.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 169.6, 411.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 169.6, 411.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 168.6, 411.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 168.6, 411.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 167.6, 411.9 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 167.6, 411.9 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 166.5, 411.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 166.5, 411.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 165.5, 411.9 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 165.5, 411.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 164.5, 411.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 164.5, 411.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 163.4, 411.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 163.4, 411.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 162.4, 411.9 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 162.4, 411.9 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 161.3, 411.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 161.3, 411.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 160.3, 411.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 160.3, 411.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 159.3, 411.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 159.3, 411.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 158.2, 411.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 158.2, 411.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 157.2, 411.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 157.2, 411.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 156.2, 411.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 156.2, 411.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 155.1, 411.9 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 155.1, 411.9 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 154.1, 411.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 154.1, 411.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 153.1, 411.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 153.1, 411.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 152, 411.9 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 152, 411.9 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 151, 411.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 151, 411.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );

-- 敵の動き2
ad_tmp = -40;

setDisp( spep_2 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 136 + OFFSET_X, 1, 103.8, 405.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 103.8, 405.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 98.1, 411.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 98.1, 411.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 100.5, 408.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 100.5, 408.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 103, 404.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 103, 404.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 100.5, 408.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 100.5, 408.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 98.1, 411.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 98.1, 411.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 88.1, 421.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 88.1, 421.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 78.1, 431.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 78.1, 431.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 98.1, 425.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 98.1, 425.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 116.8, 416.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 116.8, 416.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 98.1, 401.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 98.1, 401.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 76.8, 380.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 76.8, 380.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 77.1, 360.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 77.1, 360.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 74.9, 334 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 74.9, 334 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 57.2, 301.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 57.2, 301.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 37, 263.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 37, 263.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 18.2, 217.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 18.2, 217.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -2.9, 165.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -2.9, 165.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, ad_tmp + -169.9, ad_tmp + -118 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, ad_tmp + -169.9, ad_tmp + -118 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, ad_tmp + -59.4, ad_tmp + -314.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, ad_tmp + -59.4, ad_tmp + -314.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, ad_tmp + -177.6, ad_tmp + -160.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, ad_tmp + -177.6, ad_tmp + -160.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, ad_tmp + -271.8, ad_tmp + -115.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, ad_tmp + -271.8, ad_tmp + -115.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, ad_tmp + -227.2, ad_tmp + -180.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, ad_tmp + -227.2, ad_tmp + -180.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, ad_tmp + -182.5, ad_tmp + -245.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, ad_tmp + -182.5, ad_tmp + -245.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, ad_tmp + -207.2, ad_tmp + -200.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, ad_tmp + -207.2, ad_tmp + -200.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, ad_tmp + -231.8, ad_tmp + -155.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, ad_tmp + -231.8, ad_tmp + -155.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, ad_tmp + -211.8, ad_tmp + -185.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, ad_tmp + -211.8, ad_tmp + -185.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, ad_tmp + -191.8, ad_tmp + -215.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, ad_tmp + -191.8, ad_tmp + -215.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, ad_tmp + -201.8, ad_tmp + -205.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, ad_tmp + -201.8, ad_tmp + -205.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, ad_tmp + -211.8, ad_tmp + -195.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, ad_tmp + -211.8, ad_tmp + -195.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -63, 53.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -63, 53.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -45.7, -32.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -45.7, -32.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -32.2, -102.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -32.2, -102.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -21.7, -159.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -21.7, -159.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -13.7, -205.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -13.7, -205.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -7.5, -241.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -7.5, -241.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -2.9, -270 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -2.9, -270 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 0.6, -291.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 0.6, -291.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 3.1, -307.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 3.1, -307.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 4.9, -318.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 4.9, -318.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 6.1, -326.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 6.1, -326.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 6.8, -331.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 6.8, -331.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 7.3, -334.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 7.3, -334.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 7.6, -336.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 7.6, -336.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 7.7, -337 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 7.7, -337 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 7.7, -337.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 7.7, -337.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 7.7, -337.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 7.7, -337.4 , 0 );

setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 136 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -90 );

-- 敵の動き3
setDisp( spep_2 + 822 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 866 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 822 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 822 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, 216.2, -569.7 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, 216.2, -569.7 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, 212.2, -568.7 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 212.2, -568.7 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 216.2, -568.7 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 216.2, -568.7 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 212.2, -569.7 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 212.2, -569.7 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 218.2, -571.7 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 218.2, -571.7 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 210.2, -568.7 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 210.2, -568.7 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 218.2, -568.7 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 218.2, -568.7 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 210.2, -571.7 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 210.2, -571.7 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 224.2, -577.7 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 224.2, -577.7 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 204.2, -567.7 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 204.2, -567.7 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 224.2, -567.7 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 224.2, -567.7 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 204.2, -577.7 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 204.2, -577.7 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 214.2, -567.7 , 0 );

setScaleKey( spep_2 + 822 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 866 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 822 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 866 + OFFSET_X, 1, 50 );

-- ** 音 ** --
--グルド入り
SE005 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE006 = playSeVer2( spep_2 + 0, 1269, "",spep_2 + 184, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 0, SE006, 25 );

--画面遷移
SE007 = playSeVer2( spep_2 + 54, 1232, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    
SP_dodge = spep_2 + 70;  -- エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
    
pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end
    
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--集中線
SE008 = playSeVer2( spep_2 + 74, 1264, "",spep_2 + 156, 0, 44, 0.58);
SE009 = playSeVer2( spep_2 + 74, 1237, "", 0, 0, 0, 0.58);

--雷
SE010 = playSeVer2( spep_2 + 92, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE010, 145 );
SE011 = playSeVer2( spep_2 + 96, 1217, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE011, 68 );
SE012 = playSeVer2( spep_2 + 96, 1043, "", 0, 0, 0, -1);

--敵拘束
SE013 = playSeVer2( spep_2 + 122, 1240, "",spep_2 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 122, SE013, 141 );
SE014 = playSeVer2( spep_2 + 130, 1178, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 134, 1116, "",spep_2 + 192, 0, 26, -1);
SE016 = playSeVer2( spep_2 + 134, 1117, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 180, 1109, "", 0, 0, 0, -1);

--リクーム膝蹴り
SE018 = playSeVer2( spep_2 + 204, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE018, 129 );
SE019 = playSeVer2( spep_2 + 210, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 210, 1190, "", 0, 0, 0, -1);

--敵落ちていく
SE021 = playSeVer2( spep_2 + 236, 1121, "",spep_2 + 300, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 236, SE021, 84 );

--地面激突
SE022 = playSeVer2( spep_2 + 274, 1159, "", 0, 0, 0, -1);

--ジースとバータおりてくる
SE023 = playSeVer2( spep_2 + 290, 63, "",spep_2 + 348, 0, 20, -1);

--エネルギー溜める
SE024 = playSeVer2( spep_2 + 374, 1194, "",spep_2 + 516, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 374, SE024, 133 );
SE025 = playSeVer2( spep_2 + 374, 1175, "",spep_2 + 516, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 374, SE025, 58 );
SE026 = playSeVer2( spep_2 + 400, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 400, SE026, 58 );
SE027 = playSeVer2( spep_2 + 402, 1264, "",spep_2 + 516, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 402, SE027, 58 );
SE028 = playSeVer2( spep_2 + 402, 1161, "",spep_2 + 516, 0, 40, -1);

--二人合体する
SE029 = playSeVer2( spep_2 + 466, 1025, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 466, 1162, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 472, 1200, "",spep_2 + 582, 0, 20, -1);
SE032 = playSeVer2( spep_2 + 472, 1227, "",spep_2 + 568, 0, 16, -1);

--連続気弾
SE033 = playSeVer2( spep_2 + 528, 1463, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 528, SE033, 120 );
SE036 = playSeVer2( spep_2 + 528, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE036, 81 );

--気弾ヒット
SE041 = playSeVer2( spep_2 + 548, 1023, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 570, 1024, "",spep_2 + 674, 0, 36, -1);

--足踏み出す
SE061 = playSeVer2( spep_2 + 640, 1008, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 640, SE061, 71 );
SE062 = playSeVer2( spep_2 + 642, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 642, SE062, 216 );

--ギニュー気弾溜め
SE063 = playSeVer2( spep_2 + 672, 1161, "",spep_2 + 798, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 672, SE063, 66 );
SE064 = playSeVer2( spep_2 + 684, 1037, "",spep_2 + 800, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 684, SE064, 63 );
SE065 = playSeVer2( spep_2 + 684, 1200, "",spep_2 + 798, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 684, SE065, 146 );
SE066 = playSeVer2( spep_2 + 684, 1122, "",spep_2 + 788, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 684, SE066, 56 );

--顔アップ
SE067 = playSeVer2( spep_2 + 734, 1026, "", 0, 0, 0, -1);

--気弾飛んでいく
SE068 = playSeVer2( spep_2 + 808, 1215, "",spep_2 + 918, 26, 40, -1);
setStartTimeMs( SE068,  767 );

--気弾発射
SE069 = playSeVer2( spep_2 + 782, 1133, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 782, 1146, "", 0, 0, 0, -1);

--爆発
SE071 = playSeVer2( spep_2 + 864, 1159, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 872, 1067, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 880, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 880, SE073, 75 );

--余韻
SE074 = playSeVer2( spep_2 + 928, 1232, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 930 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 1038

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 登場 ef_001
------------------------------------------------------
MAX_FRAME_0 = 82;

setupMovie(spep_0 + 0, SP_002, 0, 1);

-- ** エフェクト等 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 59 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 82

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
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
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94-2;

------------------------------------------------------
-- グルド攻撃からフィニッシュ：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 1038;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- グルド攻撃からフィニッシュ：前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 54 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 17 );

setMoveKey( spep_2 + 0, 1, -177.9, 411.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -176.9, 411.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -176.9, 411.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -175.8, 411.9 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -175.8, 411.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -174.8, 411.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -174.8, 411.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -173.8, 411.9 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -173.8, 411.9 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -172.7, 411.9 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -172.7, 411.9 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -171.7, 411.9 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -171.7, 411.9 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -170.7, 411.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -170.7, 411.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -169.6, 411.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -169.6, 411.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -168.6, 411.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -168.6, 411.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -167.6, 411.9 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -167.6, 411.9 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -166.5, 411.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -166.5, 411.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -165.5, 411.9 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -165.5, 411.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -164.5, 411.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -164.5, 411.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -163.4, 411.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -163.4, 411.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -162.4, 411.9 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -162.4, 411.9 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -161.3, 411.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -161.3, 411.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -160.3, 411.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -160.3, 411.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -159.3, 411.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -159.3, 411.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -158.2, 411.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -158.2, 411.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -157.2, 411.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -157.2, 411.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -156.2, 411.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -156.2, 411.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -155.1, 411.9 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -155.1, 411.9 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -154.1, 411.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -154.1, 411.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -153.1, 411.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -153.1, 411.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -152, 411.9 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -152, 411.9 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -151, 411.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -151, 411.9 , 0 );

setScaleKey( spep_2 + 0, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 0 );

-- 敵の動き2
ad_tmpX = 30;
ad_tmpY = -30;

setDisp( spep_2 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 136 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 136 + OFFSET_X, 1, -103.8, 405.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -103.8, 405.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -98.1, 411.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -98.1, 411.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -100.5, 408.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -100.5, 408.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -103, 404.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -103, 404.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -100.5, 408.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -100.5, 408.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -98.1, 411.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -98.1, 411.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -88.1, 421.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -88.1, 421.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -78.1, 431.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -78.1, 431.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -98.1, 425.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -98.1, 425.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -116.8, 416.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -116.8, 416.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -98.1, 401.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -98.1, 401.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -76.8, 380.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -76.8, 380.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -77.1, 360.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -77.1, 360.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -74.9, 334 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -74.9, 334 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -57.2, 301.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -57.2, 301.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -37, 263.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -37, 263.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -18.2, 217.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -18.2, 217.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 2.9, 165.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 2.9, 165.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, ad_tmpX + 169.9, ad_tmpY + -118 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, ad_tmpX + 169.9, ad_tmpY + -118 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, ad_tmpX + 59.4, ad_tmpY + -314.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, ad_tmpX + 59.4, ad_tmpY + -314.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, ad_tmpX + 177.6, ad_tmpY + -160.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, ad_tmpX + 177.6, ad_tmpY + -160.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, ad_tmpX + 271.8, ad_tmpY + -115.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, ad_tmpX + 271.8, ad_tmpY + -115.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, ad_tmpX + 227.2, ad_tmpY + -180.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, ad_tmpX + 227.2, ad_tmpY + -180.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, ad_tmpX + 182.5, ad_tmpY + -245.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, ad_tmpX + 182.5, ad_tmpY + -245.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, ad_tmpX + 207.2, ad_tmpY + -200.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, ad_tmpX + 207.2, ad_tmpY + -200.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, ad_tmpX + 231.8, ad_tmpY + -155.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, ad_tmpX + 231.8, ad_tmpY + -155.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, ad_tmpX + 211.8, ad_tmpY + -185.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, ad_tmpX + 211.8, ad_tmpY + -185.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, ad_tmpX + 191.8, ad_tmpY + -215.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, ad_tmpX + 191.8, ad_tmpY + -215.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, ad_tmpX + 201.8, ad_tmpY + -205.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, ad_tmpX + 201.8, ad_tmpY + -205.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, ad_tmpX + 211.8, ad_tmpY + -195.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, ad_tmpX + 211.8, ad_tmpY + -195.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 63, 53.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 63, 53.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 45.7, -32.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 45.7, -32.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 32.2, -102.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 32.2, -102.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 21.7, -159.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 21.7, -159.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 13.7, -205.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 13.7, -205.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 7.5, -241.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 7.5, -241.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 2.9, -270 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 2.9, -270 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -0.6, -291.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -0.6, -291.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -3.1, -307.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -3.1, -307.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -4.9, -318.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -4.9, -318.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -6.1, -326.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -6.1, -326.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -6.8, -331.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -6.8, -331.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -7.3, -334.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -7.3, -334.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -7.6, -336.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -7.6, -336.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -7.7, -337 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -7.7, -337 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -7.7, -337.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -7.7, -337.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -7.7, -337.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -7.7, -337.4 , 0 );

setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 136 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -100 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -100 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 90 );

-- 敵の動き3
setDisp( spep_2 + 822 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 866 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 822 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 822 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, 216.2, -569.7 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, 216.2, -569.7 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, 212.2, -568.7 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 212.2, -568.7 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 216.2, -568.7 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 216.2, -568.7 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 212.2, -569.7 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 212.2, -569.7 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 218.2, -571.7 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 218.2, -571.7 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 210.2, -568.7 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 210.2, -568.7 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 218.2, -568.7 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 218.2, -568.7 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 210.2, -571.7 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 210.2, -571.7 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 224.2, -577.7 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 224.2, -577.7 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 204.2, -567.7 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 204.2, -567.7 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 224.2, -567.7 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 224.2, -567.7 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 204.2, -577.7 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 204.2, -577.7 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 214.2, -567.7 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 214.2, -567.7 , 0 );

setScaleKey( spep_2 + 822 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 866 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 822 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 866 + OFFSET_X, 1, 50 );

-- ** 音 ** --
--グルド入り
SE005 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE006 = playSeVer2( spep_2 + 0, 1269, "",spep_2 + 184, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 0, SE006, 25 );

--画面遷移
SE007 = playSeVer2( spep_2 + 54, 1232, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    
SP_dodge = spep_2 + 70;  -- エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
    
pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end
    
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--集中線
SE008 = playSeVer2( spep_2 + 74, 1264, "",spep_2 + 156, 0, 44, 0.58);
SE009 = playSeVer2( spep_2 + 74, 1237, "", 0, 0, 0, 0.58);

--雷
SE010 = playSeVer2( spep_2 + 92, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE010, 145 );
SE011 = playSeVer2( spep_2 + 96, 1217, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE011, 68 );
SE012 = playSeVer2( spep_2 + 96, 1043, "", 0, 0, 0, -1);

--敵拘束
SE013 = playSeVer2( spep_2 + 122, 1240, "",spep_2 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 122, SE013, 141 );
SE014 = playSeVer2( spep_2 + 130, 1178, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 134, 1116, "",spep_2 + 192, 0, 26, -1);
SE016 = playSeVer2( spep_2 + 134, 1117, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 180, 1109, "", 0, 0, 0, -1);

--リクーム膝蹴り
SE018 = playSeVer2( spep_2 + 204, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE018, 129 );
SE019 = playSeVer2( spep_2 + 210, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 210, 1190, "", 0, 0, 0, -1);

--敵落ちていく
SE021 = playSeVer2( spep_2 + 236, 1121, "",spep_2 + 300, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 236, SE021, 84 );

--地面激突
SE022 = playSeVer2( spep_2 + 274, 1159, "", 0, 0, 0, -1);

--ジースとバータおりてくる
SE023 = playSeVer2( spep_2 + 290, 63, "",spep_2 + 348, 0, 20, -1);

--エネルギー溜める
SE024 = playSeVer2( spep_2 + 374, 1194, "",spep_2 + 516, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 374, SE024, 133 );
SE025 = playSeVer2( spep_2 + 374, 1175, "",spep_2 + 516, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 374, SE025, 58 );
SE026 = playSeVer2( spep_2 + 400, 1313, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 400, SE026, 58 );
SE027 = playSeVer2( spep_2 + 402, 1264, "",spep_2 + 516, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 402, SE027, 58 );
SE028 = playSeVer2( spep_2 + 402, 1161, "",spep_2 + 516, 0, 40, -1);

--二人合体する
SE029 = playSeVer2( spep_2 + 466, 1025, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 466, 1162, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 472, 1200, "",spep_2 + 582, 0, 20, -1);
SE032 = playSeVer2( spep_2 + 472, 1227, "",spep_2 + 568, 0, 16, -1);

--連続気弾
SE033 = playSeVer2( spep_2 + 528, 1463, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 528, SE033, 120 );
SE036 = playSeVer2( spep_2 + 528, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE036, 81 );

--気弾ヒット
SE041 = playSeVer2( spep_2 + 548, 1023, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 570, 1024, "",spep_2 + 674, 0, 36, -1);

--足踏み出す
SE061 = playSeVer2( spep_2 + 640, 1008, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 640, SE061, 71 );
SE062 = playSeVer2( spep_2 + 642, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 642, SE062, 216 );

--ギニュー気弾溜め
SE063 = playSeVer2( spep_2 + 672, 1161, "",spep_2 + 798, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 672, SE063, 66 );
SE064 = playSeVer2( spep_2 + 684, 1037, "",spep_2 + 800, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 684, SE064, 63 );
SE065 = playSeVer2( spep_2 + 684, 1200, "",spep_2 + 798, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 684, SE065, 146 );
SE066 = playSeVer2( spep_2 + 684, 1122, "",spep_2 + 788, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 684, SE066, 56 );

--顔アップ
SE067 = playSeVer2( spep_2 + 734, 1026, "", 0, 0, 0, -1);

--気弾飛んでいく
SE068 = playSeVer2( spep_2 + 808, 1215, "",spep_2 + 918, 26, 40, -1);
setStartTimeMs( SE068,  767 );

--気弾発射
SE069 = playSeVer2( spep_2 + 782, 1133, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 782, 1146, "", 0, 0, 0, -1);

--爆発
SE071 = playSeVer2( spep_2 + 864, 1159, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 872, 1067, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_2 + 880, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 880, SE073, 75 );

--余韻
SE074 = playSeVer2( spep_2 + 928, 1232, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 930 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 1038

end
