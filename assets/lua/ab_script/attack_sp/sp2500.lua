--4025590:オレンジピッコロ（巨大化）_超必殺技：ナメック流爆烈連撃
--sp_effect_b1_00235
--sp2500

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
SP_01 = 161271; --開始からピッコロの連続キック攻撃 ef_001
SP_02 = 161273; --開始からピッコロの連続キック攻撃 ef_002
SP_03 = 161275; --ピッコロから地面に攻撃 ef_003
SP_04 = 161277; --ピッコロから地面に攻撃 ef_004
SP_05 = 161279; --ピッコロが最後のパンチ〜フィニッシュ ef_005
SP_06 = 161281; --ピッコロが最後のパンチ〜フィニッシュ ef_006

--敵側
SP_01r = 161272; --開始からピッコロの連続キック攻撃  ef_001_r
SP_02r = 161274; --開始からピッコロの連続キック攻撃  ef_002_r
SP_03r = 161276; --ピッコロから地面に攻撃   ef_003_r
SP_04r = 161278; --ピッコロから地面に攻撃   ef_004_r
SP_05r = 161280; --ピッコロが最後のパンチ〜フィニッシュ    ef_005_r
SP_06r = 161282; --ピッコロが最後のパンチ〜フィニッシュ    ef_006_r

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
-- 開始からピッコロの連続キック攻撃 (376f)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 376 -2, 0x100, -1, 0, 0, 0 );  --開始からピッコロの連続キック攻撃 手前
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 376 -2, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 376 -2, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 376 -2, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 376 -2 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 376 -1 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 376 -2, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 376 -2, 0x80, -1, 0, 0, 0 );  --開始からピッコロの連続キック攻撃 奥
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 376 -2, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 376 -2, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 376 -2, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 376 -2 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 376 -1 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 376 -2, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--歩き出す１
SE001 = playSeVer2( spep_0 + 0, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 0, SE001, 24, 644 );
SE002 = playSeVer2( spep_0 + 0, 1182, "",spep_0 + 32, 0, 10, -1);
SE003 = playSeVer2( spep_0 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 76 );
setBandpassFilter( spep_0 + 0, SE003, 24, 644 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--歩き出す２
SE005 = playSeVer2( spep_0 + 38, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 38, SE005, 24, 644 );
SE006 = playSeVer2( spep_0 + 38, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 38, 1153, "",spep_0 + 70, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 74 );
setBandpassFilter( spep_0 + 38, SE007, 24, 644 );

--歩き出す３
SE008 = playSeVer2( spep_0 + 68, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 68, SE008, 24, 644 );
SE009 = playSeVer2( spep_0 + 68, 1182, "",spep_0 + 102, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 68, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE010, 71 );
setBandpassFilter( spep_0 + 68, SE010, 24, 644 );

--歩き出す４
SE011 = playSeVer2( spep_0 + 86, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 86, SE011, 24, 644 );
SE012 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 86, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE013, 75 );
setBandpassFilter( spep_0 + 86, SE013, 24, 644 );

--歩き出す５
SE014 = playSeVer2( spep_0 + 104, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 104, SE014, 24, 644 );
SE015 = playSeVer2( spep_0 + 104, 1182, "",spep_0 + 136, 0, 10, -1);
SE016 = playSeVer2( spep_0 + 104, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE016, 78 );
setBandpassFilter( spep_0 + 104, SE016, 24, 644 );

--足振り上げる
SE017 = playSeVer2( spep_0 + 118, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE017,  83 );
SE018 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 156, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 376, 0, 0, 0, 0, 255 );  --黒 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 144 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
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
--敵の動き
a1 = -3;
setDisp( spep_0 + 146 +a1, 1, 1 );
setDisp( spep_0 + 376 +a1 +1, 1, 0 );
changeAnime( spep_0 + 146 +a1, 1, 117 );
changeAnime( spep_0 + 164 +a1, 1, 106 );
changeAnime( spep_0 + 238 +a1, 1, 108 );
changeAnime( spep_0 + 322 +a1, 1, 106 );

setMoveKey( spep_0 + 146 +a1, 1, 866.4, -38 , 0 );
setMoveKey( spep_0 + 148 +a1, 1, 837.6, -23.3 , 0 );
setMoveKey( spep_0 + 150 +a1, 1, 792.5, -5.6 , 0 );
setMoveKey( spep_0 + 152 +a1, 1, 728.6, 15.2 , 0 );
setMoveKey( spep_0 + 154 +a1, 1, 642.6, 39.6 , 0 );
setMoveKey( spep_0 + 156 +a1, 1, 530.9, 67.7 , 0 );
setMoveKey( spep_0 + 158 +a1, 1, 389.2, 99.9 , 0 );
setMoveKey( spep_0 + 160 +a1, 1, 212.7, 136.6 , 0 );
setMoveKey( spep_0 + 162 +a1, 1, 136.9, 166.6 , 0 );
setMoveKey( spep_0 + 163 +a1, 1, 136.9, 166.6 , 0 );
setMoveKey( spep_0 + 164 +a1, 1, 28.3, -233.1 , 0 ); --蹴られる
setMoveKey( spep_0 + 166 +a1, 1, 146.4, -34 , 0 );
setMoveKey( spep_0 + 168 +a1, 1, 94.5, -76 , 0 );
setMoveKey( spep_0 + 170 +a1, 1, 138.3, -24 , 0 );
setMoveKey( spep_0 + 172 +a1, 1, 121.9, -83.9 , 0 );
setMoveKey( spep_0 + 174 +a1, 1, 157.2, -37.9 , 0 );
setMoveKey( spep_0 + 176 +a1, 1, 112.2, -71.9 , 0 );
setMoveKey( spep_0 + 178 +a1, 1, 155, -27.9 , 0 );
setMoveKey( spep_0 + 180 +a1, 1, 129.5, -79.9 , 0 );
setMoveKey( spep_0 + 182 +a1, 1, 151.7, -47.9 , 0 );
setMoveKey( spep_0 + 184 +a1, 1, 143.7, -57.8 , 0 );
setMoveKey( spep_0 + 186 +a1, 1, 153.4, -49.8 , 0 );
setMoveKey( spep_0 + 188 +a1, 1, 146.9, -55.8 , 0 );
setMoveKey( spep_0 + 190 +a1, 1, 148.7, -55.5 , 0 );
setMoveKey( spep_0 + 192 +a1, 1, 150.3, -55.1 , 0 );
setMoveKey( spep_0 + 194 +a1, 1, 151.6, -54.8 , 0 );
setMoveKey( spep_0 + 196 +a1, 1, 152.7, -54.4 , 0 );
setMoveKey( spep_0 + 198 +a1, 1, 153.5, -54.1 , 0 );
setMoveKey( spep_0 + 199 +a1, 1, 153.5, -54.1 , 0 );
setMoveKey( spep_0 + 200 +a1, 1, 174.9, 48.1 , 0 ); --向き変わる
setMoveKey( spep_0 + 202 +a1, 1, 177.1, 52.2 , 0 );
setMoveKey( spep_0 + 204 +a1, 1, 178.8, 55.4 , 0 );
setMoveKey( spep_0 + 206 +a1, 1, 180, 57.8 , 0 );
setMoveKey( spep_0 + 208 +a1, 1, 180.8, 59.5 , 0 );
setMoveKey( spep_0 + 210 +a1, 1, 181.1, 60.6 , 0 );
setMoveKey( spep_0 + 212 +a1, 1, 181, 61.3 , 0 );
setMoveKey( spep_0 + 214 +a1, 1, 180.4, 61.7 , 0 );
setMoveKey( spep_0 + 216 +a1, 1, 179.1, 61.8 , 0 );
setMoveKey( spep_0 + 218 +a1, 1, 177.3, 61.8 , 0 );
setMoveKey( spep_0 + 220 +a1, 1, 175.7, 60.1 , 0 );
setMoveKey( spep_0 + 222 +a1, 1, 175.4, 34.8 , 0 );
setMoveKey( spep_0 + 224 +a1, 1, 178, 52 , 0 );
setMoveKey( spep_0 + 226 +a1, 1, 171.5, 29.8 , 0 );
setMoveKey( spep_0 + 228 +a1, 1, 179.5, 18 , 0 );
setMoveKey( spep_0 + 230 +a1, 1, 181.9, -1.2 , 0 );
setMoveKey( spep_0 + 232 +a1, 1, 184.3, -24 , 0 );
setMoveKey( spep_0 + 234 +a1, 1, 186.6, -50.3 , 0 );
setMoveKey( spep_0 + 236 +a1, 1, 188.3, -80 , 0 );
setMoveKey( spep_0 + 237 +a1, 1, 188.3, -80 , 0 );
setMoveKey( spep_0 + 238 +a1, 1, 164.5, 58.1 , 0 ); --ドガッ
setMoveKey( spep_0 + 240 +a1, 1, 192.1, 78.1 , 0 );
setMoveKey( spep_0 + 242 +a1, 1, 137.8, 36.1 , 0 );
setMoveKey( spep_0 + 244 +a1, 1, 179.5, 88.1 , 0 );
setMoveKey( spep_0 + 246 +a1, 1, 161.1, 28.1 , 0 );
setMoveKey( spep_0 + 248 +a1, 1, 194.8, 74.1 , 0 );
setMoveKey( spep_0 + 250 +a1, 1, 148.5, 40.1 , 0 );
setMoveKey( spep_0 + 252 +a1, 1, 190.1, 84.1 , 0 );
setMoveKey( spep_0 + 254 +a1, 1, 163.8, 32.1 , 0 );
setMoveKey( spep_0 + 256 +a1, 1, 185.5, 64.1 , 0 );
setMoveKey( spep_0 + 258 +a1, 1, 177.1, 54.1 , 0 );
setMoveKey( spep_0 + 260 +a1, 1, 186.8, 62.1 , 0 );
setMoveKey( spep_0 + 262 +a1, 1, 180.5, 56.1 , 0 );
setMoveKey( spep_0 + 263 +a1, 1, 180.5, 56.1 , 0 );
setMoveKey( spep_0 + 264 +a1, 1, 164.7, -10.2 , 0 ); --向き変わる
setMoveKey( spep_0 + 266 +a1, 1, 166.3, 23.9 , 0 );
setMoveKey( spep_0 + 268 +a1, 1, 167.7, 47.7 , 0 );
setMoveKey( spep_0 + 270 +a1, 1, 168.8, 63.8 , 0 );
setMoveKey( spep_0 + 272 +a1, 1, 169.7, 74.2 , 0 );
setMoveKey( spep_0 + 274 +a1, 1, 170.5, 80.6 , 0 );
setMoveKey( spep_0 + 276 +a1, 1, 171.2, 84.4 , 0 );
setMoveKey( spep_0 + 278 +a1, 1, 171.2, 86.1 , 0 );
setMoveKey( spep_0 + 280 +a1, 1, 171.3, 67 , 0 );
setMoveKey( spep_0 + 282 +a1, 1, 173.3, 93.3 , 0 );
setMoveKey( spep_0 + 284 +a1, 1, 165.3, 83.3 , 0 );
setMoveKey( spep_0 + 286 +a1, 1, 171.3, 87.3 , 0 );
setMoveKey( spep_0 + 292 +a1, 1, 171.3, 87.3 , 0 );
setMoveKey( spep_0 + 294 +a1, 1, 171.3, 87.2 , 0 );
setMoveKey( spep_0 + 296 +a1, 1, 171.4, 87.1 , 0 );
setMoveKey( spep_0 + 298 +a1, 1, 171.4, 86.8 , 0 );
setMoveKey( spep_0 + 300 +a1, 1, 171.6, 86.4 , 0 );
setMoveKey( spep_0 + 302 +a1, 1, 171.7, 85.9 , 0 );
setMoveKey( spep_0 + 304 +a1, 1, 171.9, 85.2 , 0 );
setMoveKey( spep_0 + 306 +a1, 1, 172.2, 84.2 , 0 );
setMoveKey( spep_0 + 308 +a1, 1, 172.6, 83.1 , 0 );
setMoveKey( spep_0 + 310 +a1, 1, 173, 81.6 , 0 );
setMoveKey( spep_0 + 312 +a1, 1, 173.5, 79.9 , 0 );
setMoveKey( spep_0 + 314 +a1, 1, 174.1, 77.9 , 0 );
setMoveKey( spep_0 + 316 +a1, 1, 174.8, 75.6 , 0 );
setMoveKey( spep_0 + 318 +a1, 1, 175.6, 72.9 , 0 );
setMoveKey( spep_0 + 320 +a1, 1, 176.5, 69.8 , 0 );
setMoveKey( spep_0 + 321 +a1, 1, 176.5, 69.8 , 0 );
setMoveKey( spep_0 + 322 +a1, 1, 59, 83.8 , 0 ); --ドゴッ
setMoveKey( spep_0 + 324 +a1, 1, 86.5, 103.8 , 0 );
setMoveKey( spep_0 + 326 +a1, 1, 32.1, 61.8 , 0 );
setMoveKey( spep_0 + 328 +a1, 1, 73.6, 113.8 , 0 );
setMoveKey( spep_0 + 330 +a1, 1, 55.1, 53.8 , 0 );
setMoveKey( spep_0 + 332 +a1, 1, 88.7, 99.8 , 0 );
setMoveKey( spep_0 + 334 +a1, 1, 42.2, 65.8 , 0 );
setMoveKey( spep_0 + 336 +a1, 1, 83.8, 109.8 , 0 );
setMoveKey( spep_0 + 338 +a1, 1, 57.3, 57.8 , 0 );
setMoveKey( spep_0 + 340 +a1, 1, 78.9, 89.9 , 0 );
setMoveKey( spep_0 + 342 +a1, 1, 70.4, 79.9 , 0 );
setMoveKey( spep_0 + 344 +a1, 1, 79.9, 87.9 , 0 );
setMoveKey( spep_0 + 346 +a1, 1, 73.5, 81.9 , 0 );
setMoveKey( spep_0 + 348 +a1, 1, 75.6, 82.2 , 0 );
setMoveKey( spep_0 + 349 +a1, 1, 75.6, 82.2 , 0 );
setMoveKey( spep_0 + 350 +a1, 1, 193.7, 72.1 , 0 ); --向き変わる
setMoveKey( spep_0 + 352 +a1, 1, 207.2, 72.6 , 0 );
setMoveKey( spep_0 + 354 +a1, 1, 219.7, 73.1 , 0 );
setMoveKey( spep_0 + 356 +a1, 1, 231.2, 73.6 , 0 );
setMoveKey( spep_0 + 358 +a1, 1, 241.5, 74 , 0 );
setMoveKey( spep_0 + 360 +a1, 1, 250.9, 74.5 , 0 );
setMoveKey( spep_0 + 362 +a1, 1, 258.7, 74.6 , 0 );
setMoveKey( spep_0 + 364 +a1, 1, 265.4, 74.8 , 0 );
setMoveKey( spep_0 + 366 +a1, 1, 271.2, 74.9 , 0 );
setMoveKey( spep_0 + 368 +a1, 1, 275.8, 75 , 0 );
setMoveKey( spep_0 + 370 +a1, 1, 279.5, 75 , 0 );
setMoveKey( spep_0 + 372 +a1, 1, 282.1, 75.1 , 0 );
setMoveKey( spep_0 + 374 +a1, 1, 283.6, 75.1 , 0 );
setMoveKey( spep_0 + 376 +a1, 1, 284.1, 75.1 , 0 );
setMoveKey( spep_0 + 376 +a1 +1, 1, 284.1, 75.1 , 0 );

