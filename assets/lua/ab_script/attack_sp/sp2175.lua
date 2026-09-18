--4020340:超サイヤ人ゴッドSSベジータ(進化)＿ファイナルフラッシュ
--sp_effect_a1_00272
--sp2175

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
SP_01=	156642	;--	気弾かまえ
SP_02=	156623	;--	気弾かまえの書き文字
SP_03=	156625	;--	煙で敵と対峙　前面
SP_04=	156626	;--	煙で敵と対峙　背面
SP_05=	156627	;--	目線にらみ
SP_06=	156643	;--	発射直前
SP_07=	156644	;--	発射
SP_08=	156630	;--	気弾が迫る
SP_09=	156631	;--	気弾命中　前面
SP_10=	156632	;--	気弾命中の書き文字
SP_11=	156634	;--	気弾命中　背面
SP_12=	156635	;--	フィニッシュ
SP_13=	156636	;--	フィニッシュの書き文字
SP_14=	156645	;--	KO時のドヤ顔

--エフェクト(てき)
SP_01x=	156650	;--	気弾かまえ	(敵)
SP_02x=	156624	;--	気弾かまえの書き文字	(敵)
SP_03x=	156625	;--	煙で敵と対峙　前面	
SP_04x=	156626	;--	煙で敵と対峙　背面	
SP_05x=	156627	;--	目線にらみ	
SP_06x=	156651	;--	発射直前	(敵)
SP_07x=	156652	;--	発射	(敵)
SP_08x=	156630	;--	気弾が迫る	
SP_09x=	156631	;--	気弾命中　前面	
SP_10x=	156633	;--	気弾命中の書き文字	(敵)
SP_11x=	156634	;--	気弾命中　背面	
SP_12x=	156635	;--	フィニッシュ	
SP_13x=	156637	;--	フィニッシュの書き文字	(敵)
SP_14x=	156653	;--	KO時のドヤ顔	(敵)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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
-- 気弾かまえ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 440, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 440, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 440, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 438, tame, 255 );
setEffAlphaKey( spep_0 + 439, tame, 255 );
setEffAlphaKey( spep_0 + 440, tame, 0 );

--文字エントリー
cttame = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, cttame, 0, 0, 0 );
setEffMoveKey( spep_0 + 440, cttame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, cttame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 440, cttame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cttame, 0 );
setEffRotateKey( spep_0 + 440, cttame, 0 );
setEffAlphaKey( spep_0 + 0, cttame, 255 );
setEffAlphaKey( spep_0 + 440, cttame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +298;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1181 );

--構える
SE002 = playSe( spep_0 + 8, 1233 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 9, SE002, 16.2 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 32 );
setStartTimeMs( SE002,  50 );
setPitch( spep_0 + 8, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );
SE003 = playSe( spep_0 + 8, 1108 );
SE004 = playSe( spep_0 + 10, 1106 );

--腕広げる
SE005 = playSe( spep_0 + 34, 1003 );
setSeVolumeByWorkId( spep_0 + 34, SE005, 67 );

--気ダメ
SE006 = playSe( spep_0 + 68, 1226 );
setSeVolumeByWorkId( spep_0 + 68, SE006, 67 );
setSeVolumeByWorkId( spep_0 +396,SE006,67);
setSeVolumeByWorkId( spep_0 +397,SE006,67.186);
setSeVolumeByWorkId( spep_0 +398,SE006,67.372);
setSeVolumeByWorkId( spep_0 +399,SE006,67.558);
setSeVolumeByWorkId( spep_0 +400,SE006,67.744);
setSeVolumeByWorkId( spep_0 +401,SE006,67.93);
setSeVolumeByWorkId( spep_0 +402,SE006,68.116);
setSeVolumeByWorkId( spep_0 +403,SE006,68.302);
setSeVolumeByWorkId( spep_0 +404,SE006,68.488);
setSeVolumeByWorkId( spep_0 +405,SE006,68.674);
setSeVolumeByWorkId( spep_0 +406,SE006,68.86);
setSeVolumeByWorkId( spep_0 +407,SE006,69.046);
setSeVolumeByWorkId( spep_0 +408,SE006,69.232);
setSeVolumeByWorkId( spep_0 +409,SE006,69.418);
setSeVolumeByWorkId( spep_0 +410,SE006,69.604);
setSeVolumeByWorkId( spep_0 +411,SE006,69.79);
setSeVolumeByWorkId( spep_0 +412,SE006,69.976);
setSeVolumeByWorkId( spep_0 +413,SE006,70.162);
setSeVolumeByWorkId( spep_0 +414,SE006,70.348);
setSeVolumeByWorkId( spep_0 +415,SE006,70.534);
setSeVolumeByWorkId( spep_0 +416,SE006,70.72);
setSeVolumeByWorkId( spep_0 +417,SE006,70.906);
setSeVolumeByWorkId( spep_0 +418,SE006,71.092);
setSeVolumeByWorkId( spep_0 +419,SE006,71.278);
setSeVolumeByWorkId( spep_0 +420,SE006,71.464);
setSeVolumeByWorkId( spep_0 +421,SE006,71.65);
setSeVolumeByWorkId( spep_0 +422,SE006,71.836);
setSeVolumeByWorkId( spep_0 +423,SE006,72.022);
setSeVolumeByWorkId( spep_0 +424,SE006,72.208);
setSeVolumeByWorkId( spep_0 +425,SE006,72.394);
setSeVolumeByWorkId( spep_0 +426,SE006,72.58);
setSeVolumeByWorkId( spep_0 +427,SE006,72.766);
setSeVolumeByWorkId( spep_0 +428,SE006,72.952);
setSeVolumeByWorkId( spep_0 +429,SE006,73.138);
setSeVolumeByWorkId( spep_0 +430,SE006,73.324);
setSeVolumeByWorkId( spep_0 +431,SE006,73.51);
setSeVolumeByWorkId( spep_0 +432,SE006,73.696);
setSeVolumeByWorkId( spep_0 +433,SE006,73.882);
setSeVolumeByWorkId( spep_0 +434,SE006,74.068);
setSeVolumeByWorkId( spep_0 +435,SE006,74.254);
setSeVolumeByWorkId( spep_0 +436,SE006,74.44);
setSeVolumeByWorkId( spep_0 +437,SE006,74.626);
setSeVolumeByWorkId( spep_0 +438,SE006,74.812);
setSeVolumeByWorkId( spep_0 +439,SE006,74.998);
setSeVolumeByWorkId( spep_0 +440,SE006,75.184);
setSeVolumeByWorkId( spep_0 +441,SE006,75.37);
setSeVolumeByWorkId( spep_0 +442,SE006,75.556);
setSeVolumeByWorkId( spep_0 +443,SE006,75.742);
setSeVolumeByWorkId( spep_0 +444,SE006,75.928);
setSeVolumeByWorkId( spep_0 +445,SE006,76.114);
setSeVolumeByWorkId( spep_0 +446,SE006,76.3);
setSeVolumeByWorkId( spep_0 +447,SE006,76.486);
setSeVolumeByWorkId( spep_0 +448,SE006,76.672);
setSeVolumeByWorkId( spep_0 +449,SE006,76.858);
setSeVolumeByWorkId( spep_0 +450,SE006,77.044);
setSeVolumeByWorkId( spep_0 +451,SE006,77.23);
setSeVolumeByWorkId( spep_0 +452,SE006,77.416);
setSeVolumeByWorkId( spep_0 +453,SE006,77.602);
setSeVolumeByWorkId( spep_0 +454,SE006,77.788);
setSeVolumeByWorkId( spep_0 +455,SE006,77.974);
setSeVolumeByWorkId( spep_0 +456,SE006,78.16);
setSeVolumeByWorkId( spep_0 +457,SE006,78.346);
setSeVolumeByWorkId( spep_0 +458,SE006,78.532);
setSeVolumeByWorkId( spep_0 +459,SE006,78.718);
setSeVolumeByWorkId( spep_0 +460,SE006,78.904);
setSeVolumeByWorkId( spep_0 +461,SE006,79.09);
setSeVolumeByWorkId( spep_0 +462,SE006,79.276);
setSeVolumeByWorkId( spep_0 +463,SE006,79.462);
setSeVolumeByWorkId( spep_0 +464,SE006,79.648);
setSeVolumeByWorkId( spep_0 +465,SE006,79.834);
setSeVolumeByWorkId( spep_0 +466,SE006,80.02);
setSeVolumeByWorkId( spep_0 +467,SE006,80.206);
setSeVolumeByWorkId( spep_0 +468,SE006,80.392);
setSeVolumeByWorkId( spep_0 +469,SE006,80.578);
setSeVolumeByWorkId( spep_0 +470,SE006,80.764);
setSeVolumeByWorkId( spep_0 +471,SE006,80.95);
setSeVolumeByWorkId( spep_0 +472,SE006,81.136);
setSeVolumeByWorkId( spep_0 +473,SE006,81.322);
setSeVolumeByWorkId( spep_0 +474,SE006,81.508);
setSeVolumeByWorkId( spep_0 +475,SE006,81.694);
setSeVolumeByWorkId( spep_0 +476,SE006,81.88);
setSeVolumeByWorkId( spep_0 +477,SE006,82.066);
setSeVolumeByWorkId( spep_0 +478,SE006,82.252);
setSeVolumeByWorkId( spep_0 +479,SE006,82.438);
setSeVolumeByWorkId( spep_0 +480,SE006,82.624);
setSeVolumeByWorkId( spep_0 +481,SE006,82.81);
setSeVolumeByWorkId( spep_0 +482,SE006,82.996);
setSeVolumeByWorkId( spep_0 +483,SE006,83.182);
setSeVolumeByWorkId( spep_0 +484,SE006,83.368);
setSeVolumeByWorkId( spep_0 +485,SE006,83.554);
setSeVolumeByWorkId( spep_0 +486,SE006,83.74);
setSeVolumeByWorkId( spep_0 +487,SE006,83.926);
setSeVolumeByWorkId( spep_0 +488,SE006,84.112);
setSeVolumeByWorkId( spep_0 +489,SE006,84.298);
setSeVolumeByWorkId( spep_0 +490,SE006,84.484);
setSeVolumeByWorkId( spep_0 +491,SE006,84.67);
setSeVolumeByWorkId( spep_0 +492,SE006,84.856);
setSeVolumeByWorkId( spep_0 +493,SE006,85.042);
setSeVolumeByWorkId( spep_0 +494,SE006,85.228);
setSeVolumeByWorkId( spep_0 +495,SE006,85.414);
setSeVolumeByWorkId( spep_0 +496,SE006,85.6);
setSeVolumeByWorkId( spep_0 +497,SE006,85.786);
setSeVolumeByWorkId( spep_0 +498,SE006,85.972);
setSeVolumeByWorkId( spep_0 +499,SE006,86.158);
setSeVolumeByWorkId( spep_0 +500,SE006,86.344);
setSeVolumeByWorkId( spep_0 +501,SE006,86.53);
setSeVolumeByWorkId( spep_0 +502,SE006,86.716);
setSeVolumeByWorkId( spep_0 +503,SE006,86.902);
setSeVolumeByWorkId( spep_0 +504,SE006,87.088);
setSeVolumeByWorkId( spep_0 +505,SE006,87.274);
setSeVolumeByWorkId( spep_0 +506,SE006,87.46);
setSeVolumeByWorkId( spep_0 +507,SE006,87.646);
setSeVolumeByWorkId( spep_0 +508,SE006,87.832);
setSeVolumeByWorkId( spep_0 +509,SE006,88.018);
setSeVolumeByWorkId( spep_0 +510,SE006,88.204);
setSeVolumeByWorkId( spep_0 +511,SE006,88.39);
setSeVolumeByWorkId( spep_0 +512,SE006,88.576);
setSeVolumeByWorkId( spep_0 +513,SE006,88.762);
setSeVolumeByWorkId( spep_0 +514,SE006,88.948);
setSeVolumeByWorkId( spep_0 +515,SE006,89.134);
setSeVolumeByWorkId( spep_0 +516,SE006,89.32);
setSeVolumeByWorkId( spep_0 +517,SE006,89.506);
setSeVolumeByWorkId( spep_0 +518,SE006,89.692);
setSeVolumeByWorkId( spep_0 +519,SE006,89.878);
setSeVolumeByWorkId( spep_0 +520,SE006,90.064);
setSeVolumeByWorkId( spep_0 +521,SE006,90.25);
setSeVolumeByWorkId( spep_0 +522,SE006,90.436);
setSeVolumeByWorkId( spep_0 +523,SE006,90.622);
setSeVolumeByWorkId( spep_0 +524,SE006,90.808);
setSeVolumeByWorkId( spep_0 +525,SE006,90.994);
setSeVolumeByWorkId( spep_0 +526,SE006,91.18);
setSeVolumeByWorkId( spep_0 +527,SE006,91.366);
setSeVolumeByWorkId( spep_0 +528,SE006,91.552);
setSeVolumeByWorkId( spep_0 +529,SE006,91.738);
setSeVolumeByWorkId( spep_0 +530,SE006,91.924);
setSeVolumeByWorkId( spep_0 +531,SE006,92.11);
setSeVolumeByWorkId( spep_0 +532,SE006,92.296);
setSeVolumeByWorkId( spep_0 +533,SE006,92.482);
setSeVolumeByWorkId( spep_0 +534,SE006,92.668);
setSeVolumeByWorkId( spep_0 +535,SE006,92.854);
setSeVolumeByWorkId( spep_0 +536,SE006,93.04);
setSeVolumeByWorkId( spep_0 +537,SE006,93.226);
setSeVolumeByWorkId( spep_0 +538,SE006,93.412);
setSeVolumeByWorkId( spep_0 +539,SE006,93.598);
setSeVolumeByWorkId( spep_0 +540,SE006,93.784);
setSeVolumeByWorkId( spep_0 +541,SE006,93.97);
setSeVolumeByWorkId( spep_0 +542,SE006,94.156);
setSeVolumeByWorkId( spep_0 +543,SE006,94.342);
setSeVolumeByWorkId( spep_0 +544,SE006,94.528);
setSeVolumeByWorkId( spep_0 +545,SE006,94.714);
setSeVolumeByWorkId( spep_0 +546,SE006,94.9);
setSeVolumeByWorkId( spep_0 +547,SE006,95.086);
setSeVolumeByWorkId( spep_0 +548,SE006,95.272);
setSeVolumeByWorkId( spep_0 +549,SE006,95.458);
setSeVolumeByWorkId( spep_0 +550,SE006,95.644);
setSeVolumeByWorkId( spep_0 +551,SE006,95.83);
setSeVolumeByWorkId( spep_0 +552,SE006,96.016);
setSeVolumeByWorkId( spep_0 +553,SE006,96.202);
setSeVolumeByWorkId( spep_0 +554,SE006,96.388);
setSeVolumeByWorkId( spep_0 +555,SE006,96.574);
setSeVolumeByWorkId( spep_0 +556,SE006,96.76);
setSeVolumeByWorkId( spep_0 +557,SE006,96.946);
setSeVolumeByWorkId( spep_0 +558,SE006,97.132);
setSeVolumeByWorkId( spep_0 +559,SE006,97.318);
setSeVolumeByWorkId( spep_0 +560,SE006,97.504);
setSeVolumeByWorkId( spep_0 +561,SE006,97.69);
setSeVolumeByWorkId( spep_0 +562,SE006,97.876);
setSeVolumeByWorkId( spep_0 +563,SE006,98.062);
setSeVolumeByWorkId( spep_0 +564,SE006,98.248);
setSeVolumeByWorkId( spep_0 +565,SE006,98.434);
setSeVolumeByWorkId( spep_0 +566,SE006,98.62);
setSeVolumeByWorkId( spep_0 +567,SE006,98.806);
setSeVolumeByWorkId( spep_0 +568,SE006,98.992);
setSeVolumeByWorkId( spep_0 +569,SE006,99.178);
setSeVolumeByWorkId( spep_0 +570,SE006,99.364);
setSeVolumeByWorkId( spep_0 +571,SE006,99.55);
setSeVolumeByWorkId( spep_0 +572,SE006,99.736);
setSeVolumeByWorkId( spep_0 +573,SE006,99.922);
setSeVolumeByWorkId( spep_0 +574,SE006,100.108);
setSeVolumeByWorkId( spep_0 +575,SE006,100.294);
setSeVolumeByWorkId( spep_0 +576,SE006,100.48);
setSeVolumeByWorkId( spep_0 +577,SE006,100.666);
setSeVolumeByWorkId( spep_0 +578,SE006,100.852);
setSeVolumeByWorkId( spep_0 +579,SE006,101.038);
setSeVolumeByWorkId( spep_0 +580,SE006,101.224);
setSeVolumeByWorkId( spep_0 +581,SE006,101.41);
setSeVolumeByWorkId( spep_0 +582,SE006,101.596);
setSeVolumeByWorkId( spep_0 +583,SE006,101.782);
setSeVolumeByWorkId( spep_0 +584,SE006,101.968);
setSeVolumeByWorkId( spep_0 +585,SE006,102.154);
setSeVolumeByWorkId( spep_0 +586,SE006,102.34);
setSeVolumeByWorkId( spep_0 +587,SE006,102.526);
setSeVolumeByWorkId( spep_0 +588,SE006,102.712);
setSeVolumeByWorkId( spep_0 +589,SE006,102.898);
setSeVolumeByWorkId( spep_0 +590,SE006,103.084);
setSeVolumeByWorkId( spep_0 +591,SE006,103.27);
setSeVolumeByWorkId( spep_0 +592,SE006,103.456);
setSeVolumeByWorkId( spep_0 +593,SE006,103.642);
setSeVolumeByWorkId( spep_0 +594,SE006,103.828);
setSeVolumeByWorkId( spep_0 +595,SE006,104.014);
setSeVolumeByWorkId( spep_0 +596,SE006,104.2);
setSeVolumeByWorkId( spep_0 +597,SE006,104.386);
setSeVolumeByWorkId( spep_0 +598,SE006,104.572);
setSeVolumeByWorkId( spep_0 +599,SE006,104.758);
setSeVolumeByWorkId( spep_0 +600,SE006,104.944);
setSeVolumeByWorkId( spep_0 +601,SE006,105.13);
setSeVolumeByWorkId( spep_0 +602,SE006,105.316);
setSeVolumeByWorkId( spep_0 +603,SE006,105.502);
setSeVolumeByWorkId( spep_0 +604,SE006,105.688);
setSeVolumeByWorkId( spep_0 +605,SE006,105.874);
setSeVolumeByWorkId( spep_0 +606,SE006,106.06);
setSeVolumeByWorkId( spep_0 +607,SE006,106.246);
setSeVolumeByWorkId( spep_0 +608,SE006,106.432);
setSeVolumeByWorkId( spep_0 +609,SE006,106.618);
setSeVolumeByWorkId( spep_0 +610,SE006,106.804);
setSeVolumeByWorkId( spep_0 +611,SE006,106.99);
setSeVolumeByWorkId( spep_0 +612,SE006,107.176);
setSeVolumeByWorkId( spep_0 +613,SE006,107.362);
setSeVolumeByWorkId( spep_0 +614,SE006,107.548);
setSeVolumeByWorkId( spep_0 +615,SE006,107.734);
setSeVolumeByWorkId( spep_0 +616,SE006,107.92);
setSeVolumeByWorkId( spep_0 +617,SE006,108.106);
setSeVolumeByWorkId( spep_0 +618,SE006,108.292);
setSeVolumeByWorkId( spep_0 +619,SE006,108.478);
setSeVolumeByWorkId( spep_0 +620,SE006,108.664);
setSeVolumeByWorkId( spep_0 +621,SE006,108.85);
setSeVolumeByWorkId( spep_0 +622,SE006,109.036);
setSeVolumeByWorkId( spep_0 +623,SE006,109.222);
setSeVolumeByWorkId( spep_0 +624,SE006,109.408);
setSeVolumeByWorkId( spep_0 +625,SE006,109.594);
setSeVolumeByWorkId( spep_0 +626,SE006,109.78);
setSeVolumeByWorkId( spep_0 +627,SE006,109.966);
setSeVolumeByWorkId( spep_0 +628,SE006,110);
SE007 = playSe( spep_0 + 68, 1035 );
setSeVolumeByWorkId( spep_0 + 68, SE007, 79 );
SE008 = playSe( spep_0 + 68, 1011 );
setSeVolumeByWorkId( spep_0 + 68, SE008, 67 );

