--1033970:LR_フリーザ(最終形態)_登場時演出
--sp_effect_b4_00442
--pse0123

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164529; --最初〜最後まで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );

OFFSET_X = -1;

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 最初 〜 最後まで
------------------------------------------------------
MAX_FRAME_0 = 1240;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き
setDisp( spep_0 + 742 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 892 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 742 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 742 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -230, -519.4 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, -232, -517.4 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -230, -517.4 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -230, -517.4 , 0 );

setScaleKey( spep_0 + 742 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 892 + OFFSET_X, 1, 3.36, 3.36 );

setRotateKey( spep_0 + 742 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 892 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 742 + OFFSET_X, 1, 3, 0, 0, 0, 0.24 );
setBlendColor( spep_0 + 802 + OFFSET_X, 1, 3, 0, 0, 0, 0.21 );
setBlendColor( spep_0 + 804 + OFFSET_X, 1, 3, 0, 0, 0, 0.18 );
setBlendColor( spep_0 + 806 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_0 + 808 + OFFSET_X, 1, 3, 0, 0, 0, 0.12 );
setBlendColor( spep_0 + 810 + OFFSET_X, 1, 3, 0, 0, 0, 0.09 );
setBlendColor( spep_0 + 812 + OFFSET_X, 1, 3, 0, 0, 0, 0.06 );
setBlendColor( spep_0 + 814 + OFFSET_X, 1, 3, 0, 0, 0, 0.03 );
setBlendColor( spep_0 + 816 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--気を高める
SE001 = playSeVer2( spep_0 + 0, 1370, "",spep_0 + 387, 0, 150, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );
SE002 = playSeVer2( spep_0 + 0, 1391, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 80 );
SE003 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 43 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 1, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1, SE004, 63 );

--体発光する
SE005 = playSeVer2( spep_0 + 296, 1240, "",spep_0 + 397, 0, 25, -1);
SE006 = playSeVer2( spep_0 + 296, 1158, "",spep_0 + 511, 0, 136, -1);
setSeVolumeByWorkId( spep_0 + 296, SE006, 74 );

--地響き
SE007 = playSeVer2( spep_0 + 374, 1044, "",spep_0 + 579, 0, 55, -1);
setSeVolumeByWorkId( spep_0 + 374, SE007, 56 );

--爆発
SE008 = playSeVer2( spep_0 + 427, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 427, SE008, 136 );
SE009 = playSeVer2( spep_0 + 435, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 435, SE009, 79 );

--画面遷移
SE010 = playSeVer2( spep_0 + 505, 1072, "", 0, 0, 0, -1);

--力む
SE011 = playSeVer2( spep_0 + 546, 1250, "",spep_0 + 689, 0, 23, -1);

--目が光る
SE012 = playSeVer2( spep_0 + 565, 235, "", 0, 0, 0, -1);

--体割れる
SE014 = playSeVer2( spep_0 + 656, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 659, 1384, "",spep_0 + 818, 6, 58, -1);
setSeVolumeByWorkId( spep_0 + 659, SE013, 79 );
setStartTimeMs( SE013,  1167 );
SE015 = playSeVer2( spep_0 + 707, 1011, "", 0, 0, 0, -1);

--爆発する
SE016 = playSeVer2( spep_0 + 746, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE016, 73 );
SE017 = playSeVer2( spep_0 + 746, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE017, 59 );
SE018 = playSeVer2( spep_0 + 746, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 746, SE018, 47 );
setPitch( spep_0 + 746, SE018, -1200 );
setTimeStretch( SE018, 0.25, 30, 4 );
SE019 = playSeVer2( spep_0 + 746, 1342, "",spep_0 + 994, 0, 108, -1);
SE020 = playSeVer2( spep_0 + 775, 1427, "", 0, 0, 0, -1);

--煙
SE021 = playSeVer2( spep_0 + 851, 1219, "", 0, 0, 0, -1);

--環境音
SE022 = playSeVer2( spep_0 + 880, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE022, 25 );

--画面遷移
SE023 = playSeVer2( spep_0 + 1041, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1041, SE023, 58 );

--ラスト決め
SE024 = playSeVer2( spep_0 + 1140, 1369, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「うおおおおお…！！！！」
playVoice( spep_0 + 0, 1232 );
setVoiceVolume( spep_0 + 0, 1232, 112 );


-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 1240f

end