setScaleKey( spep_0 + 146 +a1, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 148 +a1, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 150 +a1, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 152 +a1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 154 +a1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 156 +a1, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 158 +a1, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 160 +a1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 162 +a1, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 163 +a1, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 164 +a1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 166 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 198 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 199 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 200 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 236 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 237 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 238 +a1, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 262 +a1, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 263 +a1, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 264 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 321 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 322 +a1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 348 +a1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 349 +a1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 350 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 376 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 376 +a1 +1, 1, 0.28, 0.28 );

setRotateKey( spep_0 + 146 +a1, 1, 0 );
setRotateKey( spep_0 + 163 +a1, 1, 0 );
setRotateKey( spep_0 + 164 +a1, 1, 0 );
setRotateKey( spep_0 + 166 +a1, 1, 0.7 );
setRotateKey( spep_0 + 168 +a1, 1, 1.3 );
setRotateKey( spep_0 + 170 +a1, 1, 1.9 );
setRotateKey( spep_0 + 172 +a1, 1, 2.5 );
setRotateKey( spep_0 + 174 +a1, 1, 3 );
setRotateKey( spep_0 + 176 +a1, 1, 3.5 );
setRotateKey( spep_0 + 178 +a1, 1, 3.9 );
setRotateKey( spep_0 + 180 +a1, 1, 4.3 );
setRotateKey( spep_0 + 182 +a1, 1, 4.7 );
setRotateKey( spep_0 + 184 +a1, 1, 5 );
setRotateKey( spep_0 + 186 +a1, 1, 5.2 );
setRotateKey( spep_0 + 188 +a1, 1, 5.5 );
setRotateKey( spep_0 + 190 +a1, 1, 5.6 );
setRotateKey( spep_0 + 192 +a1, 1, 5.8 );
setRotateKey( spep_0 + 194 +a1, 1, 5.9 );
setRotateKey( spep_0 + 196 +a1, 1, 6 );
setRotateKey( spep_0 + 198 +a1, 1, 6 );
setRotateKey( spep_0 + 199 +a1, 1, 6 );
setRotateKey( spep_0 + 200 +a1, 1, -59.7 );
setRotateKey( spep_0 + 202 +a1, 1, -58.8 );
setRotateKey( spep_0 + 204 +a1, 1, -58.2 );
setRotateKey( spep_0 + 206 +a1, 1, -57.6 );
setRotateKey( spep_0 + 208 +a1, 1, -57.3 );
setRotateKey( spep_0 + 210 +a1, 1, -57 );
setRotateKey( spep_0 + 212 +a1, 1, -56.9 );
setRotateKey( spep_0 + 214 +a1, 1, -56.8 );
setRotateKey( spep_0 + 218 +a1, 1, -56.8 );
setRotateKey( spep_0 + 220 +a1, 1, -56.4 );
setRotateKey( spep_0 + 222 +a1, 1, -55.1 );
setRotateKey( spep_0 + 224 +a1, 1, -53 );
setRotateKey( spep_0 + 226 +a1, 1, -50 );
setRotateKey( spep_0 + 228 +a1, 1, -46.2 );
setRotateKey( spep_0 + 230 +a1, 1, -41.6 );
setRotateKey( spep_0 + 232 +a1, 1, -36.1 );
setRotateKey( spep_0 + 234 +a1, 1, -29.8 );
setRotateKey( spep_0 + 236 +a1, 1, -22.6 );
setRotateKey( spep_0 + 237 +a1, 1, -22.6 );
setRotateKey( spep_0 + 238 +a1, 1, -37.7 );
setRotateKey( spep_0 + 264 +a1, 1, -37.7 );
setRotateKey( spep_0 + 266 +a1, 1, -24.3 );
setRotateKey( spep_0 + 268 +a1, 1, -14.9 );
setRotateKey( spep_0 + 270 +a1, 1, -8.7 );
setRotateKey( spep_0 + 272 +a1, 1, -4.6 );
setRotateKey( spep_0 + 274 +a1, 1, -2.2 );
setRotateKey( spep_0 + 276 +a1, 1, -0.8 );
setRotateKey( spep_0 + 278 +a1, 1, -0.1 );
setRotateKey( spep_0 + 280 +a1, 1, 0.2 );
setRotateKey( spep_0 + 282 +a1, 1, 0.3 );
setRotateKey( spep_0 + 284 +a1, 1, 0.4 );
setRotateKey( spep_0 + 296 +a1, 1, 0.4 );
setRotateKey( spep_0 + 298 +a1, 1, 0.5 );
setRotateKey( spep_0 + 300 +a1, 1, 0.6 );
setRotateKey( spep_0 + 302 +a1, 1, 0.7 );
setRotateKey( spep_0 + 304 +a1, 1, 0.9 );
setRotateKey( spep_0 + 306 +a1, 1, 1.1 );
setRotateKey( spep_0 + 308 +a1, 1, 1.3 );
setRotateKey( spep_0 + 310 +a1, 1, 1.6 );
setRotateKey( spep_0 + 312 +a1, 1, 2 );
setRotateKey( spep_0 + 314 +a1, 1, 2.5 );
setRotateKey( spep_0 + 316 +a1, 1, 3 );
setRotateKey( spep_0 + 318 +a1, 1, 3.6 );
setRotateKey( spep_0 + 320 +a1, 1, 4.3 );
setRotateKey( spep_0 + 321 +a1, 1, 4.3 );
setRotateKey( spep_0 + 322 +a1, 1, -54.7 );
setRotateKey( spep_0 + 350 +a1, 1, -54.7 );
setRotateKey( spep_0 + 352 +a1, 1, -46.2 );
setRotateKey( spep_0 + 354 +a1, 1, -38.5 );
setRotateKey( spep_0 + 356 +a1, 1, -31.4 );
setRotateKey( spep_0 + 358 +a1, 1, -25 );
setRotateKey( spep_0 + 360 +a1, 1, -19.2 );
setRotateKey( spep_0 + 362 +a1, 1, -14.1 );
setRotateKey( spep_0 + 364 +a1, 1, -9.8 );
setRotateKey( spep_0 + 366 +a1, 1, -6 );
setRotateKey( spep_0 + 368 +a1, 1, -3 );
setRotateKey( spep_0 + 370 +a1, 1, -0.6 );
setRotateKey( spep_0 + 372 +a1, 1, 1 );
setRotateKey( spep_0 + 374 +a1, 1, 2.1 );
setRotateKey( spep_0 + 376 +a1, 1, 2.4 );
setRotateKey( spep_0 + 376 +a1 +1, 1, 2.4 );