--いなづま
SE009 = playSe( spep_0 + 68, 1147 );
setSeVolumeByWorkId( spep_0 + 68, SE009, 56 );
SE016 = playSe( spep_0 + 410, 1147 );
setSeVolumeByWorkId( spep_0 + 410, SE016, 56 );

--ファイナルフラッシュ溜め
SE010 = playSe( spep_0 + 184, 1210,"",0.5 );
setSeVolumeByWorkId( spep_0 +184,SE010,100);
setSeVolumeByWorkId( spep_0 +396,SE010,100);
setSeVolumeByWorkId( spep_0 +397,SE010,100.689);
setSeVolumeByWorkId( spep_0 +398,SE010,101.378);
setSeVolumeByWorkId( spep_0 +399,SE010,102.067);
setSeVolumeByWorkId( spep_0 +400,SE010,102.756);
setSeVolumeByWorkId( spep_0 +401,SE010,103.445);
setSeVolumeByWorkId( spep_0 +402,SE010,104.134);
setSeVolumeByWorkId( spep_0 +403,SE010,104.823);
setSeVolumeByWorkId( spep_0 +404,SE010,105.512);
setSeVolumeByWorkId( spep_0 +405,SE010,106.201);
setSeVolumeByWorkId( spep_0 +406,SE010,106.89);
setSeVolumeByWorkId( spep_0 +407,SE010,107.579);
setSeVolumeByWorkId( spep_0 +408,SE010,108.268);
setSeVolumeByWorkId( spep_0 +409,SE010,108.957);
setSeVolumeByWorkId( spep_0 +410,SE010,109.646);
setSeVolumeByWorkId( spep_0 +411,SE010,110.335);
setSeVolumeByWorkId( spep_0 +412,SE010,111.024);
setSeVolumeByWorkId( spep_0 +413,SE010,111.713);
setSeVolumeByWorkId( spep_0 +414,SE010,112.402);
setSeVolumeByWorkId( spep_0 +415,SE010,113.091);
setSeVolumeByWorkId( spep_0 +416,SE010,113.78);
setSeVolumeByWorkId( spep_0 +417,SE010,114.469);
setSeVolumeByWorkId( spep_0 +418,SE010,115.158);
setSeVolumeByWorkId( spep_0 +419,SE010,115.847);
setSeVolumeByWorkId( spep_0 +420,SE010,116.536);
setSeVolumeByWorkId( spep_0 +421,SE010,117.225);
setSeVolumeByWorkId( spep_0 +422,SE010,117.914);
setSeVolumeByWorkId( spep_0 +423,SE010,118.603);
setSeVolumeByWorkId( spep_0 +424,SE010,119.292);
setSeVolumeByWorkId( spep_0 +425,SE010,119.981);
setSeVolumeByWorkId( spep_0 +426,SE010,120.67);
setSeVolumeByWorkId( spep_0 +427,SE010,121.359);
setSeVolumeByWorkId( spep_0 +428,SE010,122.048);
setSeVolumeByWorkId( spep_0 +429,SE010,122.737);
setSeVolumeByWorkId( spep_0 +430,SE010,123.426);
setSeVolumeByWorkId( spep_0 +431,SE010,124.115);
setSeVolumeByWorkId( spep_0 +432,SE010,124.804);
setSeVolumeByWorkId( spep_0 +433,SE010,125.493);
setSeVolumeByWorkId( spep_0 +434,SE010,126.182);
setSeVolumeByWorkId( spep_0 +435,SE010,126.871);
setSeVolumeByWorkId( spep_0 +436,SE010,127.56);
setSeVolumeByWorkId( spep_0 +437,SE010,128.249);
setSeVolumeByWorkId( spep_0 +438,SE010,128.938);
setSeVolumeByWorkId( spep_0 +439,SE010,129.627);
setSeVolumeByWorkId( spep_0 +440,SE010,130.316);
setSeVolumeByWorkId( spep_0 +441,SE010,131.005);
setSeVolumeByWorkId( spep_0 +442,SE010,131.694);
setSeVolumeByWorkId( spep_0 +443,SE010,132.383);
setSeVolumeByWorkId( spep_0 +444,SE010,133.072);
setSeVolumeByWorkId( spep_0 +445,SE010,133.761);
setSeVolumeByWorkId( spep_0 +446,SE010,134.45);
setSeVolumeByWorkId( spep_0 +447,SE010,135.139);
setSeVolumeByWorkId( spep_0 +448,SE010,135.828);
setSeVolumeByWorkId( spep_0 +449,SE010,136.517);
setSeVolumeByWorkId( spep_0 +450,SE010,137.206);
setSeVolumeByWorkId( spep_0 +451,SE010,137.895);
setSeVolumeByWorkId( spep_0 +452,SE010,138.584);
setSeVolumeByWorkId( spep_0 +453,SE010,139.273);
setSeVolumeByWorkId( spep_0 +454,SE010,139.962);
setSeVolumeByWorkId( spep_0 +455,SE010,140.651);
setSeVolumeByWorkId( spep_0 +456,SE010,141.34);
setSeVolumeByWorkId( spep_0 +457,SE010,142.029);
setSeVolumeByWorkId( spep_0 +458,SE010,142.718);
setSeVolumeByWorkId( spep_0 +459,SE010,143.407);
setSeVolumeByWorkId( spep_0 +460,SE010,144.096);
setSeVolumeByWorkId( spep_0 +461,SE010,144.785);
setSeVolumeByWorkId( spep_0 +462,SE010,145.474);
setSeVolumeByWorkId( spep_0 +463,SE010,146.163);
setSeVolumeByWorkId( spep_0 +464,SE010,146.852);
setSeVolumeByWorkId( spep_0 +465,SE010,147.541);
setSeVolumeByWorkId( spep_0 +466,SE010,148.23);
setSeVolumeByWorkId( spep_0 +467,SE010,148.918);
setSeVolumeByWorkId( spep_0 +468,SE010,149.607);
setSeVolumeByWorkId( spep_0 +469,SE010,150.296);
setSeVolumeByWorkId( spep_0 +470,SE010,150.985);
setSeVolumeByWorkId( spep_0 +471,SE010,151.674);
setSeVolumeByWorkId( spep_0 +472,SE010,152.363);
setSeVolumeByWorkId( spep_0 +473,SE010,153.052);
setSeVolumeByWorkId( spep_0 +474,SE010,153.741);
setSeVolumeByWorkId( spep_0 +475,SE010,154.43);
setSeVolumeByWorkId( spep_0 +476,SE010,155.119);
setSeVolumeByWorkId( spep_0 +477,SE010,155.808);
setSeVolumeByWorkId( spep_0 +478,SE010,156.497);
setSeVolumeByWorkId( spep_0 +479,SE010,157.186);
setSeVolumeByWorkId( spep_0 +480,SE010,157.875);
setSeVolumeByWorkId( spep_0 +481,SE010,158.564);
setSeVolumeByWorkId( spep_0 +482,SE010,159.253);
setSeVolumeByWorkId( spep_0 +483,SE010,159.942);
setSeVolumeByWorkId( spep_0 +484,SE010,160.631);
setSeVolumeByWorkId( spep_0 +485,SE010,161.32);
setSeVolumeByWorkId( spep_0 +486,SE010,162.009);
setSeVolumeByWorkId( spep_0 +487,SE010,162.698);
setSeVolumeByWorkId( spep_0 +488,SE010,163.387);
setSeVolumeByWorkId( spep_0 +489,SE010,164.076);
setSeVolumeByWorkId( spep_0 +490,SE010,164.765);
setSeVolumeByWorkId( spep_0 +491,SE010,165.454);
setSeVolumeByWorkId( spep_0 +492,SE010,166.143);
setSeVolumeByWorkId( spep_0 +493,SE010,166.832);
setSeVolumeByWorkId( spep_0 +494,SE010,167.521);
setSeVolumeByWorkId( spep_0 +495,SE010,168.21);
setSeVolumeByWorkId( spep_0 +496,SE010,168.899);
setSeVolumeByWorkId( spep_0 +497,SE010,169.588);
setSeVolumeByWorkId( spep_0 +498,SE010,170.277);
setSeVolumeByWorkId( spep_0 +499,SE010,170.966);
setSeVolumeByWorkId( spep_0 +500,SE010,171.655);
setSeVolumeByWorkId( spep_0 +501,SE010,172.344);
setSeVolumeByWorkId( spep_0 +502,SE010,173.033);
setSeVolumeByWorkId( spep_0 +503,SE010,173.722);
setSeVolumeByWorkId( spep_0 +504,SE010,174.411);
setSeVolumeByWorkId( spep_0 +505,SE010,175.1);
setSeVolumeByWorkId( spep_0 +506,SE010,175.789);
setSeVolumeByWorkId( spep_0 +507,SE010,176.478);
setSeVolumeByWorkId( spep_0 +508,SE010,177.167);
setSeVolumeByWorkId( spep_0 +509,SE010,177.856);
setSeVolumeByWorkId( spep_0 +510,SE010,178.545);
setSeVolumeByWorkId( spep_0 +511,SE010,179.234);
setSeVolumeByWorkId( spep_0 +512,SE010,179.923);
setSeVolumeByWorkId( spep_0 +513,SE010,180.612);
setSeVolumeByWorkId( spep_0 +514,SE010,181.301);
setSeVolumeByWorkId( spep_0 +515,SE010,181.99);
setSeVolumeByWorkId( spep_0 +516,SE010,182.679);
setSeVolumeByWorkId( spep_0 +517,SE010,183.368);
setSeVolumeByWorkId( spep_0 +518,SE010,184.057);
setSeVolumeByWorkId( spep_0 +519,SE010,184.746);
setSeVolumeByWorkId( spep_0 +520,SE010,185.435);
setSeVolumeByWorkId( spep_0 +521,SE010,186.124);
setSeVolumeByWorkId( spep_0 +522,SE010,186.813);
setSeVolumeByWorkId( spep_0 +523,SE010,187.502);
setSeVolumeByWorkId( spep_0 +524,SE010,188.191);
setSeVolumeByWorkId( spep_0 +525,SE010,188.88);
setSeVolumeByWorkId( spep_0 +526,SE010,189.569);
setSeVolumeByWorkId( spep_0 +527,SE010,190.258);
setSeVolumeByWorkId( spep_0 +528,SE010,190.947);
setSeVolumeByWorkId( spep_0 +529,SE010,191.636);
setSeVolumeByWorkId( spep_0 +530,SE010,192.325);
setSeVolumeByWorkId( spep_0 +531,SE010,193.014);
setSeVolumeByWorkId( spep_0 +532,SE010,193.703);
setSeVolumeByWorkId( spep_0 +533,SE010,194.392);
setSeVolumeByWorkId( spep_0 +534,SE010,195.081);
setSeVolumeByWorkId( spep_0 +535,SE010,195.77);
setSeVolumeByWorkId( spep_0 +536,SE010,196.459);
setSeVolumeByWorkId( spep_0 +537,SE010,197.148);
setSeVolumeByWorkId( spep_0 +538,SE010,197.837);
setSeVolumeByWorkId( spep_0 +539,SE010,198.526);
setSeVolumeByWorkId( spep_0 +540,SE010,199.215);
setSeVolumeByWorkId( spep_0 +541,SE010,199.904);
setSeVolumeByWorkId( spep_0 +542,SE010,200.593);
setSeVolumeByWorkId( spep_0 +543,SE010,201.282);
setSeVolumeByWorkId( spep_0 +544,SE010,201.971);
setSeVolumeByWorkId( spep_0 +545,SE010,202.66);
setSeVolumeByWorkId( spep_0 +546,SE010,203.349);
setSeVolumeByWorkId( spep_0 +547,SE010,204.038);
setSeVolumeByWorkId( spep_0 +548,SE010,204.727);
setSeVolumeByWorkId( spep_0 +549,SE010,205.416);
setSeVolumeByWorkId( spep_0 +550,SE010,206.105);
setSeVolumeByWorkId( spep_0 +551,SE010,206.794);
setSeVolumeByWorkId( spep_0 +552,SE010,207.483);
setSeVolumeByWorkId( spep_0 +553,SE010,208.172);
setSeVolumeByWorkId( spep_0 +554,SE010,208.861);
setSeVolumeByWorkId( spep_0 +555,SE010,209.55);
setSeVolumeByWorkId( spep_0 +556,SE010,210.239);
setSeVolumeByWorkId( spep_0 +557,SE010,210.928);
setSeVolumeByWorkId( spep_0 +558,SE010,211.617);
setSeVolumeByWorkId( spep_0 +559,SE010,212.306);
setSeVolumeByWorkId( spep_0 +560,SE010,212.995);
setSeVolumeByWorkId( spep_0 +561,SE010,213.684);
setSeVolumeByWorkId( spep_0 +562,SE010,214.373);
setSeVolumeByWorkId( spep_0 +563,SE010,215.062);
setSeVolumeByWorkId( spep_0 +564,SE010,215.751);
setSeVolumeByWorkId( spep_0 +565,SE010,216.44);
setSeVolumeByWorkId( spep_0 +566,SE010,217.129);
setSeVolumeByWorkId( spep_0 +567,SE010,217.818);
setSeVolumeByWorkId( spep_0 +568,SE010,218.507);
setSeVolumeByWorkId( spep_0 +569,SE010,219.196);
setSeVolumeByWorkId( spep_0 +570,SE010,219.885);
setSeVolumeByWorkId( spep_0 +571,SE010,220.574);
setSeVolumeByWorkId( spep_0 +572,SE010,221.263);
setSeVolumeByWorkId( spep_0 +573,SE010,221.952);
setSeVolumeByWorkId( spep_0 +574,SE010,222.641);
setSeVolumeByWorkId( spep_0 +575,SE010,223.33);
setSeVolumeByWorkId( spep_0 +576,SE010,224.019);
setSeVolumeByWorkId( spep_0 +577,SE010,224.708);
setSeVolumeByWorkId( spep_0 +578,SE010,225.397);
setSeVolumeByWorkId( spep_0 +579,SE010,226.086);
setSeVolumeByWorkId( spep_0 +580,SE010,226.775);
setSeVolumeByWorkId( spep_0 +581,SE010,227.464);
setSeVolumeByWorkId( spep_0 +582,SE010,228.153);
setSeVolumeByWorkId( spep_0 +583,SE010,228.842);
setSeVolumeByWorkId( spep_0 +584,SE010,229.531);
setSeVolumeByWorkId( spep_0 +585,SE010,230.22);
setSeVolumeByWorkId( spep_0 +586,SE010,230.909);
setSeVolumeByWorkId( spep_0 +587,SE010,231.598);
setSeVolumeByWorkId( spep_0 +588,SE010,232.287);
setSeVolumeByWorkId( spep_0 +589,SE010,232.976);
setSeVolumeByWorkId( spep_0 +590,SE010,233.665);
setSeVolumeByWorkId( spep_0 +591,SE010,234.354);
setSeVolumeByWorkId( spep_0 +592,SE010,235.043);
setSeVolumeByWorkId( spep_0 +593,SE010,235.732);
setSeVolumeByWorkId( spep_0 +594,SE010,236.421);
setSeVolumeByWorkId( spep_0 +595,SE010,237.11);
setSeVolumeByWorkId( spep_0 +596,SE010,237.799);
setSeVolumeByWorkId( spep_0 +597,SE010,238.488);
setSeVolumeByWorkId( spep_0 +598,SE010,239.177);
setSeVolumeByWorkId( spep_0 +599,SE010,239.866);
setSeVolumeByWorkId( spep_0 +600,SE010,240.555);
setSeVolumeByWorkId( spep_0 +601,SE010,241.244);
setSeVolumeByWorkId( spep_0 +602,SE010,241.933);
setSeVolumeByWorkId( spep_0 +603,SE010,242.622);
setSeVolumeByWorkId( spep_0 +604,SE010,243.311);
setSeVolumeByWorkId( spep_0 +605,SE010,244);
setSeVolumeByWorkId( spep_0 +606,SE010,244.689);
setSeVolumeByWorkId( spep_0 +607,SE010,245.378);
setSeVolumeByWorkId( spep_0 +608,SE010,246.067);
setSeVolumeByWorkId( spep_0 +609,SE010,246.756);
setSeVolumeByWorkId( spep_0 +610,SE010,247.445);
setSeVolumeByWorkId( spep_0 +611,SE010,248.134);
setSeVolumeByWorkId( spep_0 +612,SE010,248.823);
setSeVolumeByWorkId( spep_0 +613,SE010,249.512);
setSeVolumeByWorkId( spep_0 +614,SE010,250.201);
setSeVolumeByWorkId( spep_0 +615,SE010,250.89);
setSeVolumeByWorkId( spep_0 +616,SE010,251.579);
setSeVolumeByWorkId( spep_0 +617,SE010,252.268);
setSeVolumeByWorkId( spep_0 +618,SE010,252.957);
setSeVolumeByWorkId( spep_0 +619,SE010,253.646);
setSeVolumeByWorkId( spep_0 +620,SE010,254.335);
setSeVolumeByWorkId( spep_0 +621,SE010,255.024);
setSeVolumeByWorkId( spep_0 +622,SE010,255.713);
setSeVolumeByWorkId( spep_0 +623,SE010,256.402);
setSeVolumeByWorkId( spep_0 +624,SE010,257.091);
setSeVolumeByWorkId( spep_0 +625,SE010,257.78);
setSeVolumeByWorkId( spep_0 +626,SE010,258.469);
setSeVolumeByWorkId( spep_0 +627,SE010,259.158);
setSeVolumeByWorkId( spep_0 +628,SE010,260);
setBandpassFilter	( spep_0 + 184, SE010, 24, 600 );

--気弾溜めはじめ
SE011 = playSe( spep_0 + 214, 1131 );
setSeVolumeByWorkId( spep_0 + 214, SE011, 62 );
SE012 = playSe( spep_0 + 216, 1296 );
setSeVolumeByWorkId( spep_0 + 216, SE012, 52 );
stopSe( spep_0 + 260, SE012, 58 );

--顔カットイン
SE014 = playSe( spep_x + 12, 1018 );

--気弾溜め終わりかけ
SE015 = playSe( spep_0 + 306, 1158 );
setSeVolumeByWorkId( spep_0 + 306, SE015, 56 );
setBandpassFilter	( spep_0 + 306, SE015, 600, 24000 );
SE017 = playSe( spep_0 + 410, 1215,"",0.5 );
setSeVolumeByWorkId( spep_0 + 410, SE017, 45 );

--空気圧
SE018 = playSe( spep_0 + 436, 1278 );
setSeVolumeByWorkId( spep_0 + 436, SE018, 86 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 440, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+440;
------------------------------------------------------
-- 煙で敵と対峙
------------------------------------------------------
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, confrontation_f, 0 );
setEffRotateKey( spep_1 + 48, confrontation_f, 0 );
setEffAlphaKey( spep_1 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_1 + 46, confrontation_f, 255 );
setEffAlphaKey( spep_1 + 47, confrontation_f, 255 );
setEffAlphaKey( spep_1 + 48, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, confrontation_b, 0 );
setEffRotateKey( spep_1 + 48, confrontation_b, 0 );
setEffAlphaKey( spep_1 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_1 + 46, confrontation_b, 255 );
setEffAlphaKey( spep_1 + 47, confrontation_b, 255 );
setEffAlphaKey( spep_1 + 48, confrontation_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 48, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
setBlendColor(spep_1 + 0,1,3,0.11,0.6,0.94,0.4);
setBlendColor(spep_1 + 50,1,3,0.11,0.6,0.94,0.4);
setBlendColor(spep_1 + 51,1,3,0.11,0.6,0.94,0.4);
setBlendColor(spep_1 + 52,1,3,0.11,0.6,0.94,0);

setMoveKey( spep_1 + 0, 1, 145.9, -65.5 , 0 );
setMoveKey( spep_1 + 48, 1, 145.9, -65.5 , 0 );

setScaleKey( spep_1 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 48, 1, 2.1, 2.1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 48, 1, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+48;

------------------------------------------------------
-- 気弾かまえ目線にらみ
------------------------------------------------------
-- ** エフェクト等 ** --
looking = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, looking, 0, 0, 0 );
setEffMoveKey( spep_2 + 50, looking, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, looking, 1.0, 1.0 );
setEffScaleKey( spep_2 + 50, looking, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, looking, 0 );
setEffRotateKey( spep_2 + 50, looking, 0 );
setEffAlphaKey( spep_2 + 0, looking, 255 );
setEffAlphaKey( spep_2 + 48, looking, 255 );
setEffAlphaKey( spep_2 + 49, looking, 255 );
setEffAlphaKey( spep_2 + 50, looking, 0 );

--SE
--空気圧
stopSe( spep_2 + 2, SE018, 36 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 52, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+50;
------------------------------------------------------
-- 発射直前
------------------------------------------------------
-- ** エフェクト等 ** --
soliloquy = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, soliloquy, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, soliloquy, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, soliloquy, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, soliloquy, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, soliloquy, 0 );
setEffRotateKey( spep_3 + 66, soliloquy, 0 );
setEffAlphaKey( spep_3 + 0, soliloquy, 255 );
setEffAlphaKey( spep_3 + 64, soliloquy, 255 );
setEffAlphaKey( spep_3 + 65, soliloquy, 255 );
setEffAlphaKey( spep_3 + 66, soliloquy, 0 );

--白フェード
entryFade( spep_3 + 60, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_c=spep_3+66;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
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
-- playSe( spep_c + 0, SE_05 );

--環境音
stopSe( spep_c + 0, SE001, 0 );

--気ダメ
stopSe( spep_c + 0, SE006, 0 );

--ファイナルフラッシュ溜め
stopSe( spep_c + 0, SE010, 0 );

--いなづま
stopSe( spep_c + 0, SE016, 0 );

--気弾溜め終わりかけ
stopSe( spep_c + 0, SE015, 0 );
stopSe( spep_c + 0, SE017, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_5 = spep_c + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 92, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 92, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 92, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 90, beam, 255 );
setEffAlphaKey( spep_5 + 91, beam, 255 );
setEffAlphaKey( spep_5 + 92, beam, 0 );

-- 文字エントリー --
ctbeam = entryEffect( spep_5 + 0, 156628, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctbeam, 0, 0, 0 );
setEffMoveKey( spep_5 + 92, ctbeam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ctbeam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 92, ctbeam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctbeam, 0 );
setEffRotateKey( spep_5 + 92, ctbeam, 0 );
setEffAlphaKey( spep_5 + 0, ctbeam, 255 );
setEffAlphaKey( spep_5 + 90, ctbeam, 255 );
setEffAlphaKey( spep_5 + 91, ctbeam, 255 );
setEffAlphaKey( spep_5 + 92, ctbeam, 0 );

--SE
--フラッシュ発射
SE020 = playSe( spep_5 + 2, 1258 );
setSeVolumeByWorkId( spep_5 + 2, SE020, 87 );
SE021 = playSe( spep_5 + 6, 1148 );
setSeVolumeByWorkId( spep_5 + 6, SE021, 63 );
SE022 = playSe( spep_5 + 6, 1027 );
setSeVolumeByWorkId( spep_5 + 6, SE022, 78 );
SE023 = playSe( spep_5 + 6, 1213 );
setSeVolumeByWorkId( spep_5 + 6, SE023, 60 );
SE024 = playSe( spep_5 + 6, 1266 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+92;
------------------------------------------------------
-- 気弾が迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, approaching, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, approaching, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, approaching, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, approaching, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, approaching, 0 );
setEffRotateKey( spep_6 + 56, approaching, 0 );
setEffAlphaKey( spep_6 + 0, approaching, 255 );
setEffAlphaKey( spep_6 + 54, approaching, 255 );
setEffAlphaKey( spep_6 + 55, approaching, 255 );
setEffAlphaKey( spep_6 + 56, approaching, 0 );

--フラッシュ横通過
SE025 = playSe( spep_6 + 0, 1305 );
SE026 = playSe( spep_6 + 14, 1304 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);

   
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

--次の準備
spep_7=spep_6+56;
------------------------------------------------------
-- 気弾命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 138, hit_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 138, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_f, 0 );
setEffRotateKey( spep_7 + 138, hit_f, 0 );
setEffAlphaKey( spep_7 + 0, hit_f, 255 );
setEffAlphaKey( spep_7 + 136, hit_f, 255 );
setEffAlphaKey( spep_7 + 137, hit_f, 255 );
setEffAlphaKey( spep_7 + 138, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 138, hit_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 138, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_b, 0 );
setEffRotateKey( spep_7 + 138, hit_b, 0 );
setEffAlphaKey( spep_7 + 0, hit_b, 255 );
setEffAlphaKey( spep_7 + 136, hit_b, 255 );
setEffAlphaKey( spep_7 + 137, hit_b, 255 );
setEffAlphaKey( spep_7 + 138, hit_b, 0 );

-- ** エフェクト等 ** --
cthit = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, cthit, 0, 0, 0 );
setEffMoveKey( spep_7 + 138, cthit, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, cthit, 1.0, 1.0 );
setEffScaleKey( spep_7 + 138, cthit, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, cthit, 0 );
setEffRotateKey( spep_7 + 138, cthit, 0 );
setEffAlphaKey( spep_7 + 0, cthit, 255 );
setEffAlphaKey( spep_7 + 136, cthit, 255 );
setEffAlphaKey( spep_7 + 137, cthit, 255 );
setEffAlphaKey( spep_7 + 138, cthit, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 10, 1, 0 );