-- ** 音 ** --
--蹴り
SE019 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 162, SE019, 24, 1877 );
SE020 = playSeVer2( spep_0 + 162, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 162, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE021, 85 );

--足下ろす
SE022 = playSeVer2( spep_0 + 218, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 218, SE022, 24, 644 );
SE023 = playSeVer2( spep_0 + 218, 1182, "",spep_0 + 252, 0, 10, -1);
SE024 = playSeVer2( spep_0 + 218, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE024, 69 );
setBandpassFilter( spep_0 + 218, SE024, 24, 644 );

--蹴り２
SE025 = playSeVer2( spep_0 + 230, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 236, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 236, SE026, 24, 1877 );
SE027 = playSeVer2( spep_0 + 236, 1359, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 236, 1190, "",spep_0 + 276, 0, 10, -1);

--足下ろす２
SE029 = playSeVer2( spep_0 + 276, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 276, SE029, 24, 644 );
SE030 = playSeVer2( spep_0 + 276, 1182, "",spep_0 + 308, 0, 10, -1);
SE031 = playSeVer2( spep_0 + 276, 1153, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 276, SE031, 24, 644 );

--回し蹴り
SE032 = playSeVer2( spep_0 + 306, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE032,  133 );
SE033 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 318, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 320, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 320, SE035, 24, 2568 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 376 -2;
------------------------------------------------------
-- ピッコロから地面に攻撃(222f)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ピッコロから地面に攻撃
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222 -2, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222 -2, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 222 -2, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 222 -2, hit_f, 255 );

hit_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ピッコロから地面に攻撃
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222 -2, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222 -2, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 222 -2, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 222 -2, hit_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_1 + 20 +a1, 1, 1 );
setDisp( spep_1 + 106 +a1, 1, 0 );
setDisp( spep_1 + 174 +a1, 1, 1 );
setDisp( spep_1 + 176 +a1, 1, 0 );
setDisp( spep_1 + 178 +a1, 1, 1 );
setDisp( spep_1 + 208 +a1, 1, 0 );
changeAnime( spep_1 + 20 +a1, 1, 106 );
changeAnime( spep_1 + 38 +a1, 1, 107 );
changeAnime( spep_1 + 80 +a1, 1, 5 );
changeAnime( spep_1 + 174 +a1, 1, 106 );

setMoveKey( spep_1 + 20 +a1, 1, 576.6, -326.3 , 0 );
setMoveKey( spep_1 + 22 +a1, 1, 568, -333.7 , 0 );
setMoveKey( spep_1 + 24 +a1, 1, 548.9, -315.6 , 0 );
setMoveKey( spep_1 + 26 +a1, 1, 531, -312.2 , 0 );
setMoveKey( spep_1 + 28 +a1, 1, 477.1, -275.2 , 0 );
setMoveKey( spep_1 + 30 +a1, 1, 404.4, -242.8 , 0 );
setMoveKey( spep_1 + 32 +a1, 1, 313, -180.5 , 0 );
setMoveKey( spep_1 + 34 +a1, 1, 208.9, -123.9 , 0 );
setMoveKey( spep_1 + 36 +a1, 1, 48.4, -19.1 , 0 );
setMoveKey( spep_1 + 37 +a1, 1, 48.4, -19.1 , 0 );
setMoveKey( spep_1 + 38 +a1, 1, 129, -173.3 , 0 );
setMoveKey( spep_1 + 40 +a1, 1, 103, -199.3 , 0 );
setMoveKey( spep_1 + 42 +a1, 1, 103, -173.4 , 0 );
setMoveKey( spep_1 + 44 +a1, 1, 129, -199.4 , 0 );
setMoveKey( spep_1 + 46 +a1, 1, 129, -173.5 , 0 );
setMoveKey( spep_1 + 48 +a1, 1, 103.1, -199.9 , 0 );
setMoveKey( spep_1 + 50 +a1, 1, 103.2, -174.7 , 0 );
setMoveKey( spep_1 + 52 +a1, 1, 129.4, -202.3 , 0 );
setMoveKey( spep_1 + 54 +a1, 1, 129.7, -179.2 , 0 );
setMoveKey( spep_1 + 56 +a1, 1, 104.2, -209.7 , 0 );
setMoveKey( spep_1 + 58 +a1, 1, 108.9, -192.2 , 0 );
setMoveKey( spep_1 + 60 +a1, 1, 127.6, -223.1 , 0 );
setMoveKey( spep_1 + 62 +a1, 1, 116.4, -226.5 , 0 );
setMoveKey( spep_1 + 64 +a1, 1, 109.3, -249 , 0 );
setMoveKey( spep_1 + 66 +a1, 1, 110.1, -258.7 , 0 );
setMoveKey( spep_1 + 68 +a1, 1, 116.7, -287.5 , 0 );
setMoveKey( spep_1 + 70 +a1, 1, 116.4, -309.6 , 0 );
setMoveKey( spep_1 + 72 +a1, 1, 115.5, -332.3 , 0 );
setMoveKey( spep_1 + 74 +a1, 1, 113.4, -352.3 , 0 );
setMoveKey( spep_1 + 76 +a1, 1, 109.4, -364.6 , 0 );
setMoveKey( spep_1 + 78 +a1, 1, 104.6, -360.7 , 0 );
setMoveKey( spep_1 + 79 +a1, 1, 104.6, -360.7 , 0 );
setMoveKey( spep_1 + 80 +a1, 1, -46.5, -280.6 , 0 );
setMoveKey( spep_1 + 82 +a1, 1, -43.3, -238.1 , 0 );
setMoveKey( spep_1 + 84 +a1, 1, -39.4, -200.6 , 0 );
setMoveKey( spep_1 + 86 +a1, 1, -34.9, -167.9 , 0 );
setMoveKey( spep_1 + 88 +a1, 1, -29.8, -139.5 , 0 );
setMoveKey( spep_1 + 90 +a1, 1, -24.1, -115.4 , 0 );
setMoveKey( spep_1 + 92 +a1, 1, -17.9, -95.4 , 0 );
setMoveKey( spep_1 + 94 +a1, 1, -11.2, -79.3 , 0 );
setMoveKey( spep_1 + 96 +a1, 1, -3.9, -66.9 , 0 );
setMoveKey( spep_1 + 98 +a1, 1, 3.9, -58 , 0 );
setMoveKey( spep_1 + 100 +a1, 1, 12.2, -52.6 , 0 );
setMoveKey( spep_1 + 102 +a1, 1, 21.1, -50.6 , 0 );
setMoveKey( spep_1 + 104 +a1, 1, 2.9, -79.2 , 0 );
setMoveKey( spep_1 + 106 +a1, 1, 2.9, -79.2 , 0 );
setMoveKey( spep_1 + 174 +a1, 1, 94.8, -277.9 , 0 );
setMoveKey( spep_1 + 175 +a1, 1, 94.8, -277.9 , 0 );
setMoveKey( spep_1 + 176 +a1, 1, 114.3, -794 , 0 );
setMoveKey( spep_1 + 178 +a1, 1, 145.6, -271.4 , 0 );
setMoveKey( spep_1 + 180 +a1, 1, 226.8, -220.1 , 0 );
setMoveKey( spep_1 + 182 +a1, 1, 277.9, -122.5 , 0 );
setMoveKey( spep_1 + 184 +a1, 1, 299, -82.6 , 0 );
setMoveKey( spep_1 + 186 +a1, 1, 341.9, 3.5 , 0 );
setMoveKey( spep_1 + 188 +a1, 1, 406.8, 31.9 , 0 );
setMoveKey( spep_1 + 190 +a1, 1, 441.6, 106.6 , 0 );
setMoveKey( spep_1 + 192 +a1, 1, 446.3, 123.6 , 0 );
setMoveKey( spep_1 + 194 +a1, 1, 476.9, 184.8 , 0 );
setMoveKey( spep_1 + 196 +a1, 1, 517.4, 194.3 , 0 );
setMoveKey( spep_1 + 198 +a1, 1, 523.8, 228.1 , 0 );
setMoveKey( spep_1 + 200 +a1, 1, 530.1, 240.2 , 0 );
setMoveKey( spep_1 + 202 +a1, 1, 540.3, 262.5 , 0 );
setMoveKey( spep_1 + 204 +a1, 1, 552.5, 263.1 , 0 );
setMoveKey( spep_1 + 206 +a1, 1, 556.5, 273.9 , 0 );
setMoveKey( spep_1 + 208 +a1, 1, 556.5 +5, 273.9 +10 , 0 );

setScaleKey( spep_1 + 20 +a1, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 22 +a1, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 24 +a1, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 26 +a1, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 28 +a1, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 30 +a1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 32 +a1, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 34 +a1, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 36 +a1, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 37 +a1, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 38 +a1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 44 +a1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 46 +a1, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 52 +a1, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 54 +a1, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 56 +a1, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 58 +a1, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 60 +a1, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 62 +a1, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 64 +a1, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 66 +a1, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 68 +a1, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 70 +a1, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 72 +a1, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 74 +a1, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 76 +a1, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 78 +a1, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 79 +a1, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 80 +a1, 1, 4.44, 4.44 );
setScaleKey( spep_1 + 82 +a1, 1, 4.3, 4.3 );
setScaleKey( spep_1 + 84 +a1, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 86 +a1, 1, 3.92, 3.92 );
setScaleKey( spep_1 + 88 +a1, 1, 3.68, 3.68 );
setScaleKey( spep_1 + 90 +a1, 1, 3.42, 3.42 );
setScaleKey( spep_1 + 92 +a1, 1, 3.12, 3.12 );
setScaleKey( spep_1 + 94 +a1, 1, 2.8, 2.8 );
setScaleKey( spep_1 + 96 +a1, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 98 +a1, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 100 +a1, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 102 +a1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 104 +a1, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 174 +a1, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 175 +a1, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 176 +a1, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 178 +a1, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 180 +a1, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 182 +a1, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 184 +a1, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 186 +a1, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 188 +a1, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 190 +a1, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 192 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 194 +a1, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 196 +a1, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 198 +a1, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 200 +a1, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 202 +a1, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 204 +a1, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 208 +a1, 1, 1.06, 1.06 );