setBlendColor(spep_7 + 0,1,3,0.5,0.68,0.16,0.33);
setBlendColor(spep_7 + 12,1,3,0.5,0.68,0.16,0.33);
setBlendColor(spep_7 + 13,1,3,0.5,0.68,0.16,0.33);
setBlendColor(spep_7 + 14,1,3,0.5,0.68,0.16,0);

changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 138.8, -104.1 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 138.8, -104.1 , 0 );
setMoveKey( spep_7-3 + 4, 1, 130.1, -123.7 , 0 );
setMoveKey( spep_7-3 + 6, 1, 115.3, -91.9 , 0 );
setMoveKey( spep_7-3 + 8, 1, 88.7, -144.9 , 0 );
setMoveKey( spep_7-3 + 10, 1, 85.3, -89.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 88.2, -92.9 , 0 );
setMoveKey( spep_7-3 + 14, 1, 135.3, -127.9 , 0 );

setScaleKey( spep_7 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_7 + 10, 1, 2.1, 2.1 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 10, 1, 0 );

--SE
--フラッシュ横通過
stopSe( spep_7 + 16, SE025, 10 );
stopSe( spep_7 + 16, SE026, 10 ,"",0.6);

--敵のみこむ
SE027 = playSe( spep_7 + 6, 1061 );
setSeVolumeByWorkId( spep_7 + 6, SE027, 83 );
setPitch( spep_7 + 6, SE027, 300 );
setTimeStretch( SE027, 1.2, 10, 1 );
SE028 = playSe( spep_7 + 8, 1188 );
setSeVolumeByWorkId( spep_7 + 8, SE028, 76 );
SE029 = playSe( spep_7 + 10, 1159 );
setSeVolumeByWorkId( spep_7 + 10, SE029, 74 );
SE030 = playSe( spep_7 + 24, 1213 );
setSeVolumeByWorkId( spep_7 + 24, SE030, 0 );
setSeVolumeByWorkId( spep_7 + 25, SE030, 1.7 );
setSeVolumeByWorkId( spep_7 + 26, SE030, 3.4 );
setSeVolumeByWorkId( spep_7 + 27, SE030, 5.1 );
setSeVolumeByWorkId( spep_7 + 28, SE030, 6.8 );
setSeVolumeByWorkId( spep_7 + 29, SE030, 8.5 );
setSeVolumeByWorkId( spep_7 + 30, SE030, 10.2 );
setSeVolumeByWorkId( spep_7 + 31, SE030, 11.9 );
setSeVolumeByWorkId( spep_7 + 32, SE030, 13.6 );
setSeVolumeByWorkId( spep_7 + 33, SE030, 15.3 );
setSeVolumeByWorkId( spep_7 + 34, SE030, 17 );
setSeVolumeByWorkId( spep_7 + 35, SE030, 18.7 );
setSeVolumeByWorkId( spep_7 + 36, SE030, 20.4 );
setSeVolumeByWorkId( spep_7 + 37, SE030, 22.1 );
setSeVolumeByWorkId( spep_7 + 38, SE030, 23.8 );
setSeVolumeByWorkId( spep_7 + 39, SE030, 25.5 );
setSeVolumeByWorkId( spep_7 + 40, SE030, 27.2 );
setSeVolumeByWorkId( spep_7 + 41, SE030, 28.9 );
setSeVolumeByWorkId( spep_7 + 42, SE030, 30.6 );
setSeVolumeByWorkId( spep_7 + 43, SE030, 32.3 );
setSeVolumeByWorkId( spep_7 + 44, SE030, 34 );
setSeVolumeByWorkId( spep_7 + 45, SE030, 35.7 );
setSeVolumeByWorkId( spep_7 + 46, SE030, 37.4 );
setSeVolumeByWorkId( spep_7 + 47, SE030, 39.1 );
setSeVolumeByWorkId( spep_7 + 48, SE030, 40.8 );
setSeVolumeByWorkId( spep_7 + 49, SE030, 42.5 );
setSeVolumeByWorkId( spep_7 + 50, SE030, 44.2 );
setSeVolumeByWorkId( spep_7 + 51, SE030, 45.9 );
setSeVolumeByWorkId( spep_7 + 52, SE030, 47.6 );
setSeVolumeByWorkId( spep_7 + 53, SE030, 49.3 );
setSeVolumeByWorkId( spep_7 + 54, SE030, 51 );
setSeVolumeByWorkId( spep_7 + 55, SE030, 52.7 );
setSeVolumeByWorkId( spep_7 + 56, SE030, 54.4 );
setSeVolumeByWorkId( spep_7 + 57, SE030, 56.1 );
setSeVolumeByWorkId( spep_7 + 58, SE030, 57.8 );
setSeVolumeByWorkId( spep_7 + 59, SE030, 59.5 );
setSeVolumeByWorkId( spep_7 + 60, SE030, 61.2 );
setSeVolumeByWorkId( spep_7 + 61, SE030, 62.9 );
setSeVolumeByWorkId( spep_7 + 62, SE030, 64.6 );
setSeVolumeByWorkId( spep_7 + 63, SE030, 66.3 );
setSeVolumeByWorkId( spep_7 + 64, SE030, 68 );
setSeVolumeByWorkId( spep_7 + 65, SE030, 69.7 );
setSeVolumeByWorkId( spep_7 + 66, SE030, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8=spep_7+138;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_8 + 128, finish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 128, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 128, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 128, finish, 255 );

-- ** エフェクト等 ** --
ctfinish = entryEffect( spep_8 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, ctfinish, 0, 0, 0 );
setEffMoveKey( spep_8 + 128, ctfinish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, ctfinish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 128, ctfinish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, ctfinish, 0 );
setEffRotateKey( spep_8 + 128, ctfinish, 0 );
setEffAlphaKey( spep_8 + 0, ctfinish, 255 );
setEffAlphaKey( spep_8 + 128, ctfinish, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_8 + 114, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 114, KO, 0, 0, 0 );
setEffMoveKey( spep_8 + 216, KO, 0, 0, 0 );
setEffScaleKey( spep_8 + 114, KO, 1.0, 1.0 );
setEffScaleKey( spep_8 + 216, KO, 1.0, 1.0 );
setEffRotateKey( spep_8 + 114, KO, 0 );
setEffRotateKey( spep_8 + 216, KO, 0 );
setEffAlphaKey( spep_8 + 114, KO, 255 );
setEffAlphaKey( spep_8 + 216, KO, 255 );

--SE
--フラッシュ発射
stopSe( spep_8 + 12, SE023, 6 );

--フラッシュ飛んでいく
SE032 = playSe( spep_8 + 0, 1304,"",0.6 );
SE033 = playSe( spep_8 + 0, 1161 );
setSeVolumeByWorkId( spep_8 + 0, SE033, 68 );
SE031 = playSe( spep_8 + 2, 1212 );
setSeVolumeByWorkId( spep_8 + 2, SE031, 0 );
setSeVolumeByWorkId( spep_8 + 3, SE031, 5.9 );
setSeVolumeByWorkId( spep_8 + 4, SE031, 11.8 );
setSeVolumeByWorkId( spep_8 + 5, SE031, 17.7 );
setSeVolumeByWorkId( spep_8 + 6, SE031, 23.6 );
setSeVolumeByWorkId( spep_8 + 7, SE031, 29.5 );
setSeVolumeByWorkId( spep_8 + 8, SE031, 35.4 );
setSeVolumeByWorkId( spep_8 + 9, SE031, 41.3 );
setSeVolumeByWorkId( spep_8 + 10, SE031, 47 );
setStartTimeMs( SE031,  650 );
SE034 = playSe( spep_8 + 8, 1124 );
setSeVolumeByWorkId( spep_8 + 8, SE034, 0 );
setSeVolumeByWorkId( spep_8 + 9, SE034, 1.9 );
setSeVolumeByWorkId( spep_8 + 10, SE034, 3.8 );
setSeVolumeByWorkId( spep_8 + 11, SE034, 5.7 );
setSeVolumeByWorkId( spep_8 + 12, SE034, 7.6 );
setSeVolumeByWorkId( spep_8 + 13, SE034, 9.5 );
setSeVolumeByWorkId( spep_8 + 14, SE034, 11.4 );
setSeVolumeByWorkId( spep_8 + 15, SE034, 13.3 );
setSeVolumeByWorkId( spep_8 + 16, SE034, 15.2 );
setSeVolumeByWorkId( spep_8 + 17, SE034, 17.1 );
setSeVolumeByWorkId( spep_8 + 18, SE034, 19 );
setSeVolumeByWorkId( spep_8 + 19, SE034, 20.9 );
setSeVolumeByWorkId( spep_8 + 20, SE034, 22.8 );
setSeVolumeByWorkId( spep_8 + 21, SE034, 24.7 );
setSeVolumeByWorkId( spep_8 + 22, SE034, 26.6 );
setSeVolumeByWorkId( spep_8 + 23, SE034, 28.5 );
setSeVolumeByWorkId( spep_8 + 24, SE034, 30.4 );
setSeVolumeByWorkId( spep_8 + 25, SE034, 32.3 );
setSeVolumeByWorkId( spep_8 + 26, SE034, 34.2 );
setSeVolumeByWorkId( spep_8 + 27, SE034, 36.1 );
setSeVolumeByWorkId( spep_8 + 28, SE034, 38 );
setSeVolumeByWorkId( spep_8 + 29, SE034, 39.9 );
setSeVolumeByWorkId( spep_8 + 30, SE034, 41.8 );
setSeVolumeByWorkId( spep_8 + 31, SE034, 43.7 );
setSeVolumeByWorkId( spep_8 + 32, SE034, 45.6 );
setSeVolumeByWorkId( spep_8 + 33, SE034, 47.5 );
setSeVolumeByWorkId( spep_8 + 34, SE034, 49.4 );
setSeVolumeByWorkId( spep_8 + 35, SE034, 51.3 );
setSeVolumeByWorkId( spep_8 + 36, SE034, 53.2 );
setSeVolumeByWorkId( spep_8 + 37, SE034, 55.1 );
setSeVolumeByWorkId( spep_8 + 38, SE034, 57 );
setSeVolumeByWorkId( spep_8 + 39, SE034, 58.9 );
setSeVolumeByWorkId( spep_8 + 40, SE034, 62 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 220, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_8 + 8 );
entryFade( spep_8 +108, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_8 + 118 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気弾かまえ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 440, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 440, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 440, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 438, tame, 255 );
setEffAlphaKey( spep_0 + 439, tame, 255 );
setEffAlphaKey( spep_0 + 440, tame, 0 );

--文字エントリー
cttame = entryEffect( spep_0 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, cttame, 0, 0, 0 );
setEffMoveKey( spep_0 + 440, cttame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, cttame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 440, cttame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cttame, 0 );
setEffRotateKey( spep_0 + 440, cttame, 0 );
setEffAlphaKey( spep_0 + 0, cttame, 255 );
setEffAlphaKey( spep_0 + 440, cttame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +298;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1181 );

--構える
SE002 = playSe( spep_0 + 8, 1233 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 9, SE002, 16.2 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 32 );
setStartTimeMs( SE002,  50 );
setPitch( spep_0 + 8, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );
SE003 = playSe( spep_0 + 8, 1108 );
SE004 = playSe( spep_0 + 10, 1106 );

--腕広げる
SE005 = playSe( spep_0 + 34, 1003 );
setSeVolumeByWorkId( spep_0 + 34, SE005, 67 );

--気ダメ
SE006 = playSe( spep_0 + 68, 1226 );
setSeVolumeByWorkId( spep_0 + 68, SE006, 67 );
setSeVolumeByWorkId( spep_0 +396,SE006,67);
setSeVolumeByWorkId( spep_0 +397,SE006,67.186);
setSeVolumeByWorkId( spep_0 +398,SE006,67.372);
setSeVolumeByWorkId( spep_0 +399,SE006,67.558);
setSeVolumeByWorkId( spep_0 +400,SE006,67.744);
setSeVolumeByWorkId( spep_0 +401,SE006,67.93);
setSeVolumeByWorkId( spep_0 +402,SE006,68.116);
setSeVolumeByWorkId( spep_0 +403,SE006,68.302);
setSeVolumeByWorkId( spep_0 +404,SE006,68.488);
setSeVolumeByWorkId( spep_0 +405,SE006,68.674);
setSeVolumeByWorkId( spep_0 +406,SE006,68.86);
setSeVolumeByWorkId( spep_0 +407,SE006,69.046);
setSeVolumeByWorkId( spep_0 +408,SE006,69.232);
setSeVolumeByWorkId( spep_0 +409,SE006,69.418);
setSeVolumeByWorkId( spep_0 +410,SE006,69.604);
setSeVolumeByWorkId( spep_0 +411,SE006,69.79);
setSeVolumeByWorkId( spep_0 +412,SE006,69.976);
setSeVolumeByWorkId( spep_0 +413,SE006,70.162);
setSeVolumeByWorkId( spep_0 +414,SE006,70.348);
setSeVolumeByWorkId( spep_0 +415,SE006,70.534);
setSeVolumeByWorkId( spep_0 +416,SE006,70.72);
setSeVolumeByWorkId( spep_0 +417,SE006,70.906);
setSeVolumeByWorkId( spep_0 +418,SE006,71.092);
setSeVolumeByWorkId( spep_0 +419,SE006,71.278);
setSeVolumeByWorkId( spep_0 +420,SE006,71.464);
setSeVolumeByWorkId( spep_0 +421,SE006,71.65);
setSeVolumeByWorkId( spep_0 +422,SE006,71.836);
setSeVolumeByWorkId( spep_0 +423,SE006,72.022);
setSeVolumeByWorkId( spep_0 +424,SE006,72.208);
setSeVolumeByWorkId( spep_0 +425,SE006,72.394);
setSeVolumeByWorkId( spep_0 +426,SE006,72.58);
setSeVolumeByWorkId( spep_0 +427,SE006,72.766);
setSeVolumeByWorkId( spep_0 +428,SE006,72.952);
setSeVolumeByWorkId( spep_0 +429,SE006,73.138);
setSeVolumeByWorkId( spep_0 +430,SE006,73.324);
setSeVolumeByWorkId( spep_0 +431,SE006,73.51);
setSeVolumeByWorkId( spep_0 +432,SE006,73.696);
setSeVolumeByWorkId( spep_0 +433,SE006,73.882);
setSeVolumeByWorkId( spep_0 +434,SE006,74.068);
setSeVolumeByWorkId( spep_0 +435,SE006,74.254);
setSeVolumeByWorkId( spep_0 +436,SE006,74.44);
setSeVolumeByWorkId( spep_0 +437,SE006,74.626);
setSeVolumeByWorkId( spep_0 +438,SE006,74.812);
setSeVolumeByWorkId( spep_0 +439,SE006,74.998);
setSeVolumeByWorkId( spep_0 +440,SE006,75.184);
setSeVolumeByWorkId( spep_0 +441,SE006,75.37);
setSeVolumeByWorkId( spep_0 +442,SE006,75.556);
setSeVolumeByWorkId( spep_0 +443,SE006,75.742);
setSeVolumeByWorkId( spep_0 +444,SE006,75.928);
setSeVolumeByWorkId( spep_0 +445,SE006,76.114);
setSeVolumeByWorkId( spep_0 +446,SE006,76.3);
setSeVolumeByWorkId( spep_0 +447,SE006,76.486);
setSeVolumeByWorkId( spep_0 +448,SE006,76.672);
setSeVolumeByWorkId( spep_0 +449,SE006,76.858);
setSeVolumeByWorkId( spep_0 +450,SE006,77.044);
setSeVolumeByWorkId( spep_0 +451,SE006,77.23);
setSeVolumeByWorkId( spep_0 +452,SE006,77.416);
setSeVolumeByWorkId( spep_0 +453,SE006,77.602);
setSeVolumeByWorkId( spep_0 +454,SE006,77.788);
setSeVolumeByWorkId( spep_0 +455,SE006,77.974);
setSeVolumeByWorkId( spep_0 +456,SE006,78.16);
setSeVolumeByWorkId( spep_0 +457,SE006,78.346);
setSeVolumeByWorkId( spep_0 +458,SE006,78.532);
setSeVolumeByWorkId( spep_0 +459,SE006,78.718);
setSeVolumeByWorkId( spep_0 +460,SE006,78.904);
setSeVolumeByWorkId( spep_0 +461,SE006,79.09);
setSeVolumeByWorkId( spep_0 +462,SE006,79.276);
setSeVolumeByWorkId( spep_0 +463,SE006,79.462);
setSeVolumeByWorkId( spep_0 +464,SE006,79.648);
setSeVolumeByWorkId( spep_0 +465,SE006,79.834);
setSeVolumeByWorkId( spep_0 +466,SE006,80.02);
setSeVolumeByWorkId( spep_0 +467,SE006,80.206);
setSeVolumeByWorkId( spep_0 +468,SE006,80.392);
setSeVolumeByWorkId( spep_0 +469,SE006,80.578);
setSeVolumeByWorkId( spep_0 +470,SE006,80.764);
setSeVolumeByWorkId( spep_0 +471,SE006,80.95);
setSeVolumeByWorkId( spep_0 +472,SE006,81.136);
setSeVolumeByWorkId( spep_0 +473,SE006,81.322);
setSeVolumeByWorkId( spep_0 +474,SE006,81.508);
setSeVolumeByWorkId( spep_0 +475,SE006,81.694);
setSeVolumeByWorkId( spep_0 +476,SE006,81.88);
setSeVolumeByWorkId( spep_0 +477,SE006,82.066);
setSeVolumeByWorkId( spep_0 +478,SE006,82.252);
setSeVolumeByWorkId( spep_0 +479,SE006,82.438);
setSeVolumeByWorkId( spep_0 +480,SE006,82.624);
setSeVolumeByWorkId( spep_0 +481,SE006,82.81);
setSeVolumeByWorkId( spep_0 +482,SE006,82.996);
setSeVolumeByWorkId( spep_0 +483,SE006,83.182);
setSeVolumeByWorkId( spep_0 +484,SE006,83.368);
setSeVolumeByWorkId( spep_0 +485,SE006,83.554);
setSeVolumeByWorkId( spep_0 +486,SE006,83.74);
setSeVolumeByWorkId( spep_0 +487,SE006,83.926);
setSeVolumeByWorkId( spep_0 +488,SE006,84.112);
setSeVolumeByWorkId( spep_0 +489,SE006,84.298);
setSeVolumeByWorkId( spep_0 +490,SE006,84.484);
setSeVolumeByWorkId( spep_0 +491,SE006,84.67);
setSeVolumeByWorkId( spep_0 +492,SE006,84.856);
setSeVolumeByWorkId( spep_0 +493,SE006,85.042);
setSeVolumeByWorkId( spep_0 +494,SE006,85.228);
setSeVolumeByWorkId( spep_0 +495,SE006,85.414);
setSeVolumeByWorkId( spep_0 +496,SE006,85.6);
setSeVolumeByWorkId( spep_0 +497,SE006,85.786);
setSeVolumeByWorkId( spep_0 +498,SE006,85.972);
setSeVolumeByWorkId( spep_0 +499,SE006,86.158);
setSeVolumeByWorkId( spep_0 +500,SE006,86.344);
setSeVolumeByWorkId( spep_0 +501,SE006,86.53);
setSeVolumeByWorkId( spep_0 +502,SE006,86.716);
setSeVolumeByWorkId( spep_0 +503,SE006,86.902);
setSeVolumeByWorkId( spep_0 +504,SE006,87.088);
setSeVolumeByWorkId( spep_0 +505,SE006,87.274);
setSeVolumeByWorkId( spep_0 +506,SE006,87.46);
setSeVolumeByWorkId( spep_0 +507,SE006,87.646);
setSeVolumeByWorkId( spep_0 +508,SE006,87.832);
setSeVolumeByWorkId( spep_0 +509,SE006,88.018);
setSeVolumeByWorkId( spep_0 +510,SE006,88.204);
setSeVolumeByWorkId( spep_0 +511,SE006,88.39);
setSeVolumeByWorkId( spep_0 +512,SE006,88.576);
setSeVolumeByWorkId( spep_0 +513,SE006,88.762);
setSeVolumeByWorkId( spep_0 +514,SE006,88.948);
setSeVolumeByWorkId( spep_0 +515,SE006,89.134);
setSeVolumeByWorkId( spep_0 +516,SE006,89.32);
setSeVolumeByWorkId( spep_0 +517,SE006,89.506);
setSeVolumeByWorkId( spep_0 +518,SE006,89.692);
setSeVolumeByWorkId( spep_0 +519,SE006,89.878);
setSeVolumeByWorkId( spep_0 +520,SE006,90.064);
setSeVolumeByWorkId( spep_0 +521,SE006,90.25);
setSeVolumeByWorkId( spep_0 +522,SE006,90.436);
setSeVolumeByWorkId( spep_0 +523,SE006,90.622);
setSeVolumeByWorkId( spep_0 +524,SE006,90.808);
setSeVolumeByWorkId( spep_0 +525,SE006,90.994);
setSeVolumeByWorkId( spep_0 +526,SE006,91.18);
setSeVolumeByWorkId( spep_0 +527,SE006,91.366);
setSeVolumeByWorkId( spep_0 +528,SE006,91.552);
setSeVolumeByWorkId( spep_0 +529,SE006,91.738);
setSeVolumeByWorkId( spep_0 +530,SE006,91.924);
setSeVolumeByWorkId( spep_0 +531,SE006,92.11);
setSeVolumeByWorkId( spep_0 +532,SE006,92.296);
setSeVolumeByWorkId( spep_0 +533,SE006,92.482);
setSeVolumeByWorkId( spep_0 +534,SE006,92.668);
setSeVolumeByWorkId( spep_0 +535,SE006,92.854);
setSeVolumeByWorkId( spep_0 +536,SE006,93.04);
setSeVolumeByWorkId( spep_0 +537,SE006,93.226);
setSeVolumeByWorkId( spep_0 +538,SE006,93.412);
setSeVolumeByWorkId( spep_0 +539,SE006,93.598);
setSeVolumeByWorkId( spep_0 +540,SE006,93.784);
setSeVolumeByWorkId( spep_0 +541,SE006,93.97);
setSeVolumeByWorkId( spep_0 +542,SE006,94.156);
setSeVolumeByWorkId( spep_0 +543,SE006,94.342);
setSeVolumeByWorkId( spep_0 +544,SE006,94.528);
setSeVolumeByWorkId( spep_0 +545,SE006,94.714);
setSeVolumeByWorkId( spep_0 +546,SE006,94.9);
setSeVolumeByWorkId( spep_0 +547,SE006,95.086);
setSeVolumeByWorkId( spep_0 +548,SE006,95.272);
setSeVolumeByWorkId( spep_0 +549,SE006,95.458);
setSeVolumeByWorkId( spep_0 +550,SE006,95.644);
setSeVolumeByWorkId( spep_0 +551,SE006,95.83);
setSeVolumeByWorkId( spep_0 +552,SE006,96.016);
setSeVolumeByWorkId( spep_0 +553,SE006,96.202);
setSeVolumeByWorkId( spep_0 +554,SE006,96.388);
setSeVolumeByWorkId( spep_0 +555,SE006,96.574);
setSeVolumeByWorkId( spep_0 +556,SE006,96.76);
setSeVolumeByWorkId( spep_0 +557,SE006,96.946);
setSeVolumeByWorkId( spep_0 +558,SE006,97.132);
setSeVolumeByWorkId( spep_0 +559,SE006,97.318);
setSeVolumeByWorkId( spep_0 +560,SE006,97.504);
setSeVolumeByWorkId( spep_0 +561,SE006,97.69);
setSeVolumeByWorkId( spep_0 +562,SE006,97.876);
setSeVolumeByWorkId( spep_0 +563,SE006,98.062);
setSeVolumeByWorkId( spep_0 +564,SE006,98.248);
setSeVolumeByWorkId( spep_0 +565,SE006,98.434);
setSeVolumeByWorkId( spep_0 +566,SE006,98.62);
setSeVolumeByWorkId( spep_0 +567,SE006,98.806);
setSeVolumeByWorkId( spep_0 +568,SE006,98.992);
setSeVolumeByWorkId( spep_0 +569,SE006,99.178);
setSeVolumeByWorkId( spep_0 +570,SE006,99.364);
setSeVolumeByWorkId( spep_0 +571,SE006,99.55);
setSeVolumeByWorkId( spep_0 +572,SE006,99.736);
setSeVolumeByWorkId( spep_0 +573,SE006,99.922);
setSeVolumeByWorkId( spep_0 +574,SE006,100.108);
setSeVolumeByWorkId( spep_0 +575,SE006,100.294);
setSeVolumeByWorkId( spep_0 +576,SE006,100.48);
setSeVolumeByWorkId( spep_0 +577,SE006,100.666);
setSeVolumeByWorkId( spep_0 +578,SE006,100.852);
setSeVolumeByWorkId( spep_0 +579,SE006,101.038);
setSeVolumeByWorkId( spep_0 +580,SE006,101.224);
setSeVolumeByWorkId( spep_0 +581,SE006,101.41);
setSeVolumeByWorkId( spep_0 +582,SE006,101.596);
setSeVolumeByWorkId( spep_0 +583,SE006,101.782);
setSeVolumeByWorkId( spep_0 +584,SE006,101.968);
setSeVolumeByWorkId( spep_0 +585,SE006,102.154);
setSeVolumeByWorkId( spep_0 +586,SE006,102.34);
setSeVolumeByWorkId( spep_0 +587,SE006,102.526);
setSeVolumeByWorkId( spep_0 +588,SE006,102.712);
setSeVolumeByWorkId( spep_0 +589,SE006,102.898);
setSeVolumeByWorkId( spep_0 +590,SE006,103.084);
setSeVolumeByWorkId( spep_0 +591,SE006,103.27);
setSeVolumeByWorkId( spep_0 +592,SE006,103.456);
setSeVolumeByWorkId( spep_0 +593,SE006,103.642);
setSeVolumeByWorkId( spep_0 +594,SE006,103.828);
setSeVolumeByWorkId( spep_0 +595,SE006,104.014);
setSeVolumeByWorkId( spep_0 +596,SE006,104.2);
setSeVolumeByWorkId( spep_0 +597,SE006,104.386);
setSeVolumeByWorkId( spep_0 +598,SE006,104.572);
setSeVolumeByWorkId( spep_0 +599,SE006,104.758);
setSeVolumeByWorkId( spep_0 +600,SE006,104.944);
setSeVolumeByWorkId( spep_0 +601,SE006,105.13);
setSeVolumeByWorkId( spep_0 +602,SE006,105.316);
setSeVolumeByWorkId( spep_0 +603,SE006,105.502);
setSeVolumeByWorkId( spep_0 +604,SE006,105.688);
setSeVolumeByWorkId( spep_0 +605,SE006,105.874);
setSeVolumeByWorkId( spep_0 +606,SE006,106.06);
setSeVolumeByWorkId( spep_0 +607,SE006,106.246);
setSeVolumeByWorkId( spep_0 +608,SE006,106.432);
setSeVolumeByWorkId( spep_0 +609,SE006,106.618);
setSeVolumeByWorkId( spep_0 +610,SE006,106.804);
setSeVolumeByWorkId( spep_0 +611,SE006,106.99);
setSeVolumeByWorkId( spep_0 +612,SE006,107.176);
setSeVolumeByWorkId( spep_0 +613,SE006,107.362);
setSeVolumeByWorkId( spep_0 +614,SE006,107.548);
setSeVolumeByWorkId( spep_0 +615,SE006,107.734);
setSeVolumeByWorkId( spep_0 +616,SE006,107.92);
setSeVolumeByWorkId( spep_0 +617,SE006,108.106);
setSeVolumeByWorkId( spep_0 +618,SE006,108.292);
setSeVolumeByWorkId( spep_0 +619,SE006,108.478);
setSeVolumeByWorkId( spep_0 +620,SE006,108.664);
setSeVolumeByWorkId( spep_0 +621,SE006,108.85);
setSeVolumeByWorkId( spep_0 +622,SE006,109.036);
setSeVolumeByWorkId( spep_0 +623,SE006,109.222);
setSeVolumeByWorkId( spep_0 +624,SE006,109.408);
setSeVolumeByWorkId( spep_0 +625,SE006,109.594);
setSeVolumeByWorkId( spep_0 +626,SE006,109.78);
setSeVolumeByWorkId( spep_0 +627,SE006,109.966);
setSeVolumeByWorkId( spep_0 +628,SE006,110);
SE007 = playSe( spep_0 + 68, 1035 );
setSeVolumeByWorkId( spep_0 + 68, SE007, 79 );
SE008 = playSe( spep_0 + 68, 1011 );
setSeVolumeByWorkId( spep_0 + 68, SE008, 67 );