setRotateKey( spep_1 + 20 +a1, 1, -25.8 );
setRotateKey( spep_1 + 36 +a1, 1, -25.8 );
setRotateKey( spep_1 + 37 +a1, 1, -25.8 );
setRotateKey( spep_1 + 38 +a1, 1, 97.5 );
setRotateKey( spep_1 + 76 +a1, 1, 97.5 );
setRotateKey( spep_1 + 78 +a1, 1, 97.6 );
setRotateKey( spep_1 + 79 +a1, 1, 97.6 );
setRotateKey( spep_1 + 80 +a1, 1, 0 );
setRotateKey( spep_1 + 82 +a1, 1, 0.3 );
setRotateKey( spep_1 + 84 +a1, 1, 1.1 );
setRotateKey( spep_1 + 86 +a1, 1, 2.4 );
setRotateKey( spep_1 + 88 +a1, 1, 4.3 );
setRotateKey( spep_1 + 90 +a1, 1, 6.7 );
setRotateKey( spep_1 + 92 +a1, 1, 9.7 );
setRotateKey( spep_1 + 94 +a1, 1, 13.2 );
setRotateKey( spep_1 + 96 +a1, 1, 17.2 );
setRotateKey( spep_1 + 98 +a1, 1, 21.8 );
setRotateKey( spep_1 + 100 +a1, 1, 26.9 );
setRotateKey( spep_1 + 102 +a1, 1, 32.5 );
setRotateKey( spep_1 + 104 +a1, 1, 38.7 );
setRotateKey( spep_1 + 106 +a1, 1, 38.7 );
setRotateKey( spep_1 + 174 +a1, 1, -3.9 );
setRotateKey( spep_1 + 175 +a1, 1, -3.9 );
setRotateKey( spep_1 + 176 +a1, 1, 0 );
setRotateKey( spep_1 + 178 +a1, 1, 3.6 );
setRotateKey( spep_1 + 180 +a1, 1, 7 );
setRotateKey( spep_1 + 182 +a1, 1, 10.1 );
setRotateKey( spep_1 + 184 +a1, 1, 13 );
setRotateKey( spep_1 + 186 +a1, 1, 15.6 );
setRotateKey( spep_1 + 188 +a1, 1, 18 );
setRotateKey( spep_1 + 190 +a1, 1, 20.1 );
setRotateKey( spep_1 + 192 +a1, 1, 22 );
setRotateKey( spep_1 + 194 +a1, 1, 23.6 );
setRotateKey( spep_1 + 196 +a1, 1, 25 );
setRotateKey( spep_1 + 198 +a1, 1, 26.1 );
setRotateKey( spep_1 + 200 +a1, 1, 27 );
setRotateKey( spep_1 + 202 +a1, 1, 27.6 );
setRotateKey( spep_1 + 204 +a1, 1, 28 );
setRotateKey( spep_1 + 206 +a1, 1, 28.1 );
setRotateKey( spep_1 + 208 +a1, 1, 28.1 );

-- ** 音 ** --
--腕振り下ろす
SE036 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 36, 0, 12, -1);
SE037 = playSeVer2( spep_1 + 6, 9, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE037, 72 );
setStartTimeMs( SE037,  100 );
setPitch( spep_1 + 6, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );
SE038 = playSeVer2( spep_1 + 2, 1153, "", 0, 24, 0, -1);

--平手打ち
SE039 = playSeVer2( spep_1 + 36, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE039, 72 );
SE040 = playSeVer2( spep_1 + 36, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE040, 83 );
setBandpassFilter( spep_1 + 36, SE040, 24, 4385 );
SE041 = playSeVer2( spep_1 + 36, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE042 = playSeVer2( spep_1 + 68, 1183, "",spep_1 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 68, SE042, 75 );
SE043 = playSeVer2( spep_1 + 68, 1121, "",spep_1 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 68, SE043, 70 );

--敵地面激突
SE044 = playSeVer2( spep_1 + 104, 1023, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 104, 1159, "",spep_1 + 234, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 104, SE045, 73 );

--振りかぶる
SE046 = playSeVer2( spep_1 + 150, 1153, "", 0, 24, 0, -1);
SE047 = playSeVer2( spep_1 + 150, 1116, "",spep_1 + 184, 0, 10, -1);

--殴る
SE048 = playSeVer2( spep_1 + 172, 1003, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 180, 1067, "",spep_1 + 230, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 180, SE049, 84 );
SE050 = playSeVer2( spep_1 + 180, 1187, "",spep_1 + 230, 0, 6, -1);
setBandpassFilter( spep_1 + 180, SE050, 24, 2870 );
SE051 = playSeVer2( spep_1 + 180, 1359, "",spep_1 + 230, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 224, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 222 -2;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
	speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
	speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ピッコロが最後のパンチ〜フィニッシュ(358f)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ピッコロが最後のパンチ〜フィニッシュ
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 358 -2, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 358 -2, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 358 -2, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 358 -2, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ピッコロが最後のパンチ〜フィニッシュ
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 358 -2, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 358 -2, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 358 -2, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 358 -2, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_3 + 132 +a1, 1, 1 );
setDisp( spep_3 + 160 +a1, 1, 0 );
setDisp( spep_3 + 192 +a1, 1, 1 );
setDisp( spep_3 + 206 +a1, 1, 0 );
changeAnime( spep_3 + 132 +a1, 1, 107 );
changeAnime( spep_3 + 192 +a1, 1, 5 );

setMoveKey( spep_3 + 132 +a1, 1, 263.5, 102.2 , 0 );
setMoveKey( spep_3 + 134 +a1, 1, 262.7, 114.3 , 0 );
setMoveKey( spep_3 + 136 +a1, 1, 249.5, 98.8 , 0 );
setMoveKey( spep_3 + 138 +a1, 1, 251.2, 116.2 , 0 );
setMoveKey( spep_3 + 140 +a1, 1, 271.1, 104.8 , 0 );
setMoveKey( spep_3 + 142 +a1, 1, 294.5, 121.1 , 0 );
setMoveKey( spep_3 + 144 +a1, 1, 272.9, 115.5 , 0 );
setMoveKey( spep_3 + 146 +a1, 1, 299.5, 138.5 , 0 );
setMoveKey( spep_3 + 148 +a1, 1, 363.8, 136.5 , 0 );
setMoveKey( spep_3 + 150 +a1, 1, 422.9, 163.9 , 0 );
setMoveKey( spep_3 + 152 +a1, 1, 442.3, 171.1 , 0 );
setMoveKey( spep_3 + 154 +a1, 1, 515.4, 208.5 , 0 );
setMoveKey( spep_3 + 156 +a1, 1, 622.4, 230.7 , 0 );
setMoveKey( spep_3 + 158 +a1, 1, 711.8, 234.8 , 0 );
setMoveKey( spep_3 + 160 +a1, 1, 711.8 +30, 234.8 +10 , 0 );
setMoveKey( spep_3 + 192 +a1, 1, 157.8, 6.4 , 0 );
setMoveKey( spep_3 + 194 +a1, 1, 152.2, -0.6 , 0 );
setMoveKey( spep_3 + 196 +a1, 1, 151.4, -20.3 , 0 );
setMoveKey( spep_3 + 198 +a1, 1, 155.4, -52.9 , 0 );
setMoveKey( spep_3 + 200 +a1, 1, 164.3, -98.3 , 0 );
setMoveKey( spep_3 + 202 +a1, 1, 177.9, -156.5 , 0 );
setMoveKey( spep_3 + 204 +a1, 1, 196.3, -227.4 , 0 );
setMoveKey( spep_3 + 206 +a1, 1, 219.5, -311.2 , 0 );

setScaleKey( spep_3 + 132 +a1, 1, 0.18, 0.18 );
setScaleKey( spep_3 + 136 +a1, 1, 0.18, 0.18 );
setScaleKey( spep_3 + 138 +a1, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 140 +a1, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 142 +a1, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 144 +a1, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 146 +a1, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 148 +a1, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 150 +a1, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 152 +a1, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 154 +a1, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 156 +a1, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 158 +a1, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 160 +a1, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 192 +a1, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 194 +a1, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 196 +a1, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 198 +a1, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 200 +a1, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 202 +a1, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 204 +a1, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 206 +a1, 1, 0.22, 0.22 );

setRotateKey( spep_3 + 132 +a1, 1, 29.7 );
setRotateKey( spep_3 + 136 +a1, 1, 29.7 );
setRotateKey( spep_3 + 138 +a1, 1, 29.6 );
setRotateKey( spep_3 + 140 +a1, 1, 29.4 );
setRotateKey( spep_3 + 142 +a1, 1, 29.1 );
setRotateKey( spep_3 + 144 +a1, 1, 28.7 );
setRotateKey( spep_3 + 146 +a1, 1, 28.1 );
setRotateKey( spep_3 + 148 +a1, 1, 27.3 );
setRotateKey( spep_3 + 150 +a1, 1, 26.3 );
setRotateKey( spep_3 + 152 +a1, 1, 25 );
setRotateKey( spep_3 + 154 +a1, 1, 23.4 );
setRotateKey( spep_3 + 156 +a1, 1, 21.5 );
setRotateKey( spep_3 + 160 +a1, 1, 21.5 );
setRotateKey( spep_3 + 192 +a1, 1, 130 );
setRotateKey( spep_3 + 194 +a1, 1, 130.5 );
setRotateKey( spep_3 + 196 +a1, 1, 132.2 );
setRotateKey( spep_3 + 198 +a1, 1, 135 );
setRotateKey( spep_3 + 200 +a1, 1, 138.9 );
setRotateKey( spep_3 + 202 +a1, 1, 143.9 );
setRotateKey( spep_3 + 204 +a1, 1, 150 );
setRotateKey( spep_3 + 206 +a1, 1, 157.2 );

-- ** 音 ** --
--振りかぶり向かっていく
SE053 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE053, 72 );
SE054 = playSeVer2( spep_3 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE054, 75 );
setPitch( spep_3 + 0, SE054, -500 );
setTimeStretch( SE054, 0.95, 30, 4 );
SE055 = playSeVer2( spep_3 + 0, 1264, "",spep_3 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 0, SE055, 72 );
setPitch( spep_3 + 0, SE055, -500 );
setTimeStretch( SE055, 0.67, 30, 4 );

--拳突き出す
SE056 = playSeVer2( spep_3 + 64, 1116, "",spep_3 + 102, 0, 18, 0.6);
setSeVolumeByWorkId( spep_3 + 64, SE056, 140 );
SE057 = playSeVer2( spep_3 + 64, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE057, 141 );
SE058 = playSeVer2( spep_3 + 64, 1314, "",spep_3 + 228, 0, 80, -1);
SE059 = playSeVer2( spep_3 + 64, 1226, "",spep_3 + 228, 0, 80, -1);
setSeVolumeByWorkId( spep_3 + 64, SE059, 72 );

--パンチ
SE060 = playSeVer2( spep_3 + 130, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_3 + 130, SE060, 24, 2900 );
SE061 = playSeVer2( spep_3 + 130, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130, SE061, 79 );
SE062 = playSeVer2( spep_3 + 130, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130, SE062, 72 );

--地面激突
SE063 = playSeVer2( spep_3 + 204, 1159, "", 0, 0, 0, -1);