--いなづま
SE009 = playSe( spep_0 + 68, 1147 );
setSeVolumeByWorkId( spep_0 + 68, SE009, 56 );
SE016 = playSe( spep_0 + 410, 1147 );
setSeVolumeByWorkId( spep_0 + 410, SE016, 56 );

--ファイナルフラッシュ溜め
SE010 = playSe( spep_0 + 184, 1210,"",0.5 );
setSeVolumeByWorkId( spep_0 +184,SE010,100);
setSeVolumeByWorkId( spep_0 +396,SE010,100);
setSeVolumeByWorkId( spep_0 +397,SE010,100.689);
setSeVolumeByWorkId( spep_0 +398,SE010,101.378);
setSeVolumeByWorkId( spep_0 +399,SE010,102.067);
setSeVolumeByWorkId( spep_0 +400,SE010,102.756);
setSeVolumeByWorkId( spep_0 +401,SE010,103.445);
setSeVolumeByWorkId( spep_0 +402,SE010,104.134);
setSeVolumeByWorkId( spep_0 +403,SE010,104.823);
setSeVolumeByWorkId( spep_0 +404,SE010,105.512);
setSeVolumeByWorkId( spep_0 +405,SE010,106.201);
setSeVolumeByWorkId( spep_0 +406,SE010,106.89);
setSeVolumeByWorkId( spep_0 +407,SE010,107.579);
setSeVolumeByWorkId( spep_0 +408,SE010,108.268);
setSeVolumeByWorkId( spep_0 +409,SE010,108.957);
setSeVolumeByWorkId( spep_0 +410,SE010,109.646);
setSeVolumeByWorkId( spep_0 +411,SE010,110.335);
setSeVolumeByWorkId( spep_0 +412,SE010,111.024);
setSeVolumeByWorkId( spep_0 +413,SE010,111.713);
setSeVolumeByWorkId( spep_0 +414,SE010,112.402);
setSeVolumeByWorkId( spep_0 +415,SE010,113.091);
setSeVolumeByWorkId( spep_0 +416,SE010,113.78);
setSeVolumeByWorkId( spep_0 +417,SE010,114.469);
setSeVolumeByWorkId( spep_0 +418,SE010,115.158);
setSeVolumeByWorkId( spep_0 +419,SE010,115.847);
setSeVolumeByWorkId( spep_0 +420,SE010,116.536);
setSeVolumeByWorkId( spep_0 +421,SE010,117.225);
setSeVolumeByWorkId( spep_0 +422,SE010,117.914);
setSeVolumeByWorkId( spep_0 +423,SE010,118.603);
setSeVolumeByWorkId( spep_0 +424,SE010,119.292);
setSeVolumeByWorkId( spep_0 +425,SE010,119.981);
setSeVolumeByWorkId( spep_0 +426,SE010,120.67);
setSeVolumeByWorkId( spep_0 +427,SE010,121.359);
setSeVolumeByWorkId( spep_0 +428,SE010,122.048);
setSeVolumeByWorkId( spep_0 +429,SE010,122.737);
setSeVolumeByWorkId( spep_0 +430,SE010,123.426);
setSeVolumeByWorkId( spep_0 +431,SE010,124.115);
setSeVolumeByWorkId( spep_0 +432,SE010,124.804);
setSeVolumeByWorkId( spep_0 +433,SE010,125.493);
setSeVolumeByWorkId( spep_0 +434,SE010,126.182);
setSeVolumeByWorkId( spep_0 +435,SE010,126.871);
setSeVolumeByWorkId( spep_0 +436,SE010,127.56);
setSeVolumeByWorkId( spep_0 +437,SE010,128.249);
setSeVolumeByWorkId( spep_0 +438,SE010,128.938);
setSeVolumeByWorkId( spep_0 +439,SE010,129.627);
setSeVolumeByWorkId( spep_0 +440,SE010,130.316);
setSeVolumeByWorkId( spep_0 +441,SE010,131.005);
setSeVolumeByWorkId( spep_0 +442,SE010,131.694);
setSeVolumeByWorkId( spep_0 +443,SE010,132.383);
setSeVolumeByWorkId( spep_0 +444,SE010,133.072);
setSeVolumeByWorkId( spep_0 +445,SE010,133.761);
setSeVolumeByWorkId( spep_0 +446,SE010,134.45);
setSeVolumeByWorkId( spep_0 +447,SE010,135.139);
setSeVolumeByWorkId( spep_0 +448,SE010,135.828);
setSeVolumeByWorkId( spep_0 +449,SE010,136.517);
setSeVolumeByWorkId( spep_0 +450,SE010,137.206);
setSeVolumeByWorkId( spep_0 +451,SE010,137.895);
setSeVolumeByWorkId( spep_0 +452,SE010,138.584);
setSeVolumeByWorkId( spep_0 +453,SE010,139.273);
setSeVolumeByWorkId( spep_0 +454,SE010,139.962);
setSeVolumeByWorkId( spep_0 +455,SE010,140.651);
setSeVolumeByWorkId( spep_0 +456,SE010,141.34);
setSeVolumeByWorkId( spep_0 +457,SE010,142.029);
setSeVolumeByWorkId( spep_0 +458,SE010,142.718);
setSeVolumeByWorkId( spep_0 +459,SE010,143.407);
setSeVolumeByWorkId( spep_0 +460,SE010,144.096);
setSeVolumeByWorkId( spep_0 +461,SE010,144.785);
setSeVolumeByWorkId( spep_0 +462,SE010,145.474);
setSeVolumeByWorkId( spep_0 +463,SE010,146.163);
setSeVolumeByWorkId( spep_0 +464,SE010,146.852);
setSeVolumeByWorkId( spep_0 +465,SE010,147.541);
setSeVolumeByWorkId( spep_0 +466,SE010,148.23);
setSeVolumeByWorkId( spep_0 +467,SE010,148.918);
setSeVolumeByWorkId( spep_0 +468,SE010,149.607);
setSeVolumeByWorkId( spep_0 +469,SE010,150.296);
setSeVolumeByWorkId( spep_0 +470,SE010,150.985);
setSeVolumeByWorkId( spep_0 +471,SE010,151.674);
setSeVolumeByWorkId( spep_0 +472,SE010,152.363);
setSeVolumeByWorkId( spep_0 +473,SE010,153.052);
setSeVolumeByWorkId( spep_0 +474,SE010,153.741);
setSeVolumeByWorkId( spep_0 +475,SE010,154.43);
setSeVolumeByWorkId( spep_0 +476,SE010,155.119);
setSeVolumeByWorkId( spep_0 +477,SE010,155.808);
setSeVolumeByWorkId( spep_0 +478,SE010,156.497);
setSeVolumeByWorkId( spep_0 +479,SE010,157.186);
setSeVolumeByWorkId( spep_0 +480,SE010,157.875);
setSeVolumeByWorkId( spep_0 +481,SE010,158.564);
setSeVolumeByWorkId( spep_0 +482,SE010,159.253);
setSeVolumeByWorkId( spep_0 +483,SE010,159.942);
setSeVolumeByWorkId( spep_0 +484,SE010,160.631);
setSeVolumeByWorkId( spep_0 +485,SE010,161.32);
setSeVolumeByWorkId( spep_0 +486,SE010,162.009);
setSeVolumeByWorkId( spep_0 +487,SE010,162.698);
setSeVolumeByWorkId( spep_0 +488,SE010,163.387);
setSeVolumeByWorkId( spep_0 +489,SE010,164.076);
setSeVolumeByWorkId( spep_0 +490,SE010,164.765);
setSeVolumeByWorkId( spep_0 +491,SE010,165.454);
setSeVolumeByWorkId( spep_0 +492,SE010,166.143);
setSeVolumeByWorkId( spep_0 +493,SE010,166.832);
setSeVolumeByWorkId( spep_0 +494,SE010,167.521);
setSeVolumeByWorkId( spep_0 +495,SE010,168.21);
setSeVolumeByWorkId( spep_0 +496,SE010,168.899);
setSeVolumeByWorkId( spep_0 +497,SE010,169.588);
setSeVolumeByWorkId( spep_0 +498,SE010,170.277);
setSeVolumeByWorkId( spep_0 +499,SE010,170.966);
setSeVolumeByWorkId( spep_0 +500,SE010,171.655);
setSeVolumeByWorkId( spep_0 +501,SE010,172.344);
setSeVolumeByWorkId( spep_0 +502,SE010,173.033);
setSeVolumeByWorkId( spep_0 +503,SE010,173.722);
setSeVolumeByWorkId( spep_0 +504,SE010,174.411);
setSeVolumeByWorkId( spep_0 +505,SE010,175.1);
setSeVolumeByWorkId( spep_0 +506,SE010,175.789);
setSeVolumeByWorkId( spep_0 +507,SE010,176.478);
setSeVolumeByWorkId( spep_0 +508,SE010,177.167);
setSeVolumeByWorkId( spep_0 +509,SE010,177.856);
setSeVolumeByWorkId( spep_0 +510,SE010,178.545);
setSeVolumeByWorkId( spep_0 +511,SE010,179.234);
setSeVolumeByWorkId( spep_0 +512,SE010,179.923);
setSeVolumeByWorkId( spep_0 +513,SE010,180.612);
setSeVolumeByWorkId( spep_0 +514,SE010,181.301);
setSeVolumeByWorkId( spep_0 +515,SE010,181.99);
setSeVolumeByWorkId( spep_0 +516,SE010,182.679);
setSeVolumeByWorkId( spep_0 +517,SE010,183.368);
setSeVolumeByWorkId( spep_0 +518,SE010,184.057);
setSeVolumeByWorkId( spep_0 +519,SE010,184.746);
setSeVolumeByWorkId( spep_0 +520,SE010,185.435);
setSeVolumeByWorkId( spep_0 +521,SE010,186.124);
setSeVolumeByWorkId( spep_0 +522,SE010,186.813);
setSeVolumeByWorkId( spep_0 +523,SE010,187.502);
setSeVolumeByWorkId( spep_0 +524,SE010,188.191);
setSeVolumeByWorkId( spep_0 +525,SE010,188.88);
setSeVolumeByWorkId( spep_0 +526,SE010,189.569);
setSeVolumeByWorkId( spep_0 +527,SE010,190.258);
setSeVolumeByWorkId( spep_0 +528,SE010,190.947);
setSeVolumeByWorkId( spep_0 +529,SE010,191.636);
setSeVolumeByWorkId( spep_0 +530,SE010,192.325);
setSeVolumeByWorkId( spep_0 +531,SE010,193.014);
setSeVolumeByWorkId( spep_0 +532,SE010,193.703);
setSeVolumeByWorkId( spep_0 +533,SE010,194.392);
setSeVolumeByWorkId( spep_0 +534,SE010,195.081);
setSeVolumeByWorkId( spep_0 +535,SE010,195.77);
setSeVolumeByWorkId( spep_0 +536,SE010,196.459);
setSeVolumeByWorkId( spep_0 +537,SE010,197.148);
setSeVolumeByWorkId( spep_0 +538,SE010,197.837);
setSeVolumeByWorkId( spep_0 +539,SE010,198.526);
setSeVolumeByWorkId( spep_0 +540,SE010,199.215);
setSeVolumeByWorkId( spep_0 +541,SE010,199.904);
setSeVolumeByWorkId( spep_0 +542,SE010,200.593);
setSeVolumeByWorkId( spep_0 +543,SE010,201.282);
setSeVolumeByWorkId( spep_0 +544,SE010,201.971);
setSeVolumeByWorkId( spep_0 +545,SE010,202.66);
setSeVolumeByWorkId( spep_0 +546,SE010,203.349);
setSeVolumeByWorkId( spep_0 +547,SE010,204.038);
setSeVolumeByWorkId( spep_0 +548,SE010,204.727);
setSeVolumeByWorkId( spep_0 +549,SE010,205.416);
setSeVolumeByWorkId( spep_0 +550,SE010,206.105);
setSeVolumeByWorkId( spep_0 +551,SE010,206.794);
setSeVolumeByWorkId( spep_0 +552,SE010,207.483);
setSeVolumeByWorkId( spep_0 +553,SE010,208.172);
setSeVolumeByWorkId( spep_0 +554,SE010,208.861);
setSeVolumeByWorkId( spep_0 +555,SE010,209.55);
setSeVolumeByWorkId( spep_0 +556,SE010,210.239);
setSeVolumeByWorkId( spep_0 +557,SE010,210.928);
setSeVolumeByWorkId( spep_0 +558,SE010,211.617);
setSeVolumeByWorkId( spep_0 +559,SE010,212.306);
setSeVolumeByWorkId( spep_0 +560,SE010,212.995);
setSeVolumeByWorkId( spep_0 +561,SE010,213.684);
setSeVolumeByWorkId( spep_0 +562,SE010,214.373);
setSeVolumeByWorkId( spep_0 +563,SE010,215.062);
setSeVolumeByWorkId( spep_0 +564,SE010,215.751);
setSeVolumeByWorkId( spep_0 +565,SE010,216.44);
setSeVolumeByWorkId( spep_0 +566,SE010,217.129);
setSeVolumeByWorkId( spep_0 +567,SE010,217.818);
setSeVolumeByWorkId( spep_0 +568,SE010,218.507);
setSeVolumeByWorkId( spep_0 +569,SE010,219.196);
setSeVolumeByWorkId( spep_0 +570,SE010,219.885);
setSeVolumeByWorkId( spep_0 +571,SE010,220.574);
setSeVolumeByWorkId( spep_0 +572,SE010,221.263);
setSeVolumeByWorkId( spep_0 +573,SE010,221.952);
setSeVolumeByWorkId( spep_0 +574,SE010,222.641);
setSeVolumeByWorkId( spep_0 +575,SE010,223.33);
setSeVolumeByWorkId( spep_0 +576,SE010,224.019);
setSeVolumeByWorkId( spep_0 +577,SE010,224.708);
setSeVolumeByWorkId( spep_0 +578,SE010,225.397);
setSeVolumeByWorkId( spep_0 +579,SE010,226.086);
setSeVolumeByWorkId( spep_0 +580,SE010,226.775);
setSeVolumeByWorkId( spep_0 +581,SE010,227.464);
setSeVolumeByWorkId( spep_0 +582,SE010,228.153);
setSeVolumeByWorkId( spep_0 +583,SE010,228.842);
setSeVolumeByWorkId( spep_0 +584,SE010,229.531);
setSeVolumeByWorkId( spep_0 +585,SE010,230.22);
setSeVolumeByWorkId( spep_0 +586,SE010,230.909);
setSeVolumeByWorkId( spep_0 +587,SE010,231.598);
setSeVolumeByWorkId( spep_0 +588,SE010,232.287);
setSeVolumeByWorkId( spep_0 +589,SE010,232.976);
setSeVolumeByWorkId( spep_0 +590,SE010,233.665);
setSeVolumeByWorkId( spep_0 +591,SE010,234.354);
setSeVolumeByWorkId( spep_0 +592,SE010,235.043);
setSeVolumeByWorkId( spep_0 +593,SE010,235.732);
setSeVolumeByWorkId( spep_0 +594,SE010,236.421);
setSeVolumeByWorkId( spep_0 +595,SE010,237.11);
setSeVolumeByWorkId( spep_0 +596,SE010,237.799);
setSeVolumeByWorkId( spep_0 +597,SE010,238.488);
setSeVolumeByWorkId( spep_0 +598,SE010,239.177);
setSeVolumeByWorkId( spep_0 +599,SE010,239.866);
setSeVolumeByWorkId( spep_0 +600,SE010,240.555);
setSeVolumeByWorkId( spep_0 +601,SE010,241.244);
setSeVolumeByWorkId( spep_0 +602,SE010,241.933);
setSeVolumeByWorkId( spep_0 +603,SE010,242.622);
setSeVolumeByWorkId( spep_0 +604,SE010,243.311);
setSeVolumeByWorkId( spep_0 +605,SE010,244);
setSeVolumeByWorkId( spep_0 +606,SE010,244.689);
setSeVolumeByWorkId( spep_0 +607,SE010,245.378);
setSeVolumeByWorkId( spep_0 +608,SE010,246.067);
setSeVolumeByWorkId( spep_0 +609,SE010,246.756);
setSeVolumeByWorkId( spep_0 +610,SE010,247.445);
setSeVolumeByWorkId( spep_0 +611,SE010,248.134);
setSeVolumeByWorkId( spep_0 +612,SE010,248.823);
setSeVolumeByWorkId( spep_0 +613,SE010,249.512);
setSeVolumeByWorkId( spep_0 +614,SE010,250.201);
setSeVolumeByWorkId( spep_0 +615,SE010,250.89);
setSeVolumeByWorkId( spep_0 +616,SE010,251.579);
setSeVolumeByWorkId( spep_0 +617,SE010,252.268);
setSeVolumeByWorkId( spep_0 +618,SE010,252.957);
setSeVolumeByWorkId( spep_0 +619,SE010,253.646);
setSeVolumeByWorkId( spep_0 +620,SE010,254.335);
setSeVolumeByWorkId( spep_0 +621,SE010,255.024);
setSeVolumeByWorkId( spep_0 +622,SE010,255.713);
setSeVolumeByWorkId( spep_0 +623,SE010,256.402);
setSeVolumeByWorkId( spep_0 +624,SE010,257.091);
setSeVolumeByWorkId( spep_0 +625,SE010,257.78);
setSeVolumeByWorkId( spep_0 +626,SE010,258.469);
setSeVolumeByWorkId( spep_0 +627,SE010,259.158);
setSeVolumeByWorkId( spep_0 +628,SE010,260);
setBandpassFilter	( spep_0 + 184, SE010, 24, 600 );