--画面遷移
SE064 = playSeVer2( spep_3 + 256, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 358, 0, 0, 0, 0, 255 );  --黒 背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 258 -2 ); -- ダメージ表示フレーム
endPhase( spep_3 + 356 -2 ); -- 終了フレーム
else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始からピッコロの連続キック攻撃 (376f)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 376 -2, 0x100, -1, 0, 0, 0 );  --開始からピッコロの連続キック攻撃 手前
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 376 -2, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 376 -2, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 376 -2, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 376 -2 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 376 -1 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 376 -2, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 376 -2, 0x80, -1, 0, 0, 0 );  --開始からピッコロの連続キック攻撃 奥
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 376 -2, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 376 -2, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 376 -2, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 376 -2 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 376 -1 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 376 -2, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--歩き出す１
SE001 = playSeVer2( spep_0 + 0, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 0, SE001, 24, 644 );
SE002 = playSeVer2( spep_0 + 0, 1182, "",spep_0 + 32, 0, 10, -1);
SE003 = playSeVer2( spep_0 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 76 );
setBandpassFilter( spep_0 + 0, SE003, 24, 644 );

--顔カットイン
--SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--歩き出す２
SE005 = playSeVer2( spep_0 + 38, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 38, SE005, 24, 644 );
SE006 = playSeVer2( spep_0 + 38, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 38, 1153, "",spep_0 + 70, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 74 );
setBandpassFilter( spep_0 + 38, SE007, 24, 644 );

--歩き出す３
SE008 = playSeVer2( spep_0 + 68, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 68, SE008, 24, 644 );
SE009 = playSeVer2( spep_0 + 68, 1182, "",spep_0 + 102, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 68, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE010, 71 );
setBandpassFilter( spep_0 + 68, SE010, 24, 644 );

--歩き出す４
SE011 = playSeVer2( spep_0 + 86, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 86, SE011, 24, 644 );
SE012 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 86, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE013, 75 );
setBandpassFilter( spep_0 + 86, SE013, 24, 644 );

--歩き出す５
SE014 = playSeVer2( spep_0 + 104, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 104, SE014, 24, 644 );
SE015 = playSeVer2( spep_0 + 104, 1182, "",spep_0 + 136, 0, 10, -1);
SE016 = playSeVer2( spep_0 + 104, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE016, 78 );
setBandpassFilter( spep_0 + 104, SE016, 24, 644 );

--足振り上げる
SE017 = playSeVer2( spep_0 + 118, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE017,  83 );
SE018 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 156, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 376, 0, 0, 0, 0, 255 );  --黒 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 144 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
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
--敵の動き
a1 = -3;
setDisp( spep_0 + 146 +a1, 1, 1 );
setDisp( spep_0 + 376 +a1 +1, 1, 0 );
changeAnime( spep_0 + 146 +a1, 1, 117 );
changeAnime( spep_0 + 164 +a1, 1, 106 );
changeAnime( spep_0 + 238 +a1, 1, 108 );
changeAnime( spep_0 + 322 +a1, 1, 106 );

setMoveKey( spep_0 + 146 +a1, 1, 866.4, -38 , 0 );
setMoveKey( spep_0 + 148 +a1, 1, 837.6, -23.3 , 0 );
setMoveKey( spep_0 + 150 +a1, 1, 792.5, -5.6 , 0 );
setMoveKey( spep_0 + 152 +a1, 1, 728.6, 15.2 , 0 );
setMoveKey( spep_0 + 154 +a1, 1, 642.6, 39.6 , 0 );
setMoveKey( spep_0 + 156 +a1, 1, 530.9, 67.7 , 0 );
setMoveKey( spep_0 + 158 +a1, 1, 389.2, 99.9 , 0 );
setMoveKey( spep_0 + 160 +a1, 1, 212.7, 136.6 , 0 );
setMoveKey( spep_0 + 162 +a1, 1, 136.9, 166.6 , 0 );
setMoveKey( spep_0 + 163 +a1, 1, 136.9, 166.6 , 0 );
setMoveKey( spep_0 + 164 +a1, 1, 28.3, -233.1 , 0 ); --蹴られる
setMoveKey( spep_0 + 166 +a1, 1, 146.4, -34 , 0 );
setMoveKey( spep_0 + 168 +a1, 1, 94.5, -76 , 0 );
setMoveKey( spep_0 + 170 +a1, 1, 138.3, -24 , 0 );
setMoveKey( spep_0 + 172 +a1, 1, 121.9, -83.9 , 0 );
setMoveKey( spep_0 + 174 +a1, 1, 157.2, -37.9 , 0 );
setMoveKey( spep_0 + 176 +a1, 1, 112.2, -71.9 , 0 );
setMoveKey( spep_0 + 178 +a1, 1, 155, -27.9 , 0 );
setMoveKey( spep_0 + 180 +a1, 1, 129.5, -79.9 , 0 );
setMoveKey( spep_0 + 182 +a1, 1, 151.7, -47.9 , 0 );
setMoveKey( spep_0 + 184 +a1, 1, 143.7, -57.8 , 0 );
setMoveKey( spep_0 + 186 +a1, 1, 153.4, -49.8 , 0 );
setMoveKey( spep_0 + 188 +a1, 1, 146.9, -55.8 , 0 );
setMoveKey( spep_0 + 190 +a1, 1, 148.7, -55.5 , 0 );
setMoveKey( spep_0 + 192 +a1, 1, 150.3, -55.1 , 0 );
setMoveKey( spep_0 + 194 +a1, 1, 151.6, -54.8 , 0 );
setMoveKey( spep_0 + 196 +a1, 1, 152.7, -54.4 , 0 );
setMoveKey( spep_0 + 198 +a1, 1, 153.5, -54.1 , 0 );
setMoveKey( spep_0 + 199 +a1, 1, 153.5, -54.1 , 0 );
setMoveKey( spep_0 + 200 +a1, 1, 174.9, 48.1 , 0 ); --向き変わる
setMoveKey( spep_0 + 202 +a1, 1, 177.1, 52.2 , 0 );
setMoveKey( spep_0 + 204 +a1, 1, 178.8, 55.4 , 0 );
setMoveKey( spep_0 + 206 +a1, 1, 180, 57.8 , 0 );
setMoveKey( spep_0 + 208 +a1, 1, 180.8, 59.5 , 0 );
setMoveKey( spep_0 + 210 +a1, 1, 181.1, 60.6 , 0 );
setMoveKey( spep_0 + 212 +a1, 1, 181, 61.3 , 0 );
setMoveKey( spep_0 + 214 +a1, 1, 180.4, 61.7 , 0 );
setMoveKey( spep_0 + 216 +a1, 1, 179.1, 61.8 , 0 );
setMoveKey( spep_0 + 218 +a1, 1, 177.3, 61.8 , 0 );
setMoveKey( spep_0 + 220 +a1, 1, 175.7, 60.1 , 0 );
setMoveKey( spep_0 + 222 +a1, 1, 175.4, 34.8 , 0 );
setMoveKey( spep_0 + 224 +a1, 1, 178, 52 , 0 );
setMoveKey( spep_0 + 226 +a1, 1, 171.5, 29.8 , 0 );
setMoveKey( spep_0 + 228 +a1, 1, 179.5, 18 , 0 );
setMoveKey( spep_0 + 230 +a1, 1, 181.9, -1.2 , 0 );
setMoveKey( spep_0 + 232 +a1, 1, 184.3, -24 , 0 );
setMoveKey( spep_0 + 234 +a1, 1, 186.6, -50.3 , 0 );
setMoveKey( spep_0 + 236 +a1, 1, 188.3, -80 , 0 );
setMoveKey( spep_0 + 237 +a1, 1, 188.3, -80 , 0 );
setMoveKey( spep_0 + 238 +a1, 1, 164.5, 58.1 , 0 ); --ドガッ
setMoveKey( spep_0 + 240 +a1, 1, 192.1, 78.1 , 0 );
setMoveKey( spep_0 + 242 +a1, 1, 137.8, 36.1 , 0 );
setMoveKey( spep_0 + 244 +a1, 1, 179.5, 88.1 , 0 );
setMoveKey( spep_0 + 246 +a1, 1, 161.1, 28.1 , 0 );
setMoveKey( spep_0 + 248 +a1, 1, 194.8, 74.1 , 0 );
setMoveKey( spep_0 + 250 +a1, 1, 148.5, 40.1 , 0 );
setMoveKey( spep_0 + 252 +a1, 1, 190.1, 84.1 , 0 );
setMoveKey( spep_0 + 254 +a1, 1, 163.8, 32.1 , 0 );
setMoveKey( spep_0 + 256 +a1, 1, 185.5, 64.1 , 0 );
setMoveKey( spep_0 + 258 +a1, 1, 177.1, 54.1 , 0 );
setMoveKey( spep_0 + 260 +a1, 1, 186.8, 62.1 , 0 );
setMoveKey( spep_0 + 262 +a1, 1, 180.5, 56.1 , 0 );
setMoveKey( spep_0 + 263 +a1, 1, 180.5, 56.1 , 0 );
setMoveKey( spep_0 + 264 +a1, 1, 164.7, -10.2 , 0 ); --向き変わる
setMoveKey( spep_0 + 266 +a1, 1, 166.3, 23.9 , 0 );
setMoveKey( spep_0 + 268 +a1, 1, 167.7, 47.7 , 0 );
setMoveKey( spep_0 + 270 +a1, 1, 168.8, 63.8 , 0 );
setMoveKey( spep_0 + 272 +a1, 1, 169.7, 74.2 , 0 );
setMoveKey( spep_0 + 274 +a1, 1, 170.5, 80.6 , 0 );
setMoveKey( spep_0 + 276 +a1, 1, 171.2, 84.4 , 0 );
setMoveKey( spep_0 + 278 +a1, 1, 171.2, 86.1 , 0 );
setMoveKey( spep_0 + 280 +a1, 1, 171.3, 67 , 0 );
setMoveKey( spep_0 + 282 +a1, 1, 173.3, 93.3 , 0 );
setMoveKey( spep_0 + 284 +a1, 1, 165.3, 83.3 , 0 );
setMoveKey( spep_0 + 286 +a1, 1, 171.3, 87.3 , 0 );
setMoveKey( spep_0 + 292 +a1, 1, 171.3, 87.3 , 0 );
setMoveKey( spep_0 + 294 +a1, 1, 171.3, 87.2 , 0 );
setMoveKey( spep_0 + 296 +a1, 1, 171.4, 87.1 , 0 );
setMoveKey( spep_0 + 298 +a1, 1, 171.4, 86.8 , 0 );
setMoveKey( spep_0 + 300 +a1, 1, 171.6, 86.4 , 0 );
setMoveKey( spep_0 + 302 +a1, 1, 171.7, 85.9 , 0 );
setMoveKey( spep_0 + 304 +a1, 1, 171.9, 85.2 , 0 );
setMoveKey( spep_0 + 306 +a1, 1, 172.2, 84.2 , 0 );
setMoveKey( spep_0 + 308 +a1, 1, 172.6, 83.1 , 0 );
setMoveKey( spep_0 + 310 +a1, 1, 173, 81.6 , 0 );
setMoveKey( spep_0 + 312 +a1, 1, 173.5, 79.9 , 0 );
setMoveKey( spep_0 + 314 +a1, 1, 174.1, 77.9 , 0 );
setMoveKey( spep_0 + 316 +a1, 1, 174.8, 75.6 , 0 );
setMoveKey( spep_0 + 318 +a1, 1, 175.6, 72.9 , 0 );
setMoveKey( spep_0 + 320 +a1, 1, 176.5, 69.8 , 0 );
setMoveKey( spep_0 + 321 +a1, 1, 176.5, 69.8 , 0 );
setMoveKey( spep_0 + 322 +a1, 1, 59, 83.8 , 0 ); --ドゴッ
setMoveKey( spep_0 + 324 +a1, 1, 86.5, 103.8 , 0 );
setMoveKey( spep_0 + 326 +a1, 1, 32.1, 61.8 , 0 );
setMoveKey( spep_0 + 328 +a1, 1, 73.6, 113.8 , 0 );
setMoveKey( spep_0 + 330 +a1, 1, 55.1, 53.8 , 0 );
setMoveKey( spep_0 + 332 +a1, 1, 88.7, 99.8 , 0 );
setMoveKey( spep_0 + 334 +a1, 1, 42.2, 65.8 , 0 );
setMoveKey( spep_0 + 336 +a1, 1, 83.8, 109.8 , 0 );
setMoveKey( spep_0 + 338 +a1, 1, 57.3, 57.8 , 0 );
setMoveKey( spep_0 + 340 +a1, 1, 78.9, 89.9 , 0 );
setMoveKey( spep_0 + 342 +a1, 1, 70.4, 79.9 , 0 );
setMoveKey( spep_0 + 344 +a1, 1, 79.9, 87.9 , 0 );
setMoveKey( spep_0 + 346 +a1, 1, 73.5, 81.9 , 0 );
setMoveKey( spep_0 + 348 +a1, 1, 75.6, 82.2 , 0 );
setMoveKey( spep_0 + 349 +a1, 1, 75.6, 82.2 , 0 );
setMoveKey( spep_0 + 350 +a1, 1, 193.7, 72.1 , 0 ); --向き変わる
setMoveKey( spep_0 + 352 +a1, 1, 207.2, 72.6 , 0 );
setMoveKey( spep_0 + 354 +a1, 1, 219.7, 73.1 , 0 );
setMoveKey( spep_0 + 356 +a1, 1, 231.2, 73.6 , 0 );
setMoveKey( spep_0 + 358 +a1, 1, 241.5, 74 , 0 );
setMoveKey( spep_0 + 360 +a1, 1, 250.9, 74.5 , 0 );
setMoveKey( spep_0 + 362 +a1, 1, 258.7, 74.6 , 0 );
setMoveKey( spep_0 + 364 +a1, 1, 265.4, 74.8 , 0 );
setMoveKey( spep_0 + 366 +a1, 1, 271.2, 74.9 , 0 );
setMoveKey( spep_0 + 368 +a1, 1, 275.8, 75 , 0 );
setMoveKey( spep_0 + 370 +a1, 1, 279.5, 75 , 0 );
setMoveKey( spep_0 + 372 +a1, 1, 282.1, 75.1 , 0 );
setMoveKey( spep_0 + 374 +a1, 1, 283.6, 75.1 , 0 );
setMoveKey( spep_0 + 376 +a1, 1, 284.1, 75.1 , 0 );
setMoveKey( spep_0 + 376 +a1 +1, 1, 284.1, 75.1 , 0 );

setScaleKey( spep_0 + 146 +a1, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 148 +a1, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 150 +a1, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 152 +a1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 154 +a1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 156 +a1, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 158 +a1, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 160 +a1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 162 +a1, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 163 +a1, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 164 +a1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 166 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 198 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 199 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 200 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 236 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 237 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 238 +a1, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 262 +a1, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 263 +a1, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 264 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 321 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 322 +a1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 348 +a1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 349 +a1, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 350 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 376 +a1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 376 +a1 +1, 1, 0.28, 0.28 );

setRotateKey( spep_0 + 146 +a1, 1, 0 );
setRotateKey( spep_0 + 163 +a1, 1, 0 );
setRotateKey( spep_0 + 164 +a1, 1, 0 );
setRotateKey( spep_0 + 166 +a1, 1, 0.7 );
setRotateKey( spep_0 + 168 +a1, 1, 1.3 );
setRotateKey( spep_0 + 170 +a1, 1, 1.9 );
setRotateKey( spep_0 + 172 +a1, 1, 2.5 );
setRotateKey( spep_0 + 174 +a1, 1, 3 );
setRotateKey( spep_0 + 176 +a1, 1, 3.5 );
setRotateKey( spep_0 + 178 +a1, 1, 3.9 );
setRotateKey( spep_0 + 180 +a1, 1, 4.3 );
setRotateKey( spep_0 + 182 +a1, 1, 4.7 );
setRotateKey( spep_0 + 184 +a1, 1, 5 );
setRotateKey( spep_0 + 186 +a1, 1, 5.2 );
setRotateKey( spep_0 + 188 +a1, 1, 5.5 );
setRotateKey( spep_0 + 190 +a1, 1, 5.6 );
setRotateKey( spep_0 + 192 +a1, 1, 5.8 );
setRotateKey( spep_0 + 194 +a1, 1, 5.9 );
setRotateKey( spep_0 + 196 +a1, 1, 6 );
setRotateKey( spep_0 + 198 +a1, 1, 6 );
setRotateKey( spep_0 + 199 +a1, 1, 6 );
setRotateKey( spep_0 + 200 +a1, 1, -59.7 );
setRotateKey( spep_0 + 202 +a1, 1, -58.8 );
setRotateKey( spep_0 + 204 +a1, 1, -58.2 );
setRotateKey( spep_0 + 206 +a1, 1, -57.6 );
setRotateKey( spep_0 + 208 +a1, 1, -57.3 );
setRotateKey( spep_0 + 210 +a1, 1, -57 );
setRotateKey( spep_0 + 212 +a1, 1, -56.9 );
setRotateKey( spep_0 + 214 +a1, 1, -56.8 );
setRotateKey( spep_0 + 218 +a1, 1, -56.8 );
setRotateKey( spep_0 + 220 +a1, 1, -56.4 );
setRotateKey( spep_0 + 222 +a1, 1, -55.1 );
setRotateKey( spep_0 + 224 +a1, 1, -53 );
setRotateKey( spep_0 + 226 +a1, 1, -50 );
setRotateKey( spep_0 + 228 +a1, 1, -46.2 );
setRotateKey( spep_0 + 230 +a1, 1, -41.6 );
setRotateKey( spep_0 + 232 +a1, 1, -36.1 );
setRotateKey( spep_0 + 234 +a1, 1, -29.8 );
setRotateKey( spep_0 + 236 +a1, 1, -22.6 );
setRotateKey( spep_0 + 237 +a1, 1, -22.6 );
setRotateKey( spep_0 + 238 +a1, 1, -37.7 );
setRotateKey( spep_0 + 264 +a1, 1, -37.7 );
setRotateKey( spep_0 + 266 +a1, 1, -24.3 );
setRotateKey( spep_0 + 268 +a1, 1, -14.9 );
setRotateKey( spep_0 + 270 +a1, 1, -8.7 );
setRotateKey( spep_0 + 272 +a1, 1, -4.6 );
setRotateKey( spep_0 + 274 +a1, 1, -2.2 );
setRotateKey( spep_0 + 276 +a1, 1, -0.8 );
setRotateKey( spep_0 + 278 +a1, 1, -0.1 );
setRotateKey( spep_0 + 280 +a1, 1, 0.2 );
setRotateKey( spep_0 + 282 +a1, 1, 0.3 );
setRotateKey( spep_0 + 284 +a1, 1, 0.4 );
setRotateKey( spep_0 + 296 +a1, 1, 0.4 );
setRotateKey( spep_0 + 298 +a1, 1, 0.5 );
setRotateKey( spep_0 + 300 +a1, 1, 0.6 );
setRotateKey( spep_0 + 302 +a1, 1, 0.7 );
setRotateKey( spep_0 + 304 +a1, 1, 0.9 );
setRotateKey( spep_0 + 306 +a1, 1, 1.1 );
setRotateKey( spep_0 + 308 +a1, 1, 1.3 );
setRotateKey( spep_0 + 310 +a1, 1, 1.6 );
setRotateKey( spep_0 + 312 +a1, 1, 2 );
setRotateKey( spep_0 + 314 +a1, 1, 2.5 );
setRotateKey( spep_0 + 316 +a1, 1, 3 );
setRotateKey( spep_0 + 318 +a1, 1, 3.6 );
setRotateKey( spep_0 + 320 +a1, 1, 4.3 );
setRotateKey( spep_0 + 321 +a1, 1, 4.3 );
setRotateKey( spep_0 + 322 +a1, 1, -54.7 );
setRotateKey( spep_0 + 350 +a1, 1, -54.7 );
setRotateKey( spep_0 + 352 +a1, 1, -46.2 );
setRotateKey( spep_0 + 354 +a1, 1, -38.5 );
setRotateKey( spep_0 + 356 +a1, 1, -31.4 );
setRotateKey( spep_0 + 358 +a1, 1, -25 );
setRotateKey( spep_0 + 360 +a1, 1, -19.2 );
setRotateKey( spep_0 + 362 +a1, 1, -14.1 );
setRotateKey( spep_0 + 364 +a1, 1, -9.8 );
setRotateKey( spep_0 + 366 +a1, 1, -6 );
setRotateKey( spep_0 + 368 +a1, 1, -3 );
setRotateKey( spep_0 + 370 +a1, 1, -0.6 );
setRotateKey( spep_0 + 372 +a1, 1, 1 );
setRotateKey( spep_0 + 374 +a1, 1, 2.1 );
setRotateKey( spep_0 + 376 +a1, 1, 2.4 );
setRotateKey( spep_0 + 376 +a1 +1, 1, 2.4 );

-- ** 音 ** --
--蹴り
SE019 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 162, SE019, 24, 1877 );
SE020 = playSeVer2( spep_0 + 162, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 162, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE021, 85 );

--足下ろす
SE022 = playSeVer2( spep_0 + 218, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 218, SE022, 24, 644 );
SE023 = playSeVer2( spep_0 + 218, 1182, "",spep_0 + 252, 0, 10, -1);
SE024 = playSeVer2( spep_0 + 218, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE024, 69 );
setBandpassFilter( spep_0 + 218, SE024, 24, 644 );

--蹴り２
SE025 = playSeVer2( spep_0 + 230, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 236, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 236, SE026, 24, 1877 );
SE027 = playSeVer2( spep_0 + 236, 1359, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 236, 1190, "",spep_0 + 276, 0, 10, -1);