--気弾溜めはじめ
SE011 = playSe( spep_0 + 214, 1131 );
setSeVolumeByWorkId( spep_0 + 214, SE011, 62 );
SE012 = playSe( spep_0 + 216, 1296 );
setSeVolumeByWorkId( spep_0 + 216, SE012, 52 );
stopSe( spep_0 + 260, SE012, 58 );

--顔カットイン
SE014 = playSe( spep_x + 12, 1018 );

--気弾溜め終わりかけ
SE015 = playSe( spep_0 + 306, 1158 );
setSeVolumeByWorkId( spep_0 + 306, SE015, 56 );
setBandpassFilter	( spep_0 + 306, SE015, 600, 24000 );
SE017 = playSe( spep_0 + 410, 1215,"",0.5 );
setSeVolumeByWorkId( spep_0 + 410, SE017, 45 );

--空気圧
SE018 = playSe( spep_0 + 436, 1278 );
setSeVolumeByWorkId( spep_0 + 436, SE018, 86 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 440, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+440;
------------------------------------------------------
-- 煙で敵と対峙
------------------------------------------------------
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, confrontation_f, 0 );
setEffRotateKey( spep_1 + 48, confrontation_f, 0 );
setEffAlphaKey( spep_1 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_1 + 46, confrontation_f, 255 );
setEffAlphaKey( spep_1 + 47, confrontation_f, 255 );
setEffAlphaKey( spep_1 + 48, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, confrontation_b, 0 );
setEffRotateKey( spep_1 + 48, confrontation_b, 0 );
setEffAlphaKey( spep_1 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_1 + 46, confrontation_b, 255 );
setEffAlphaKey( spep_1 + 47, confrontation_b, 255 );
setEffAlphaKey( spep_1 + 48, confrontation_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 48, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
setBlendColor(spep_1 + 0,1,3,0.11,0.6,0.94,0.4);
setBlendColor(spep_1 + 50,1,3,0.11,0.6,0.94,0.4);
setBlendColor(spep_1 + 51,1,3,0.11,0.6,0.94,0.4);
setBlendColor(spep_1 + 52,1,3,0.11,0.6,0.94,0);

setMoveKey( spep_1 + 0, 1, 145.9, -65.5 , 0 );
setMoveKey( spep_1 + 48, 1, 145.9, -65.5 , 0 );

setScaleKey( spep_1 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_1 + 48, 1, 2.1, 2.1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 48, 1, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+48;

------------------------------------------------------
-- 気弾かまえ目線にらみ
------------------------------------------------------
-- ** エフェクト等 ** --
looking = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, looking, 0, 0, 0 );
setEffMoveKey( spep_2 + 50, looking, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, looking, -1.0, 1.0 );
setEffScaleKey( spep_2 + 50, looking, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, looking, 0 );
setEffRotateKey( spep_2 + 50, looking, 0 );
setEffAlphaKey( spep_2 + 0, looking, 255 );
setEffAlphaKey( spep_2 + 48, looking, 255 );
setEffAlphaKey( spep_2 + 49, looking, 255 );
setEffAlphaKey( spep_2 + 50, looking, 0 );

--SE
--空気圧
stopSe( spep_2 + 2, SE018, 36 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 52, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+50;
------------------------------------------------------
-- 発射直前
------------------------------------------------------
-- ** エフェクト等 ** --
soliloquy = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, soliloquy, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, soliloquy, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, soliloquy, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, soliloquy, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, soliloquy, 0 );
setEffRotateKey( spep_3 + 66, soliloquy, 0 );
setEffAlphaKey( spep_3 + 0, soliloquy, 255 );
setEffAlphaKey( spep_3 + 64, soliloquy, 255 );
setEffAlphaKey( spep_3 + 65, soliloquy, 255 );
setEffAlphaKey( spep_3 + 66, soliloquy, 0 );

--白フェード
entryFade( spep_3 + 60, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_c=spep_3+66;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_c + 0, SE_05 );

--環境音
stopSe( spep_c + 0, SE001, 0 );

--気ダメ
stopSe( spep_c + 0, SE006, 0 );

--ファイナルフラッシュ溜め
stopSe( spep_c + 0, SE010, 0 );

--いなづま
stopSe( spep_c + 0, SE016, 0 );

--気弾溜め終わりかけ
stopSe( spep_c + 0, SE015, 0 );
stopSe( spep_c + 0, SE017, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_5 = spep_c + 94;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 92, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_5 + 92, beam, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 92, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 90, beam, 255 );
setEffAlphaKey( spep_5 + 91, beam, 255 );
setEffAlphaKey( spep_5 + 92, beam, 0 );

-- 文字エントリー --
ctbeam = entryEffect( spep_5 + 0, 156629, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctbeam, 0, 0, 0 );
setEffMoveKey( spep_5 + 92, ctbeam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, ctbeam, -1.0, 1.0 );
setEffScaleKey( spep_5 + 92, ctbeam, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctbeam, 0 );
setEffRotateKey( spep_5 + 92, ctbeam, 0 );
setEffAlphaKey( spep_5 + 0, ctbeam, 255 );
setEffAlphaKey( spep_5 + 90, ctbeam, 255 );
setEffAlphaKey( spep_5 + 91, ctbeam, 255 );
setEffAlphaKey( spep_5 + 92, ctbeam, 0 );

--SE
--フラッシュ発射
SE020 = playSe( spep_5 + 2, 1258 );
setSeVolumeByWorkId( spep_5 + 2, SE020, 87 );
SE021 = playSe( spep_5 + 6, 1148 );
setSeVolumeByWorkId( spep_5 + 6, SE021, 63 );
SE022 = playSe( spep_5 + 6, 1027 );
setSeVolumeByWorkId( spep_5 + 6, SE022, 78 );
SE023 = playSe( spep_5 + 6, 1213 );
setSeVolumeByWorkId( spep_5 + 6, SE023, 60 );
SE024 = playSe( spep_5 + 6, 1266 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+92;
------------------------------------------------------
-- 気弾が迫る
------------------------------------------------------
-- ** エフェクト等 ** --
approaching = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, approaching, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, approaching, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, approaching, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, approaching, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, approaching, 0 );
setEffRotateKey( spep_6 + 56, approaching, 0 );
setEffAlphaKey( spep_6 + 0, approaching, 255 );
setEffAlphaKey( spep_6 + 54, approaching, 255 );
setEffAlphaKey( spep_6 + 55, approaching, 255 );
setEffAlphaKey( spep_6 + 56, approaching, 0 );

--フラッシュ横通過
SE025 = playSe( spep_6 + 0, 1305 );
SE026 = playSe( spep_6 + 14, 1304 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);

   
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

--次の準備
spep_7=spep_6+56;
------------------------------------------------------
-- 気弾命中
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 138, hit_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 138, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_f, 0 );
setEffRotateKey( spep_7 + 138, hit_f, 0 );
setEffAlphaKey( spep_7 + 0, hit_f, 255 );
setEffAlphaKey( spep_7 + 136, hit_f, 255 );
setEffAlphaKey( spep_7 + 137, hit_f, 255 );
setEffAlphaKey( spep_7 + 138, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 138, hit_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 138, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_b, 0 );
setEffRotateKey( spep_7 + 138, hit_b, 0 );
setEffAlphaKey( spep_7 + 0, hit_b, 255 );
setEffAlphaKey( spep_7 + 136, hit_b, 255 );
setEffAlphaKey( spep_7 + 137, hit_b, 255 );
setEffAlphaKey( spep_7 + 138, hit_b, 0 );