--足下ろす２
SE029 = playSeVer2( spep_0 + 276, 1008, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 276, SE029, 24, 644 );
SE030 = playSeVer2( spep_0 + 276, 1182, "",spep_0 + 308, 0, 10, -1);
SE031 = playSeVer2( spep_0 + 276, 1153, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 276, SE031, 24, 644 );

--回し蹴り
SE032 = playSeVer2( spep_0 + 306, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE032,  133 );
SE033 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 318, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 320, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 320, SE035, 24, 2568 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 376 -2;
------------------------------------------------------
-- ピッコロから地面に攻撃(222f)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ピッコロから地面に攻撃
setEffMoveKey( spep_1 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222 -2, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222 -2, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_f, 0 );
setEffRotateKey( spep_1 + 222 -2, hit_f, 0 );
setEffAlphaKey( spep_1 + 0, hit_f, 255 );
setEffAlphaKey( spep_1 + 222 -2, hit_f, 255 );

hit_b = entryEffect( spep_1 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --ピッコロから地面に攻撃
setEffMoveKey( spep_1 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222 -2, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222 -2, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit_b, 0 );
setEffRotateKey( spep_1 + 222 -2, hit_b, 0 );
setEffAlphaKey( spep_1 + 0, hit_b, 255 );
setEffAlphaKey( spep_1 + 222 -2, hit_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_1 + 20 +a1, 1, 1 );
setDisp( spep_1 + 106 +a1, 1, 0 );
setDisp( spep_1 + 174 +a1, 1, 1 );
setDisp( spep_1 + 176 +a1, 1, 0 );
setDisp( spep_1 + 178 +a1, 1, 1 );
setDisp( spep_1 + 208 +a1, 1, 0 );
changeAnime( spep_1 + 20 +a1, 1, 106 );
changeAnime( spep_1 + 38 +a1, 1, 107 );
changeAnime( spep_1 + 80 +a1, 1, 5 );
changeAnime( spep_1 + 174 +a1, 1, 106 );

setMoveKey( spep_1 + 20 +a1, 1, 576.6, -326.3 , 0 );
setMoveKey( spep_1 + 22 +a1, 1, 568, -333.7 , 0 );
setMoveKey( spep_1 + 24 +a1, 1, 548.9, -315.6 , 0 );
setMoveKey( spep_1 + 26 +a1, 1, 531, -312.2 , 0 );
setMoveKey( spep_1 + 28 +a1, 1, 477.1, -275.2 , 0 );
setMoveKey( spep_1 + 30 +a1, 1, 404.4, -242.8 , 0 );
setMoveKey( spep_1 + 32 +a1, 1, 313, -180.5 , 0 );
setMoveKey( spep_1 + 34 +a1, 1, 208.9, -123.9 , 0 );
setMoveKey( spep_1 + 36 +a1, 1, 48.4, -19.1 , 0 );
setMoveKey( spep_1 + 37 +a1, 1, 48.4, -19.1 , 0 );
setMoveKey( spep_1 + 38 +a1, 1, 129, -173.3 , 0 );
setMoveKey( spep_1 + 40 +a1, 1, 103, -199.3 , 0 );
setMoveKey( spep_1 + 42 +a1, 1, 103, -173.4 , 0 );
setMoveKey( spep_1 + 44 +a1, 1, 129, -199.4 , 0 );
setMoveKey( spep_1 + 46 +a1, 1, 129, -173.5 , 0 );
setMoveKey( spep_1 + 48 +a1, 1, 103.1, -199.9 , 0 );
setMoveKey( spep_1 + 50 +a1, 1, 103.2, -174.7 , 0 );
setMoveKey( spep_1 + 52 +a1, 1, 129.4, -202.3 , 0 );
setMoveKey( spep_1 + 54 +a1, 1, 129.7, -179.2 , 0 );
setMoveKey( spep_1 + 56 +a1, 1, 104.2, -209.7 , 0 );
setMoveKey( spep_1 + 58 +a1, 1, 108.9, -192.2 , 0 );
setMoveKey( spep_1 + 60 +a1, 1, 127.6, -223.1 , 0 );
setMoveKey( spep_1 + 62 +a1, 1, 116.4, -226.5 , 0 );
setMoveKey( spep_1 + 64 +a1, 1, 109.3, -249 , 0 );
setMoveKey( spep_1 + 66 +a1, 1, 110.1, -258.7 , 0 );
setMoveKey( spep_1 + 68 +a1, 1, 116.7, -287.5 , 0 );
setMoveKey( spep_1 + 70 +a1, 1, 116.4, -309.6 , 0 );
setMoveKey( spep_1 + 72 +a1, 1, 115.5, -332.3 , 0 );
setMoveKey( spep_1 + 74 +a1, 1, 113.4, -352.3 , 0 );
setMoveKey( spep_1 + 76 +a1, 1, 109.4, -364.6 , 0 );
setMoveKey( spep_1 + 78 +a1, 1, 104.6, -360.7 , 0 );
setMoveKey( spep_1 + 79 +a1, 1, 104.6, -360.7 , 0 );
setMoveKey( spep_1 + 80 +a1, 1, -46.5, -280.6 , 0 );
setMoveKey( spep_1 + 82 +a1, 1, -43.3, -238.1 , 0 );
setMoveKey( spep_1 + 84 +a1, 1, -39.4, -200.6 , 0 );
setMoveKey( spep_1 + 86 +a1, 1, -34.9, -167.9 , 0 );
setMoveKey( spep_1 + 88 +a1, 1, -29.8, -139.5 , 0 );
setMoveKey( spep_1 + 90 +a1, 1, -24.1, -115.4 , 0 );
setMoveKey( spep_1 + 92 +a1, 1, -17.9, -95.4 , 0 );
setMoveKey( spep_1 + 94 +a1, 1, -11.2, -79.3 , 0 );
setMoveKey( spep_1 + 96 +a1, 1, -3.9, -66.9 , 0 );
setMoveKey( spep_1 + 98 +a1, 1, 3.9, -58 , 0 );
setMoveKey( spep_1 + 100 +a1, 1, 12.2, -52.6 , 0 );
setMoveKey( spep_1 + 102 +a1, 1, 21.1, -50.6 , 0 );
setMoveKey( spep_1 + 104 +a1, 1, 2.9, -79.2 , 0 );
setMoveKey( spep_1 + 106 +a1, 1, 2.9, -79.2 , 0 );
setMoveKey( spep_1 + 174 +a1, 1, 94.8, -277.9 , 0 );
setMoveKey( spep_1 + 175 +a1, 1, 94.8, -277.9 , 0 );
setMoveKey( spep_1 + 176 +a1, 1, 114.3, -794 , 0 );
setMoveKey( spep_1 + 178 +a1, 1, 145.6, -271.4 , 0 );
setMoveKey( spep_1 + 180 +a1, 1, 226.8, -220.1 , 0 );
setMoveKey( spep_1 + 182 +a1, 1, 277.9, -122.5 , 0 );
setMoveKey( spep_1 + 184 +a1, 1, 299, -82.6 , 0 );
setMoveKey( spep_1 + 186 +a1, 1, 341.9, 3.5 , 0 );
setMoveKey( spep_1 + 188 +a1, 1, 406.8, 31.9 , 0 );
setMoveKey( spep_1 + 190 +a1, 1, 441.6, 106.6 , 0 );
setMoveKey( spep_1 + 192 +a1, 1, 446.3, 123.6 , 0 );
setMoveKey( spep_1 + 194 +a1, 1, 476.9, 184.8 , 0 );
setMoveKey( spep_1 + 196 +a1, 1, 517.4, 194.3 , 0 );
setMoveKey( spep_1 + 198 +a1, 1, 523.8, 228.1 , 0 );
setMoveKey( spep_1 + 200 +a1, 1, 530.1, 240.2 , 0 );
setMoveKey( spep_1 + 202 +a1, 1, 540.3, 262.5 , 0 );
setMoveKey( spep_1 + 204 +a1, 1, 552.5, 263.1 , 0 );
setMoveKey( spep_1 + 206 +a1, 1, 556.5, 273.9 , 0 );
setMoveKey( spep_1 + 208 +a1, 1, 556.5 +5, 273.9 +10 , 0 );

setScaleKey( spep_1 + 20 +a1, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 22 +a1, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 24 +a1, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 26 +a1, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 28 +a1, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 30 +a1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 32 +a1, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 34 +a1, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 36 +a1, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 37 +a1, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 38 +a1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 44 +a1, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 46 +a1, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 52 +a1, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 54 +a1, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 56 +a1, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 58 +a1, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 60 +a1, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 62 +a1, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 64 +a1, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 66 +a1, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 68 +a1, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 70 +a1, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 72 +a1, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 74 +a1, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 76 +a1, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 78 +a1, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 79 +a1, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 80 +a1, 1, 4.44, 4.44 );
setScaleKey( spep_1 + 82 +a1, 1, 4.3, 4.3 );
setScaleKey( spep_1 + 84 +a1, 1, 4.12, 4.12 );
setScaleKey( spep_1 + 86 +a1, 1, 3.92, 3.92 );
setScaleKey( spep_1 + 88 +a1, 1, 3.68, 3.68 );
setScaleKey( spep_1 + 90 +a1, 1, 3.42, 3.42 );
setScaleKey( spep_1 + 92 +a1, 1, 3.12, 3.12 );
setScaleKey( spep_1 + 94 +a1, 1, 2.8, 2.8 );
setScaleKey( spep_1 + 96 +a1, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 98 +a1, 1, 2.08, 2.08 );
setScaleKey( spep_1 + 100 +a1, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 102 +a1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 104 +a1, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 174 +a1, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 175 +a1, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 176 +a1, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 178 +a1, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 180 +a1, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 182 +a1, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 184 +a1, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 186 +a1, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 188 +a1, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 190 +a1, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 192 +a1, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 194 +a1, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 196 +a1, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 198 +a1, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 200 +a1, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 202 +a1, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 204 +a1, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 208 +a1, 1, 1.06, 1.06 );

setRotateKey( spep_1 + 20 +a1, 1, -25.8 );
setRotateKey( spep_1 + 36 +a1, 1, -25.8 );
setRotateKey( spep_1 + 37 +a1, 1, -25.8 );
setRotateKey( spep_1 + 38 +a1, 1, 97.5 );
setRotateKey( spep_1 + 76 +a1, 1, 97.5 );
setRotateKey( spep_1 + 78 +a1, 1, 97.6 );
setRotateKey( spep_1 + 79 +a1, 1, 97.6 );
setRotateKey( spep_1 + 80 +a1, 1, 0 );
setRotateKey( spep_1 + 82 +a1, 1, 0.3 );
setRotateKey( spep_1 + 84 +a1, 1, 1.1 );
setRotateKey( spep_1 + 86 +a1, 1, 2.4 );
setRotateKey( spep_1 + 88 +a1, 1, 4.3 );
setRotateKey( spep_1 + 90 +a1, 1, 6.7 );
setRotateKey( spep_1 + 92 +a1, 1, 9.7 );
setRotateKey( spep_1 + 94 +a1, 1, 13.2 );
setRotateKey( spep_1 + 96 +a1, 1, 17.2 );
setRotateKey( spep_1 + 98 +a1, 1, 21.8 );
setRotateKey( spep_1 + 100 +a1, 1, 26.9 );
setRotateKey( spep_1 + 102 +a1, 1, 32.5 );
setRotateKey( spep_1 + 104 +a1, 1, 38.7 );
setRotateKey( spep_1 + 106 +a1, 1, 38.7 );
setRotateKey( spep_1 + 174 +a1, 1, -3.9 );
setRotateKey( spep_1 + 175 +a1, 1, -3.9 );
setRotateKey( spep_1 + 176 +a1, 1, 0 );
setRotateKey( spep_1 + 178 +a1, 1, 3.6 );
setRotateKey( spep_1 + 180 +a1, 1, 7 );
setRotateKey( spep_1 + 182 +a1, 1, 10.1 );
setRotateKey( spep_1 + 184 +a1, 1, 13 );
setRotateKey( spep_1 + 186 +a1, 1, 15.6 );
setRotateKey( spep_1 + 188 +a1, 1, 18 );
setRotateKey( spep_1 + 190 +a1, 1, 20.1 );
setRotateKey( spep_1 + 192 +a1, 1, 22 );
setRotateKey( spep_1 + 194 +a1, 1, 23.6 );
setRotateKey( spep_1 + 196 +a1, 1, 25 );
setRotateKey( spep_1 + 198 +a1, 1, 26.1 );
setRotateKey( spep_1 + 200 +a1, 1, 27 );
setRotateKey( spep_1 + 202 +a1, 1, 27.6 );
setRotateKey( spep_1 + 204 +a1, 1, 28 );
setRotateKey( spep_1 + 206 +a1, 1, 28.1 );
setRotateKey( spep_1 + 208 +a1, 1, 28.1 );

-- ** 音 ** --
--腕振り下ろす
SE036 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 36, 0, 12, -1);
SE037 = playSeVer2( spep_1 + 6, 9, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE037, 72 );
setStartTimeMs( SE037,  100 );
setPitch( spep_1 + 6, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );
SE038 = playSeVer2( spep_1 + 2, 1153, "", 0, 24, 0, -1);

--平手打ち
SE039 = playSeVer2( spep_1 + 36, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE039, 72 );
SE040 = playSeVer2( spep_1 + 36, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 36, SE040, 83 );
setBandpassFilter( spep_1 + 36, SE040, 24, 4385 );
SE041 = playSeVer2( spep_1 + 36, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE042 = playSeVer2( spep_1 + 68, 1183, "",spep_1 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 68, SE042, 75 );
SE043 = playSeVer2( spep_1 + 68, 1121, "",spep_1 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 68, SE043, 70 );

--敵地面激突
SE044 = playSeVer2( spep_1 + 104, 1023, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 104, 1159, "",spep_1 + 234, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 104, SE045, 73 );

--振りかぶる
SE046 = playSeVer2( spep_1 + 150, 1153, "", 0, 24, 0, -1);
SE047 = playSeVer2( spep_1 + 150, 1116, "",spep_1 + 184, 0, 10, -1);

--殴る
SE048 = playSeVer2( spep_1 + 172, 1003, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 180, 1067, "",spep_1 + 230, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 180, SE049, 84 );
SE050 = playSeVer2( spep_1 + 180, 1187, "",spep_1 + 230, 0, 6, -1);
setBandpassFilter( spep_1 + 180, SE050, 24, 2870 );
SE051 = playSeVer2( spep_1 + 180, 1359, "",spep_1 + 230, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 224, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 222 -2;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ピッコロが最後のパンチ〜フィニッシュ(358f)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --ピッコロが最後のパンチ〜フィニッシュ
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 358 -2, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 358 -2, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 358 -2, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 358 -2, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --ピッコロが最後のパンチ〜フィニッシュ
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 358 -2, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 358 -2, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 358 -2, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 358 -2, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_3 + 132 +a1, 1, 1 );
setDisp( spep_3 + 160 +a1, 1, 0 );
setDisp( spep_3 + 192 +a1, 1, 1 );
setDisp( spep_3 + 206 +a1, 1, 0 );
changeAnime( spep_3 + 132 +a1, 1, 107 );
changeAnime( spep_3 + 192 +a1, 1, 5 );

setMoveKey( spep_3 + 132 +a1, 1, 263.5, 102.2 , 0 );
setMoveKey( spep_3 + 134 +a1, 1, 262.7, 114.3 , 0 );
setMoveKey( spep_3 + 136 +a1, 1, 249.5, 98.8 , 0 );
setMoveKey( spep_3 + 138 +a1, 1, 251.2, 116.2 , 0 );
setMoveKey( spep_3 + 140 +a1, 1, 271.1, 104.8 , 0 );
setMoveKey( spep_3 + 142 +a1, 1, 294.5, 121.1 , 0 );
setMoveKey( spep_3 + 144 +a1, 1, 272.9, 115.5 , 0 );
setMoveKey( spep_3 + 146 +a1, 1, 299.5, 138.5 , 0 );
setMoveKey( spep_3 + 148 +a1, 1, 363.8, 136.5 , 0 );
setMoveKey( spep_3 + 150 +a1, 1, 422.9, 163.9 , 0 );
setMoveKey( spep_3 + 152 +a1, 1, 442.3, 171.1 , 0 );
setMoveKey( spep_3 + 154 +a1, 1, 515.4, 208.5 , 0 );
setMoveKey( spep_3 + 156 +a1, 1, 622.4, 230.7 , 0 );
setMoveKey( spep_3 + 158 +a1, 1, 711.8, 234.8 , 0 );
setMoveKey( spep_3 + 160 +a1, 1, 711.8 +30, 234.8 +10 , 0 );
setMoveKey( spep_3 + 192 +a1, 1, 157.8, 6.4 , 0 );
setMoveKey( spep_3 + 194 +a1, 1, 152.2, -0.6 , 0 );
setMoveKey( spep_3 + 196 +a1, 1, 151.4, -20.3 , 0 );
setMoveKey( spep_3 + 198 +a1, 1, 155.4, -52.9 , 0 );
setMoveKey( spep_3 + 200 +a1, 1, 164.3, -98.3 , 0 );
setMoveKey( spep_3 + 202 +a1, 1, 177.9, -156.5 , 0 );
setMoveKey( spep_3 + 204 +a1, 1, 196.3, -227.4 , 0 );
setMoveKey( spep_3 + 206 +a1, 1, 219.5, -311.2 , 0 );

setScaleKey( spep_3 + 132 +a1, 1, 0.18, 0.18 );
setScaleKey( spep_3 + 136 +a1, 1, 0.18, 0.18 );
setScaleKey( spep_3 + 138 +a1, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 140 +a1, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 142 +a1, 1, 0.27, 0.27 );
setScaleKey( spep_3 + 144 +a1, 1, 0.34, 0.34 );
setScaleKey( spep_3 + 146 +a1, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 148 +a1, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 150 +a1, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 152 +a1, 1, 0.91, 0.91 );
setScaleKey( spep_3 + 154 +a1, 1, 1.16, 1.16 );
setScaleKey( spep_3 + 156 +a1, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 158 +a1, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 160 +a1, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 192 +a1, 1, 0.51, 0.51 );
setScaleKey( spep_3 + 194 +a1, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 196 +a1, 1, 0.49, 0.49 );
setScaleKey( spep_3 + 198 +a1, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 200 +a1, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 202 +a1, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 204 +a1, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 206 +a1, 1, 0.22, 0.22 );

setRotateKey( spep_3 + 132 +a1, 1, 29.7 );
setRotateKey( spep_3 + 136 +a1, 1, 29.7 );
setRotateKey( spep_3 + 138 +a1, 1, 29.6 );
setRotateKey( spep_3 + 140 +a1, 1, 29.4 );
setRotateKey( spep_3 + 142 +a1, 1, 29.1 );
setRotateKey( spep_3 + 144 +a1, 1, 28.7 );
setRotateKey( spep_3 + 146 +a1, 1, 28.1 );
setRotateKey( spep_3 + 148 +a1, 1, 27.3 );
setRotateKey( spep_3 + 150 +a1, 1, 26.3 );
setRotateKey( spep_3 + 152 +a1, 1, 25 );
setRotateKey( spep_3 + 154 +a1, 1, 23.4 );
setRotateKey( spep_3 + 156 +a1, 1, 21.5 );
setRotateKey( spep_3 + 160 +a1, 1, 21.5 );
setRotateKey( spep_3 + 192 +a1, 1, 130 );
setRotateKey( spep_3 + 194 +a1, 1, 130.5 );
setRotateKey( spep_3 + 196 +a1, 1, 132.2 );
setRotateKey( spep_3 + 198 +a1, 1, 135 );
setRotateKey( spep_3 + 200 +a1, 1, 138.9 );
setRotateKey( spep_3 + 202 +a1, 1, 143.9 );
setRotateKey( spep_3 + 204 +a1, 1, 150 );
setRotateKey( spep_3 + 206 +a1, 1, 157.2 );

-- ** 音 ** --
--振りかぶり向かっていく
SE053 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE053, 72 );
SE054 = playSeVer2( spep_3 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE054, 75 );
setPitch( spep_3 + 0, SE054, -500 );
setTimeStretch( SE054, 0.95, 30, 4 );
SE055 = playSeVer2( spep_3 + 0, 1264, "",spep_3 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 0, SE055, 72 );
setPitch( spep_3 + 0, SE055, -500 );
setTimeStretch( SE055, 0.67, 30, 4 );

--拳突き出す
SE056 = playSeVer2( spep_3 + 64, 1116, "",spep_3 + 102, 0, 18, 0.6);
setSeVolumeByWorkId( spep_3 + 64, SE056, 140 );
SE057 = playSeVer2( spep_3 + 64, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE057, 141 );
SE058 = playSeVer2( spep_3 + 64, 1314, "",spep_3 + 228, 0, 80, -1);
SE059 = playSeVer2( spep_3 + 64, 1226, "",spep_3 + 228, 0, 80, -1);
setSeVolumeByWorkId( spep_3 + 64, SE059, 72 );

--パンチ
SE060 = playSeVer2( spep_3 + 130, 1187, "", 0, 0, 0, -1);
setBandpassFilter( spep_3 + 130, SE060, 24, 2900 );
SE061 = playSeVer2( spep_3 + 130, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130, SE061, 79 );
SE062 = playSeVer2( spep_3 + 130, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130, SE062, 72 );

--地面激突
SE063 = playSeVer2( spep_3 + 204, 1159, "", 0, 0, 0, -1);

--画面遷移
SE064 = playSeVer2( spep_3 + 256, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 358, 0, 0, 0, 0, 255 );  --黒 背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 258 -2 ); -- ダメージ表示フレーム
endPhase( spep_3 + 356 -2 ); -- 終了フレーム
end