-- ** エフェクト等 ** --
cthit = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, cthit, 0, 0, 0 );
setEffMoveKey( spep_7 + 138, cthit, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, cthit, -1.0, 1.0 );
setEffScaleKey( spep_7 + 138, cthit, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, cthit, 0 );
setEffRotateKey( spep_7 + 138, cthit, 0 );
setEffAlphaKey( spep_7 + 0, cthit, 255 );
setEffAlphaKey( spep_7 + 136, cthit, 255 );
setEffAlphaKey( spep_7 + 137, cthit, 255 );
setEffAlphaKey( spep_7 + 138, cthit, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 10, 1, 0 );

setBlendColor(spep_7 + 0,1,3,0.5,0.68,0.16,0.33);
setBlendColor(spep_7 + 12,1,3,0.5,0.68,0.16,0.33);
setBlendColor(spep_7 + 13,1,3,0.5,0.68,0.16,0.33);
setBlendColor(spep_7 + 14,1,3,0.5,0.68,0.16,0);

changeAnime( spep_7 + 0, 1, 104 );

setMoveKey( spep_7 + 0, 1, 138.8, -104.1 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 138.8, -104.1 , 0 );
setMoveKey( spep_7-3 + 4, 1, 130.1, -123.7 , 0 );
setMoveKey( spep_7-3 + 6, 1, 115.3, -91.9 , 0 );
setMoveKey( spep_7-3 + 8, 1, 88.7, -144.9 , 0 );
setMoveKey( spep_7-3 + 10, 1, 85.3, -89.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 88.2, -92.9 , 0 );
setMoveKey( spep_7-3 + 14, 1, 135.3, -127.9 , 0 );

setScaleKey( spep_7 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_7 + 10, 1, 2.1, 2.1 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 10, 1, 0 );

--SE
--フラッシュ横通過
stopSe( spep_7 + 16, SE025, 10 );
stopSe( spep_7 + 16, SE026, 10 ,"",0.6);

--敵のみこむ
SE027 = playSe( spep_7 + 6, 1061 );
setSeVolumeByWorkId( spep_7 + 6, SE027, 83 );
setPitch( spep_7 + 6, SE027, 300 );
setTimeStretch( SE027, 1.2, 10, 1 );
SE028 = playSe( spep_7 + 8, 1188 );
setSeVolumeByWorkId( spep_7 + 8, SE028, 76 );
SE029 = playSe( spep_7 + 10, 1159 );
setSeVolumeByWorkId( spep_7 + 10, SE029, 74 );
SE030 = playSe( spep_7 + 24, 1213 );
setSeVolumeByWorkId( spep_7 + 24, SE030, 0 );
setSeVolumeByWorkId( spep_7 + 25, SE030, 1.7 );
setSeVolumeByWorkId( spep_7 + 26, SE030, 3.4 );
setSeVolumeByWorkId( spep_7 + 27, SE030, 5.1 );
setSeVolumeByWorkId( spep_7 + 28, SE030, 6.8 );
setSeVolumeByWorkId( spep_7 + 29, SE030, 8.5 );
setSeVolumeByWorkId( spep_7 + 30, SE030, 10.2 );
setSeVolumeByWorkId( spep_7 + 31, SE030, 11.9 );
setSeVolumeByWorkId( spep_7 + 32, SE030, 13.6 );
setSeVolumeByWorkId( spep_7 + 33, SE030, 15.3 );
setSeVolumeByWorkId( spep_7 + 34, SE030, 17 );
setSeVolumeByWorkId( spep_7 + 35, SE030, 18.7 );
setSeVolumeByWorkId( spep_7 + 36, SE030, 20.4 );
setSeVolumeByWorkId( spep_7 + 37, SE030, 22.1 );
setSeVolumeByWorkId( spep_7 + 38, SE030, 23.8 );
setSeVolumeByWorkId( spep_7 + 39, SE030, 25.5 );
setSeVolumeByWorkId( spep_7 + 40, SE030, 27.2 );
setSeVolumeByWorkId( spep_7 + 41, SE030, 28.9 );
setSeVolumeByWorkId( spep_7 + 42, SE030, 30.6 );
setSeVolumeByWorkId( spep_7 + 43, SE030, 32.3 );
setSeVolumeByWorkId( spep_7 + 44, SE030, 34 );
setSeVolumeByWorkId( spep_7 + 45, SE030, 35.7 );
setSeVolumeByWorkId( spep_7 + 46, SE030, 37.4 );
setSeVolumeByWorkId( spep_7 + 47, SE030, 39.1 );
setSeVolumeByWorkId( spep_7 + 48, SE030, 40.8 );
setSeVolumeByWorkId( spep_7 + 49, SE030, 42.5 );
setSeVolumeByWorkId( spep_7 + 50, SE030, 44.2 );
setSeVolumeByWorkId( spep_7 + 51, SE030, 45.9 );
setSeVolumeByWorkId( spep_7 + 52, SE030, 47.6 );
setSeVolumeByWorkId( spep_7 + 53, SE030, 49.3 );
setSeVolumeByWorkId( spep_7 + 54, SE030, 51 );
setSeVolumeByWorkId( spep_7 + 55, SE030, 52.7 );
setSeVolumeByWorkId( spep_7 + 56, SE030, 54.4 );
setSeVolumeByWorkId( spep_7 + 57, SE030, 56.1 );
setSeVolumeByWorkId( spep_7 + 58, SE030, 57.8 );
setSeVolumeByWorkId( spep_7 + 59, SE030, 59.5 );
setSeVolumeByWorkId( spep_7 + 60, SE030, 61.2 );
setSeVolumeByWorkId( spep_7 + 61, SE030, 62.9 );
setSeVolumeByWorkId( spep_7 + 62, SE030, 64.6 );
setSeVolumeByWorkId( spep_7 + 63, SE030, 66.3 );
setSeVolumeByWorkId( spep_7 + 64, SE030, 68 );
setSeVolumeByWorkId( spep_7 + 65, SE030, 69.7 );
setSeVolumeByWorkId( spep_7 + 66, SE030, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8=spep_7+138;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_8 + 128, finish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 128, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 128, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 128, finish, 255 );

-- ** エフェクト等 ** --
ctfinish = entryEffect( spep_8 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, ctfinish, 0, 0, 0 );
setEffMoveKey( spep_8 + 128, ctfinish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, ctfinish, -1.0, 1.0 );
setEffScaleKey( spep_8 + 128, ctfinish, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, ctfinish, 0 );
setEffRotateKey( spep_8 + 128, ctfinish, 0 );
setEffAlphaKey( spep_8 + 0, ctfinish, 255 );
setEffAlphaKey( spep_8 + 128, ctfinish, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_8 + 114, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 114, KO, 0, 0, 0 );
setEffMoveKey( spep_8 + 216, KO, 0, 0, 0 );
setEffScaleKey( spep_8 + 114, KO, -1.0, 1.0 );
setEffScaleKey( spep_8 + 216, KO, -1.0, 1.0 );
setEffRotateKey( spep_8 + 114, KO, 0 );
setEffRotateKey( spep_8 + 216, KO, 0 );
setEffAlphaKey( spep_8 + 114, KO, 255 );
setEffAlphaKey( spep_8 + 216, KO, 255 );

--SE
--フラッシュ発射
stopSe( spep_8 + 12, SE023, 6 );

--フラッシュ飛んでいく
SE032 = playSe( spep_8 + 0, 1304,"",0.6 );
SE033 = playSe( spep_8 + 0, 1161 );
setSeVolumeByWorkId( spep_8 + 0, SE033, 68 );
SE031 = playSe( spep_8 + 2, 1212 );
setSeVolumeByWorkId( spep_8 + 2, SE031, 0 );
setSeVolumeByWorkId( spep_8 + 3, SE031, 5.9 );
setSeVolumeByWorkId( spep_8 + 4, SE031, 11.8 );
setSeVolumeByWorkId( spep_8 + 5, SE031, 17.7 );
setSeVolumeByWorkId( spep_8 + 6, SE031, 23.6 );
setSeVolumeByWorkId( spep_8 + 7, SE031, 29.5 );
setSeVolumeByWorkId( spep_8 + 8, SE031, 35.4 );
setSeVolumeByWorkId( spep_8 + 9, SE031, 41.3 );
setSeVolumeByWorkId( spep_8 + 10, SE031, 47 );
setStartTimeMs( SE031,  650 );
SE034 = playSe( spep_8 + 8, 1124 );
setSeVolumeByWorkId( spep_8 + 8, SE034, 0 );
setSeVolumeByWorkId( spep_8 + 9, SE034, 1.9 );
setSeVolumeByWorkId( spep_8 + 10, SE034, 3.8 );
setSeVolumeByWorkId( spep_8 + 11, SE034, 5.7 );
setSeVolumeByWorkId( spep_8 + 12, SE034, 7.6 );
setSeVolumeByWorkId( spep_8 + 13, SE034, 9.5 );
setSeVolumeByWorkId( spep_8 + 14, SE034, 11.4 );
setSeVolumeByWorkId( spep_8 + 15, SE034, 13.3 );
setSeVolumeByWorkId( spep_8 + 16, SE034, 15.2 );
setSeVolumeByWorkId( spep_8 + 17, SE034, 17.1 );
setSeVolumeByWorkId( spep_8 + 18, SE034, 19 );
setSeVolumeByWorkId( spep_8 + 19, SE034, 20.9 );
setSeVolumeByWorkId( spep_8 + 20, SE034, 22.8 );
setSeVolumeByWorkId( spep_8 + 21, SE034, 24.7 );
setSeVolumeByWorkId( spep_8 + 22, SE034, 26.6 );
setSeVolumeByWorkId( spep_8 + 23, SE034, 28.5 );
setSeVolumeByWorkId( spep_8 + 24, SE034, 30.4 );
setSeVolumeByWorkId( spep_8 + 25, SE034, 32.3 );
setSeVolumeByWorkId( spep_8 + 26, SE034, 34.2 );
setSeVolumeByWorkId( spep_8 + 27, SE034, 36.1 );
setSeVolumeByWorkId( spep_8 + 28, SE034, 38 );
setSeVolumeByWorkId( spep_8 + 29, SE034, 39.9 );
setSeVolumeByWorkId( spep_8 + 30, SE034, 41.8 );
setSeVolumeByWorkId( spep_8 + 31, SE034, 43.7 );
setSeVolumeByWorkId( spep_8 + 32, SE034, 45.6 );
setSeVolumeByWorkId( spep_8 + 33, SE034, 47.5 );
setSeVolumeByWorkId( spep_8 + 34, SE034, 49.4 );
setSeVolumeByWorkId( spep_8 + 35, SE034, 51.3 );
setSeVolumeByWorkId( spep_8 + 36, SE034, 53.2 );
setSeVolumeByWorkId( spep_8 + 37, SE034, 55.1 );
setSeVolumeByWorkId( spep_8 + 38, SE034, 57 );
setSeVolumeByWorkId( spep_8 + 39, SE034, 58.9 );
setSeVolumeByWorkId( spep_8 + 40, SE034, 62 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 220, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_8 + 8 );
entryFade( spep_8 +108, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_8 + 118 );
end