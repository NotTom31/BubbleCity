//Maya ASCII 2025ff03 scene
//Name: XYZ.ma
//Last modified: Fri, Jan 24, 2025 11:01:56 PM
//Codeset: 1252
requires maya "2025ff03";
requires -nodeType "type" -nodeType "shellDeformer" -nodeType "vectorAdjust" -nodeType "typeExtrude"
		 -nodeType "displayPoints" "Type" "2.0a";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "E948F26B-4F6F-B79A-5BD6-CA83EFB48F13";
createNode transform -s -n "persp";
	rename -uid "FFFF27BB-4D80-8D1C-E835-16B2FB7EDDD1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.383628180837889 6.1541621293316444 8.6565603424758919 ;
	setAttr ".r" -type "double3" -26.138352729661907 45.799999999990554 -2.2810627414080934e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6AA2A934-4F91-D4C8-AC74-0995496F1C02";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.858002446497412;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0067907169958935365 -0.18812614865289015 2.1114686670890901 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "71DFBC64-44E3-3CF5-256F-68B5CA64B8A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F621F6F2-4913-26EC-D30A-FCA507BE12EE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "9C6B26AE-4AE0-E6FB-302F-81A110541E2F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BE35FC26-4396-855E-014E-72BE71E4A530";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4DE5788B-4B9B-72FC-A9D1-5B8C163A60DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7E304A20-4734-9685-21AF-20AB587991E9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "xyz";
	rename -uid "C121D03E-45AD-C4AF-108A-4BABD35FA444";
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode transform -n "transform2" -p "xyz";
	rename -uid "62FB7AC7-49BE-8654-3EDB-078D86EE1F6F";
	setAttr ".v" no;
createNode mesh -n "xyzShape" -p "transform2";
	rename -uid "14AED272-4C92-BE88-4F71-1CAD011ED572";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 4 "f[2:3]" "f[5:9]" "f[14:17]" "f[22:25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[1]" "f[26:29]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 2 "f[0]" "f[18:21]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 2 "f[4]" "f[10:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[14:21]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[6:13]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[22:29]";
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.625 0 0.875
		 0 0.875 0.25 0.625 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.375 0.25 0.625 0.25 0.625
		 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[12:23]" -type "float3"  0.6550076 0 0 0.6550076 0 
		0 0.6550076 0 0 0.6550076 0 0 0.029490439 0.046497762 0 -0.029490439 0.046497762 
		0 -0.029490439 -0.046497762 0 0.029490439 -0.046497762 0 0.029490439 0.046497762 
		0 -0.029490439 0.046497762 0 -0.029490439 -0.046497762 0 0.029490439 -0.046497762 
		0;
	setAttr -s 32 ".vt[0:31]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.20147467 -0.21367252
		 0.5 -0.20147467 0.21367252 0.5 0.20147467 -0.21367252 0.5 0.20147467 0.21367252 1.61215782 -0.20147467 -0.21367252
		 1.61215782 -0.20147467 0.21367252 1.61215782 0.20147467 -0.21367252 1.61215782 0.20147467 0.21367252
		 -0.25181139 -0.27318013 0.5 0.25181139 -0.27318013 0.5 0.25181139 0.27318013 0.5
		 -0.25181139 0.27318013 0.5 -0.25181139 -0.27318013 2.082976341 0.25181139 -0.27318013 2.082976341
		 0.25181139 0.27318013 2.082976341 -0.25181139 0.27318013 2.082976341 -0.2622 0.5 0.27313399
		 0.2622 0.5 0.27313399 0.2622 0.5 -0.27313399 -0.2622 0.5 -0.27313399 -0.2622 2.31680584 0.27313399
		 0.2622 2.31680584 0.27313399 0.2622 2.31680584 -0.27313399 -0.2622 2.31680584 -0.27313399;
	setAttr -s 60 ".ed[0:59]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 7 8 1 1 9 1 8 9 0 5 10 1 10 8 0 3 11 1 11 10 0 9 11 0
		 8 12 0 9 13 0 12 13 0 10 14 0 14 12 0 11 15 0 15 14 0 13 15 0 0 16 1 1 17 1 16 17 0
		 3 18 1 17 18 0 2 19 1 19 18 0 16 19 0 16 20 0 17 21 0 20 21 0 18 22 0 21 22 0 19 23 0
		 23 22 0 20 23 0 2 24 1 3 25 1 24 25 0 5 26 1 25 26 0 4 27 1 27 26 0 24 27 0 24 28 0
		 25 29 0 28 29 0 26 30 0 29 30 0 27 31 0 31 30 0 28 31 0;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 54 56 -59 -60
		mu 0 4 34 35 36 37
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -23 -25 -27 -28
		mu 0 4 18 19 20 21
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 -12 12 14 -14
		mu 0 4 1 10 15 14
		f 4 -10 15 16 -13
		mu 0 4 10 11 16 15
		f 4 -8 17 18 -16
		mu 0 4 11 3 17 16
		f 4 -6 13 19 -18
		mu 0 4 3 1 14 17
		f 4 -15 20 22 -22
		mu 0 4 14 15 19 18
		f 4 -17 23 24 -21
		mu 0 4 15 16 20 19
		f 4 -19 25 26 -24
		mu 0 4 16 17 21 20
		f 4 -20 21 27 -26
		mu 0 4 17 14 18 21
		f 4 0 29 -31 -29
		mu 0 4 0 1 23 22
		f 4 5 31 -33 -30
		mu 0 4 1 3 24 23
		f 4 -2 33 34 -32
		mu 0 4 3 2 25 24
		f 4 -5 28 35 -34
		mu 0 4 2 0 22 25
		f 4 30 37 -39 -37
		mu 0 4 22 23 27 26
		f 4 32 39 -41 -38
		mu 0 4 23 24 28 27
		f 4 -35 41 42 -40
		mu 0 4 24 25 29 28
		f 4 -36 36 43 -42
		mu 0 4 25 22 26 29
		f 4 1 45 -47 -45
		mu 0 4 2 3 31 30
		f 4 7 47 -49 -46
		mu 0 4 3 5 32 31
		f 4 -3 49 50 -48
		mu 0 4 5 4 33 32
		f 4 -7 44 51 -50
		mu 0 4 4 2 30 33
		f 4 46 53 -55 -53
		mu 0 4 30 31 35 34
		f 4 48 55 -57 -54
		mu 0 4 31 32 36 35
		f 4 -51 57 58 -56
		mu 0 4 32 33 37 36
		f 4 -52 52 59 -58
		mu 0 4 33 30 34 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "typeMesh1";
	rename -uid "FBAB6F95-4C09-BF1C-F947-B6A416291527";
	setAttr ".t" -type "double3" -0.19862939498177884 -0.21661809839734752 2.0663681959054734 ;
	setAttr ".s" -type "double3" 0.045483733145991141 0.045483733145991141 0.045483733145991141 ;
createNode transform -n "transform5" -p "typeMesh1";
	rename -uid "A05E8833-460D-7E34-9A3B-28B7B9A87B66";
	setAttr ".v" no;
createNode mesh -n "typeMeshShape1" -p "transform5";
	rename -uid "F5D9B112-41C7-E1A7-BF6C-8C99E89A5807";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1";
	rename -uid "E61A6135-40DA-9143-4260-23B9C62504AD";
	setAttr ".hio" yes;
createNode displayPoints -n "displayPoints1" -p "transform1";
	rename -uid "AB3F4515-4C0B-5265-FDF4-49916A5F2F33";
	setAttr -k off ".v";
	setAttr -s 2 ".inPointPositionsPP";
	setAttr ".hio" yes;
createNode transform -n "typeMesh2";
	rename -uid "541D0EFF-4DB5-7AAF-F2FB-F6BF4153EC61";
	setAttr ".t" -type "double3" 2.2572454063309713 -0.21830484290002039 0.20141520007885094 ;
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".s" -type "double3" 0.051135044809098799 0.051135044809098799 0.051135044809098799 ;
createNode transform -n "transform4" -p "typeMesh2";
	rename -uid "DEA9D62E-4EB6-AAF5-2032-FE92DDBD176A";
	setAttr ".v" no;
createNode mesh -n "typeMeshShape2" -p "transform4";
	rename -uid "ED51CF51-46C0-C845-CE1C-24AB97624F71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:49]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 104 ".uvst[0].uvsp[0:103]" -type "float2" 0.39521638 0.81271482
		 0.39521638 0.89610714 0.36217734 0.89610714 0.36217734 0.81271482 0.32913828 0.89610714
		 0.32913828 0.81271482 0.39521638 0.69345158 0.36217734 0.69345158 0.29609925 0.89610714
		 0.29609925 0.81271482 0.32913828 0.69345158 0.39521638 0.56826365 0.36217734 0.56826365
		 0.26306021 0.89610714 0.26306021 0.81271482 0.29609925 0.69345158 0.32913828 0.56826365
		 0.39521638 0.5018903 0.36217734 0.5018903 0.26306021 0.69345158 0.29609925 0.56826365
		 0.32913828 0.5018903 0.26306021 0.56826365 0.29609925 0.5018903 0.26306021 0.5018903
		 0.4010275 0.90816939 0.4010275 0.84139097 0.43406656 0.84139097 0.43406656 0.90816939
		 0.4010275 0.71117771 0.43406656 0.71117771 0.4671056 0.84139097 0.4671056 0.90816939
		 0.4010275 0.58528948 0.43406656 0.58528948 0.4671056 0.71117771 0.50014466 0.84139097
		 0.50014466 0.90816939 0.4010275 0.5018903 0.43406656 0.5018903 0.4671056 0.58528948
		 0.50014466 0.71117771 0.53318369 0.84139097 0.53318369 0.90816939 0.4671056 0.5018903
		 0.50014466 0.58528948 0.53318369 0.71117771 0.50014466 0.5018903 0.53318369 0.58528948
		 0.53318369 0.5018903 0.21258834 0.1886927 0.3377763 0.0019920401 0.40414962 0.0019920401
		 0.24567886 0.2414522 0.40816581 0.49810976 0.32476661 0.49810976 0.19887844 0.3015987
		 0.068665124 0.49810976 0.0018867743 0.49810976 0.16638516 0.2491619 0.0099328533
		 0.0019920401 0.093325123 0.0019920401 0.6304332 0.99800807 0.54704094 0.99800807
		 0.70349324 0.75083816 0.53899485 0.50189024 0.60577321 0.50189024 0.73598647 0.69840133
		 0.8618747 0.50189024 0.94527388 0.50189024 0.78278691 0.75854784 0.9412576 0.99800807
		 0.87488431 0.99800807 0.74969643 0.81130737 0.41556883 0.49810976 0.41556883 0.25093994
		 0.44860789 0.25093994 0.44860789 0.49810976 0.41556883 0.0019920322 0.44860789 0.0019920322
		 0.48164696 0.25093994 0.48164696 0.49810976 0.48164696 0.0019920322 0.51468599 0.25093994
		 0.51468599 0.49810976 0.51468599 0.0019920322 0.54772502 0.25093994 0.54772502 0.49810976
		 0.54772502 0.0019920322 0.68617284 0.0019920322 0.68617284 0.25864965 0.65313375
		 0.25864965 0.65313375 0.0019920322 0.68617284 0.49810976 0.65313375 0.49810976 0.62009472
		 0.25864965 0.62009472 0.0019920322 0.62009472 0.49810976 0.58705568 0.25864965 0.58705568
		 0.0019920322 0.58705568 0.49810976 0.55401665 0.25864965 0.55401665 0.0019920322
		 0.55401665 0.49810976;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".vt[0:59]"  1.83116889 9.38506603 0 0.25363636 9.38506603 0
		 3.21324682 4.70935059 0 0.10142858 0 0 1.3646754 0 0 3.82792234 3.7174027 0 6.20935106 0 0
		 7.78701353 0 0 4.71324682 4.85519505 0 7.71103954 9.38506603 0 6.45545483 9.38506603 0
		 4.087273121 5.85324717 0 1.83116889 9.38506603 0.625 0.25363636 9.38506603 0.625
		 3.21324682 4.70935059 0.625 0.10142858 0 0.625 1.3646754 0 0.625 3.82792234 3.7174027 0.625
		 6.20935106 0 0.625 7.78701353 0 0.625 4.71324682 4.85519505 0.625 7.71103954 9.38506603 0.625
		 6.45545483 9.38506603 0.625 4.087273121 5.85324717 0.625 1.83116889 9.38506603 1.25
		 0.25363636 9.38506603 1.25 3.21324682 4.70935059 1.25 0.10142858 0 1.25 1.3646754 0 1.25
		 3.82792234 3.7174027 1.25 6.20935106 0 1.25 7.78701353 0 1.25 4.71324682 4.85519505 1.25
		 7.71103954 9.38506603 1.25 6.45545483 9.38506603 1.25 4.087273121 5.85324717 1.25
		 1.83116889 9.38506603 1.875 0.25363636 9.38506603 1.875 3.21324682 4.70935059 1.875
		 0.10142858 0 1.875 1.3646754 0 1.875 3.82792234 3.7174027 1.875 6.20935106 0 1.875
		 7.78701353 0 1.875 4.71324682 4.85519505 1.875 7.71103954 9.38506603 1.875 6.45545483 9.38506603 1.875
		 4.087273121 5.85324717 1.875 1.83116889 9.38506603 2.5 0.25363636 9.38506603 2.5
		 3.21324682 4.70935059 2.5 0.10142858 0 2.5 1.3646754 0 2.5 3.82792234 3.7174027 2.5
		 6.20935106 0 2.5 7.78701353 0 2.5 4.71324682 4.85519505 2.5 7.71103954 9.38506603 2.5
		 6.45545483 9.38506603 2.5 4.087273121 5.85324717 2.5;
	setAttr -s 108 ".ed[0:107]"  11 10 0 10 9 0 9 8 0 8 7 0 7 6 0 6 5 0 5 4 0
		 4 3 0 3 2 0 2 1 0 1 0 0 0 11 0 1 13 0 13 12 1 12 0 0 2 14 0 14 13 1 3 15 0 15 14 1
		 4 16 0 16 15 1 5 17 0 17 16 1 6 18 0 18 17 1 7 19 0 19 18 1 8 20 0 20 19 1 9 21 0
		 21 20 1 10 22 0 22 21 1 11 23 0 23 22 1 12 23 1 13 25 0 25 24 1 24 12 0 14 26 0 26 25 1
		 15 27 0 27 26 1 16 28 0 28 27 1 17 29 0 29 28 1 18 30 0 30 29 1 19 31 0 31 30 1 20 32 0
		 32 31 1 21 33 0 33 32 1 22 34 0 34 33 1 23 35 0 35 34 1 24 35 1 25 37 0 37 36 1 36 24 0
		 26 38 0 38 37 1 27 39 0 39 38 1 28 40 0 40 39 1 29 41 0 41 40 1 30 42 0 42 41 1 31 43 0
		 43 42 1 32 44 0 44 43 1 33 45 0 45 44 1 34 46 0 46 45 1 35 47 0 47 46 1 36 47 1 37 49 0
		 49 48 0 48 36 0 38 50 0 50 49 0 39 51 0 51 50 0 40 52 0 52 51 0 41 53 0 53 52 0 42 54 0
		 54 53 0 43 55 0 55 54 0 44 56 0 56 55 0 45 57 0 57 56 0 46 58 0 58 57 0 47 59 0 59 58 0
		 48 59 0;
	setAttr -s 50 -ch 216 ".fc[0:49]" -type "polyFaces" 
		f 12 0 1 2 3 4 5 6 7 8 9 10 11
		mu 0 12 50 51 52 53 54 55 56 57 58 59 60 61
		f 4 -11 12 13 14
		mu 0 4 0 1 2 3
		f 4 -10 15 16 -13
		mu 0 4 74 75 76 77
		f 4 -9 17 18 -16
		mu 0 4 75 78 79 76
		f 4 -8 19 20 -18
		mu 0 4 25 26 27 28
		f 4 -7 21 22 -20
		mu 0 4 26 29 30 27
		f 4 -6 23 24 -22
		mu 0 4 29 33 34 30
		f 4 -5 25 26 -24
		mu 0 4 33 38 39 34
		f 4 -4 27 28 -26
		mu 0 4 89 90 91 92
		f 4 -3 29 30 -28
		mu 0 4 90 93 94 91
		f 4 -2 31 32 -30
		mu 0 4 17 11 12 18
		f 4 -1 33 34 -32
		mu 0 4 11 6 7 12
		f 4 -12 -15 35 -34
		mu 0 4 6 0 3 7
		f 4 -14 36 37 38
		mu 0 4 3 2 4 5
		f 4 -17 39 40 -37
		mu 0 4 77 76 80 81
		f 4 -19 41 42 -40
		mu 0 4 76 79 82 80
		f 4 -21 43 44 -42
		mu 0 4 28 27 31 32
		f 4 -23 45 46 -44
		mu 0 4 27 30 35 31
		f 4 -25 47 48 -46
		mu 0 4 30 34 40 35
		f 4 -27 49 50 -48
		mu 0 4 34 39 44 40
		f 4 -29 51 52 -50
		mu 0 4 92 91 95 96
		f 4 -31 53 54 -52
		mu 0 4 91 94 97 95
		f 4 -33 55 56 -54
		mu 0 4 18 12 16 21
		f 4 -35 57 58 -56
		mu 0 4 12 7 10 16
		f 4 -36 -39 59 -58
		mu 0 4 7 3 5 10
		f 4 -38 60 61 62
		mu 0 4 5 4 8 9
		f 4 -41 63 64 -61
		mu 0 4 81 80 83 84
		f 4 -43 65 66 -64
		mu 0 4 80 82 85 83
		f 4 -45 67 68 -66
		mu 0 4 32 31 36 37
		f 4 -47 69 70 -68
		mu 0 4 31 35 41 36
		f 4 -49 71 72 -70
		mu 0 4 35 40 45 41
		f 4 -51 73 74 -72
		mu 0 4 40 44 47 45
		f 4 -53 75 76 -74
		mu 0 4 96 95 98 99
		f 4 -55 77 78 -76
		mu 0 4 95 97 100 98
		f 4 -57 79 80 -78
		mu 0 4 21 16 20 23
		f 4 -59 81 82 -80
		mu 0 4 16 10 15 20
		f 4 -60 -63 83 -82
		mu 0 4 10 5 9 15
		f 4 -62 84 85 86
		mu 0 4 9 8 13 14
		f 4 -65 87 88 -85
		mu 0 4 84 83 86 87
		f 4 -67 89 90 -88
		mu 0 4 83 85 88 86
		f 4 -69 91 92 -90
		mu 0 4 37 36 42 43
		f 4 -71 93 94 -92
		mu 0 4 36 41 46 42
		f 4 -73 95 96 -94
		mu 0 4 41 45 48 46
		f 4 -75 97 98 -96
		mu 0 4 45 47 49 48
		f 4 -77 99 100 -98
		mu 0 4 99 98 101 102
		f 4 -79 101 102 -100
		mu 0 4 98 100 103 101
		f 4 -81 103 104 -102
		mu 0 4 23 20 22 24
		f 4 -83 105 106 -104
		mu 0 4 20 15 19 22
		f 4 -84 -87 107 -106
		mu 0 4 15 9 14 19
		f 12 -86 -89 -91 -93 -95 -97 -99 -101 -103 -105 -107 -108
		mu 0 12 62 63 64 65 66 67 68 69 70 71 72 73;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "typeMesh3";
	rename -uid "66A0CE58-40F2-ECE9-A4CF-72A436154F8B";
	setAttr ".t" -type "double3" -0.19862939498177884 2.3168058395385742 -0.058652323091000769 ;
	setAttr ".s" -type "double3" 0.051135044809098799 0.051135044809098799 0.051135044809098799 ;
createNode transform -n "transform3" -p "typeMesh3";
	rename -uid "EC9D063D-42C6-3FF2-FBC2-3DBD98C6E697";
	setAttr ".v" no;
createNode mesh -n "typeMeshShape3" -p "transform3";
	rename -uid "96BBB9E8-4DEE-AD03-08B8-28B9E51AE350";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:37]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 93 ".uvst[0].uvsp[0:92]" -type "float2" 0.42106616 0.49811819
		 0.42106616 0.20915464 0.45410576 0.20915464 0.45410576 0.49811819 0.42106616 0.0019920319
		 0.45410576 0.0019920319 0.48714536 0.20915464 0.48714536 0.49811819 0.48714536 0.0019920319
		 0.52018499 0.20915464 0.52018499 0.49811819 0.52018499 0.0019920319 0.55322456 0.20915464
		 0.55322456 0.49811819 0.55322456 0.0019920319 0.69289255 0.0019920319 0.69289255
		 0.21050029 0.65985298 0.21050029 0.65985298 0.0019920319 0.69289255 0.49811819 0.65985298
		 0.49811819 0.62681335 0.21050029 0.62681335 0.0019920319 0.62681335 0.49811819 0.59377378
		 0.21050029 0.59377378 0.0019920319 0.59377378 0.49811819 0.56073415 0.21050029 0.56073415
		 0.0019920319 0.56073415 0.49811819 0.52194256 0.5018819 0.52194256 0.72615302 0.48890299
		 0.72615302 0.48890299 0.5018819 0.45586339 0.72615302 0.45586339 0.5018819 0.42282379
		 0.72615302 0.42282379 0.5018819 0.38978416 0.72615302 0.38978416 0.5018819 0.24605538
		 0.63404036 0.16569619 0.63404036 0.16569619 0.60100073 0.24605538 0.60100073 0.16569619
		 0.5679611 0.24605538 0.5679611 0.16569619 0.53492153 0.24605538 0.53492153 0.16569619
		 0.5018819 0.24605538 0.5018819 0.089513466 0.5018819 0.15991099 0.5018819 0.15991099
		 0.53492147 0.089513466 0.53492147 0.15991099 0.5679611 0.089513466 0.5679611 0.15991099
		 0.60100067 0.089513466 0.60100067 0.15991099 0.6340403 0.089513466 0.6340403 0.38399899
		 0.5018819 0.38399899 0.56726086 0.35095939 0.56726086 0.35095939 0.5018819 0.38399899
		 0.70594138 0.35095939 0.70594138 0.31791979 0.56726086 0.31791979 0.5018819 0.31791979
		 0.70594138 0.28488019 0.56726086 0.28488019 0.5018819 0.28488019 0.70594138 0.25184059
		 0.56726086 0.25184059 0.5018819 0.25184059 0.70594138 0.21114865 0.22626317 0.34982914
		 0.0019920336 0.41520813 0.0019920336 0.23787554 0.28960997 0.23787554 0.49811819
		 0.167478 0.49811819 0.167478 0.29095557 0.0018783584 0.0019920336 0.082237534 0.0019920336
		 0.608087 0.99800801 0.52772778 0.99800801 0.69332743 0.7090444 0.69332743 0.50188184
		 0.76372492 0.50188184 0.76372492 0.71039003 0.94105744 0.99800801 0.87567854 0.99800801
		 0.73699808 0.77373677;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".vt[0:44]"  1.62792218 9.38506603 0 0.10779221 9.38506603 0
		 3.24038982 3.91883135 0 3.24038982 0 0 4.57207823 0 0 4.57207823 3.94428611 0 7.92662382 9.38506603 0
		 6.68987036 9.38506603 0 4.066493988 5.14259768 0 1.62792218 9.38506603 0.625 0.10779221 9.38506603 0.625
		 3.24038982 3.91883135 0.625 3.24038982 0 0.625 4.57207823 0 0.625 4.57207823 3.94428611 0.625
		 7.92662382 9.38506603 0.625 6.68987036 9.38506603 0.625 4.066493988 5.14259768 0.625
		 1.62792218 9.38506603 1.25 0.10779221 9.38506603 1.25 3.24038982 3.91883135 1.25
		 3.24038982 0 1.25 4.57207823 0 1.25 4.57207823 3.94428611 1.25 7.92662382 9.38506603 1.25
		 6.68987036 9.38506603 1.25 4.066493988 5.14259768 1.25 1.62792218 9.38506603 1.875
		 0.10779221 9.38506603 1.875 3.24038982 3.91883135 1.875 3.24038982 0 1.875 4.57207823 0 1.875
		 4.57207823 3.94428611 1.875 7.92662382 9.38506603 1.875 6.68987036 9.38506603 1.875
		 4.066493988 5.14259768 1.875 1.62792218 9.38506603 2.5 0.10779221 9.38506603 2.5
		 3.24038982 3.91883135 2.5 3.24038982 0 2.5 4.57207823 0 2.5 4.57207823 3.94428611 2.5
		 7.92662382 9.38506603 2.5 6.68987036 9.38506603 2.5 4.066493988 5.14259768 2.5;
	setAttr -s 81 ".ed[0:80]"  8 7 0 7 6 0 6 5 0 5 4 0 4 3 0 3 2 0 2 1 0
		 1 0 0 0 8 0 1 10 0 10 9 1 9 0 0 2 11 1 11 10 1 3 12 0 12 11 1 4 13 0 13 12 1 5 14 0
		 14 13 1 6 15 0 15 14 1 7 16 0 16 15 1 8 17 0 17 16 1 9 17 1 10 19 0 19 18 1 18 9 0
		 11 20 1 20 19 1 12 21 0 21 20 1 13 22 0 22 21 1 14 23 0 23 22 1 15 24 0 24 23 1 16 25 0
		 25 24 1 17 26 0 26 25 1 18 26 1 19 28 0 28 27 1 27 18 0 20 29 1 29 28 1 21 30 0 30 29 1
		 22 31 0 31 30 1 23 32 0 32 31 1 24 33 0 33 32 1 25 34 0 34 33 1 26 35 0 35 34 1 27 35 1
		 28 37 0 37 36 0 36 27 0 29 38 1 38 37 0 30 39 0 39 38 0 31 40 0 40 39 0 32 41 0 41 40 0
		 33 42 0 42 41 0 34 43 0 43 42 0 35 44 0 44 43 0 36 44 0;
	setAttr -s 38 -ch 162 ".fc[0:37]" -type "polyFaces" 
		f 9 0 1 2 3 4 5 6 7 8
		mu 0 9 75 76 77 78 79 80 81 82 83
		f 4 -8 9 10 11
		mu 0 4 40 41 42 43
		f 4 -7 12 13 -10
		mu 0 4 0 1 2 3
		f 4 -6 14 15 -13
		mu 0 4 1 4 5 2
		f 4 -5 16 17 -15
		mu 0 4 50 51 52 53
		f 4 -4 18 19 -17
		mu 0 4 15 16 17 18
		f 4 -3 20 21 -19
		mu 0 4 16 19 20 17
		f 4 -2 22 23 -21
		mu 0 4 60 61 62 63
		f 4 -1 24 25 -23
		mu 0 4 61 64 65 62
		f 4 -9 -12 26 -25
		mu 0 4 30 31 32 33
		f 4 -11 27 28 29
		mu 0 4 43 42 44 45
		f 4 -14 30 31 -28
		mu 0 4 3 2 6 7
		f 4 -16 32 33 -31
		mu 0 4 2 5 8 6
		f 4 -18 34 35 -33
		mu 0 4 53 52 54 55
		f 4 -20 36 37 -35
		mu 0 4 18 17 21 22
		f 4 -22 38 39 -37
		mu 0 4 17 20 23 21
		f 4 -24 40 41 -39
		mu 0 4 63 62 66 67
		f 4 -26 42 43 -41
		mu 0 4 62 65 68 66
		f 4 -27 -30 44 -43
		mu 0 4 33 32 34 35
		f 4 -29 45 46 47
		mu 0 4 45 44 46 47
		f 4 -32 48 49 -46
		mu 0 4 7 6 9 10
		f 4 -34 50 51 -49
		mu 0 4 6 8 11 9
		f 4 -36 52 53 -51
		mu 0 4 55 54 56 57
		f 4 -38 54 55 -53
		mu 0 4 22 21 24 25
		f 4 -40 56 57 -55
		mu 0 4 21 23 26 24
		f 4 -42 58 59 -57
		mu 0 4 67 66 69 70
		f 4 -44 60 61 -59
		mu 0 4 66 68 71 69
		f 4 -45 -48 62 -61
		mu 0 4 35 34 36 37
		f 4 -47 63 64 65
		mu 0 4 47 46 48 49
		f 4 -50 66 67 -64
		mu 0 4 10 9 12 13
		f 4 -52 68 69 -67
		mu 0 4 9 11 14 12
		f 4 -54 70 71 -69
		mu 0 4 57 56 58 59
		f 4 -56 72 73 -71
		mu 0 4 25 24 27 28
		f 4 -58 74 75 -73
		mu 0 4 24 26 29 27
		f 4 -60 76 77 -75
		mu 0 4 70 69 72 73
		f 4 -62 78 79 -77
		mu 0 4 69 71 74 72
		f 4 -63 -66 80 -79
		mu 0 4 37 36 38 39
		f 9 -65 -68 -70 -72 -74 -76 -78 -80 -81
		mu 0 9 84 85 86 87 88 89 90 91 92;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "typeMesh4";
	rename -uid "DE56CE5A-4AAB-C5C5-6D6A-55B9D8DB4077";
	setAttr ".rp" -type "double3" 0.037660749950970462 -0.5 -0.01393587328713819 ;
	setAttr ".sp" -type "double3" 0.037660749950970462 -0.5 -0.01393587328713819 ;
createNode mesh -n "typeMesh4Shape" -p "typeMesh4";
	rename -uid "29D840CD-4F42-04AE-FD7D-2FA87C3B256F";
	setAttr -k off ".v";
	setAttr -s 10 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "97CD3C7C-4AAD-17D8-9324-DFAF2B3F2498";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "FCB53196-4EFC-B7A7-53BA-0C8FE951344E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6A937FFA-49CE-D7A4-EAA1-C7AAA5C7D5D4";
createNode displayLayerManager -n "layerManager";
	rename -uid "B94C5880-43EB-2030-F4C1-3B80CC301477";
createNode displayLayer -n "defaultLayer";
	rename -uid "7E1616A0-47CB-FA02-2CF8-378EB9BC942F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "90C60C89-486C-89CC-4F4E-6C9F188E8254";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4D503116-4904-092D-E5A9-A4B5EB1D0721";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "794B891B-4F50-CDE9-E8C1-38ACFDFC77D6";
	setAttr ".version" -type "string" "5.4.5";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "FC2E24C3-4D44-E334-6F46-6D87BEA660E0";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "640CA671-4A06-2276-90A7-BD96F73E9F5E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "40B84B06-4279-FDE4-34A6-2CB925C184A2";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "A706F3DD-4F72-67CA-E90F-09860DEF1F3E";
createNode lambert -n "lambert2";
	rename -uid "5905F429-4ACF-D319-8F13-DEA127B8C0F7";
	setAttr ".c" -type "float3" 0.5 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "251FB3C7-4276-6478-F08B-478AD272367D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "9C91B0F4-41BB-2B11-DE7D-B3AE03A9FFF1";
createNode lambert -n "lambert3";
	rename -uid "4EA86AC3-4220-B6E9-9BEB-32AA5CA126E9";
	setAttr ".c" -type "float3" 0.028341651 0.5 0 ;
createNode lambert -n "lambert4";
	rename -uid "D64F6DB4-4430-091E-ABBB-A49A06E2ED36";
	setAttr ".c" -type "float3" 0.06477499 0 0.5 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "EDFE96E1-4006-C28D-30F4-90939302FB9A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "2CF9DAAC-4445-643A-C6D3-1FBAA3DC4FEB";
createNode groupId -n "groupId2";
	rename -uid "950E0256-486C-3311-48E5-98A00C47A955";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert4SG";
	rename -uid "7D39541A-4ED4-2AAF-71BD-1E9668B0AC6A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "F1E50615-45BE-7666-799E-0985A79D5DB3";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "56A046B3-48E1-1CC7-178D-91BBDA41F3EC";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -492.92363344226152 -759.52377934304627 ;
	setAttr ".tgi[0].vh" -type "double2" 1439.748992644199 296.82538503061579 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 992.85711669921875;
	setAttr ".tgi[0].ni[0].y" -197.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -152.85714721679688;
	setAttr ".tgi[0].ni[1].y" -264.28570556640625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 222.85714721679688;
	setAttr ".tgi[0].ni[2].y" 240;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 530;
	setAttr ".tgi[0].ni[3].y" 240;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 685.71429443359375;
	setAttr ".tgi[0].ni[4].y" -197.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 154.28572082519531;
	setAttr ".tgi[0].ni[5].y" -264.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode groupId -n "groupId3";
	rename -uid "B87532A4-4D0C-CF84-4B7E-DA9DEF6B2E98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "497B46AD-4164-7D26-6484-CD90BBAA4AB1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F9598B6B-49B8-99DE-047B-D7AEEE4AA9BE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "4EE6AF02-4264-B827-6CCA-4DA9D3DA83EC";
	setAttr ".ihi" 0;
createNode type -n "type1";
	rename -uid "6C4BA9DF-41B9-06C6-1F79-C29CDE372787";
	setAttr ".solidsPerCharacter" -type "doubleArray" 1 1 ;
	setAttr ".solidsPerWord" -type "doubleArray" 1 1 ;
	setAttr ".solidsPerLine" -type "doubleArray" 1 1 ;
	setAttr ".vertsPerChar" -type "doubleArray" 1 10 ;
	setAttr ".characterBoundingBoxesMax" -type "vectorArray" 1 7.2416885177810464
		 9.3850658466289563 0 ;
	setAttr ".characterBoundingBoxesMin" -type "vectorArray" 1 0.60233766382390797
		 0 0 ;
	setAttr ".manipulatorPivots" -type "vectorArray" 1 0.60233766382390797 0 0 ;
	setAttr ".holeInfo" -type "Int32Array" 0 ;
	setAttr ".numberOfShells" 1;
	setAttr ".textInput" -type "string" "5A";
	setAttr ".currentFont" -type "string" "Lucida Sans Unicode";
	setAttr ".currentStyle" -type "string" "Regular";
	setAttr ".manipulatorPositionsPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".manipulatorRotationsPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".manipulatorScalesPP" -type "vectorArray" 2 0 0 0 0 0 0 ;
	setAttr ".alignmentAdjustments" -type "doubleArray" 1 0 ;
	setAttr ".manipulatorMode" 0;
createNode typeExtrude -n "typeExtrude1";
	rename -uid "B61C0389-4B25-B851-CF81-95A0B06B8B05";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr -s 4 ".exc[0:3]"  0 0.5 0.333 0.5 0.66600001 0.5 1 0.5;
	setAttr -s 4 ".fbc[0:3]"  0 1 0.5 1 1 0.5 1 0;
	setAttr -s 4 ".bbc[0:3]"  0 1 0.5 1 1 0.5 1 0;
	setAttr ".capComponents" -type "componentList" 2 "f[0]" "f[41]";
	setAttr ".bevelComponents" -type "componentList" 0;
	setAttr ".extrusionComponents" -type "componentList" 1 "f[1:40]";
	setAttr -s 6 ".charGroupId";
createNode groupId -n "groupid1";
	rename -uid "386F323F-4851-B699-0F37-0497A5BFB2F2";
createNode groupId -n "groupid2";
	rename -uid "349259E5-4EAE-B0AE-F17B-258F56CD5FE5";
createNode groupId -n "groupid3";
	rename -uid "B7B600A2-4FED-54B6-AD8F-A2B6607619B7";
createNode standardSurface -n "typeStandardSurface";
	rename -uid "C19C2C43-40A1-508E-41AF-1E83DABFA583";
	setAttr ".bc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "typeStandardSurfaceSG";
	rename -uid "766A1034-491F-9E10-EB47-B38047BC532F";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "058D6D4F-4DC5-4C95-F426-35852EBB5F58";
createNode vectorAdjust -n "vectorAdjust1";
	rename -uid "C3BA938A-4B54-37F0-B773-86953A43404F";
	setAttr ".extrudeDistanceScalePP" -type "doubleArray" 0 ;
	setAttr ".boundingBoxes" -type "vectorArray" 2 0.60233765840530396 0 0 0.60233765841194331
		 9.3850660324096677e-12 2.4999999999999998e-12 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "D81E14C2-4457-7194-D6F1-6497C4B1F6D9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyRemesh -n "polyRemesh1";
	rename -uid "C25932FB-48A7-A4D1-1F69-BBB616A61DB7";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
	setAttr ".nds" 1;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".tsb" no;
	setAttr ".ipt" 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "9338A4FC-4F82-E9B5-28D5-9C8AF68B41B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode shellDeformer -n "shellDeformer1";
	rename -uid "6BC3FBF8-48D5-3DAB-641C-0DB6A8E69D88";
	addAttr -s false -ci true -h true -sn "typeMessage" -ln "typeMessage" -at "message";
createNode groupId -n "groupId7";
	rename -uid "282C3B00-499F-66F4-3D71-81A4D2DBC65F";
createNode groupId -n "groupId8";
	rename -uid "4A9F129C-41D8-1223-C044-EFBC402B5D85";
createNode groupId -n "groupId9";
	rename -uid "1CE33BF3-40AA-5C80-4C11-4ABDDE360BB8";
createNode groupId -n "groupId10";
	rename -uid "31603493-419E-A760-EC07-DABE244577E2";
createNode groupId -n "groupId11";
	rename -uid "3ACB2FBD-4B70-BC8F-2AD4-6181693A4CBD";
createNode groupId -n "groupId12";
	rename -uid "7EBC42FE-484D-89E4-1EC3-78966C27C574";
createNode polyUnite -n "polyUnite1";
	rename -uid "CDEB85DD-4338-D6E8-D2A8-53B2AAF40387";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId13";
	rename -uid "1679F82D-4556-35DB-7D54-65860D6EE86B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "876C771A-4956-4929-9DDA-FBB525F6FAAF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
createNode groupId -n "groupId14";
	rename -uid "0644229D-4271-AD39-367A-7BA45CB36EF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "96D435EE-455B-3381-112F-5AA69616C6DE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "C8166A19-445A-E6A4-7903-19B001DBC04B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	rename -uid "F4780D86-4AA1-88EE-63CA-1EA039C2D119";
	setAttr ".ihi" 0;
createNode groupId -n "groupId18";
	rename -uid "CDD79890-4661-C208-1B2A-A5AB0B407D63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	rename -uid "19633CC9-4172-BAB6-8BF6-0DBF57590A76";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "01804EEC-449F-9E90-6826-91ABB2C58C8E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:129]";
createNode groupId -n "groupId20";
	rename -uid "328BDDB3-49C5-FD4A-2471-7E9AA497FD8C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "503D5864-4910-D1A8-13D7-FB87AA45880B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[132:133]" "f[135:139]" "f[144:147]" "f[152:155]";
createNode groupId -n "groupId21";
	rename -uid "52FAF6AE-49D3-E8AB-6B80-F3ACCAC41B75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "416F4E4C-45EA-FDE8-D5A5-3C8454690F99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[131]" "f[156:159]";
createNode groupId -n "groupId22";
	rename -uid "375C52F2-4549-416B-C6F7-479E030AC830";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "6270BC90-46A9-3919-1935-EEBCEB585BE1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[130]" "f[148:151]";
createNode groupId -n "groupId23";
	rename -uid "E1F8F370-4050-2C65-DBF1-28950C36B751";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "0528CEFE-4EFE-28A5-BDCE-ECB63BF703CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[134]" "f[140:143]";
createNode groupId -n "groupId24";
	rename -uid "854A289F-47B6-DF2F-5E5A-3CB00AE0A1EB";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4188AE2A-4D17-D6FA-DCC9-A891A0A8E94F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1510\n            -height 1132\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1510\\n    -height 1132\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1510\\n    -height 1132\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 50 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E41E4D23-4E74-7949-8084-D69679A7BC7B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId3.id" "xyzShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "xyzShape.iog.og[0].gco";
connectAttr "groupId4.id" "xyzShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "xyzShape.iog.og[1].gco";
connectAttr "groupId5.id" "xyzShape.iog.og[2].gid";
connectAttr "lambert4SG.mwc" "xyzShape.iog.og[2].gco";
connectAttr "groupId6.id" "xyzShape.iog.og[3].gid";
connectAttr "lambert2SG.mwc" "xyzShape.iog.og[3].gco";
connectAttr "groupId2.id" "xyzShape.ciog.cog[0].cgid";
connectAttr "groupParts1.og" "typeMeshShape1.i";
connectAttr "groupId13.id" "typeMeshShape1.iog.og[0].gid";
connectAttr "typeStandardSurfaceSG.mwc" "typeMeshShape1.iog.og[0].gco";
connectAttr "groupId14.id" "typeMeshShape1.ciog.cog[0].cgid";
connectAttr "shellDeformer1.rotationPivotPointsPP" "displayPoints1.inPointPositionsPP[0]"
		;
connectAttr "shellDeformer1.scalePivotPointsPP" "displayPoints1.inPointPositionsPP[1]"
		;
connectAttr "groupId15.id" "typeMeshShape2.iog.og[0].gid";
connectAttr "typeStandardSurfaceSG.mwc" "typeMeshShape2.iog.og[0].gco";
connectAttr "groupId16.id" "typeMeshShape2.ciog.cog[0].cgid";
connectAttr "groupId17.id" "typeMeshShape3.iog.og[0].gid";
connectAttr "typeStandardSurfaceSG.mwc" "typeMeshShape3.iog.og[0].gco";
connectAttr "groupId18.id" "typeMeshShape3.ciog.cog[0].cgid";
connectAttr "groupParts6.og" "typeMesh4Shape.i";
connectAttr "groupId19.id" "typeMesh4Shape.iog.og[0].gid";
connectAttr "typeStandardSurfaceSG.mwc" "typeMesh4Shape.iog.og[0].gco";
connectAttr "groupId20.id" "typeMesh4Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "typeMesh4Shape.iog.og[1].gco";
connectAttr "groupId21.id" "typeMesh4Shape.iog.og[2].gid";
connectAttr "lambert3SG.mwc" "typeMesh4Shape.iog.og[2].gco";
connectAttr "groupId22.id" "typeMesh4Shape.iog.og[3].gid";
connectAttr "lambert4SG.mwc" "typeMesh4Shape.iog.og[3].gco";
connectAttr "groupId23.id" "typeMesh4Shape.iog.og[4].gid";
connectAttr "lambert2SG.mwc" "typeMesh4Shape.iog.og[4].gco";
connectAttr "groupId24.id" "typeMesh4Shape.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "typeStandardSurfaceSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "typeStandardSurfaceSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDenoiser.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "xyzShape.iog.og[3]" "lambert2SG.dsm" -na;
connectAttr "typeMesh4Shape.iog.og[4]" "lambert2SG.dsm" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId23.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "groupId4.msg" "lambert3SG.gn" -na;
connectAttr "groupId21.msg" "lambert3SG.gn" -na;
connectAttr "xyzShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "typeMesh4Shape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "groupId5.msg" "lambert4SG.gn" -na;
connectAttr "groupId22.msg" "lambert4SG.gn" -na;
connectAttr "xyzShape.iog.og[2]" "lambert4SG.dsm" -na;
connectAttr "typeMesh4Shape.iog.og[3]" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert4SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "typeMesh1.msg" "type1.transformMessage";
connectAttr "type1.vertsPerChar" "typeExtrude1.vertsPerChar";
connectAttr "groupid1.id" "typeExtrude1.cid";
connectAttr "groupid2.id" "typeExtrude1.bid";
connectAttr "groupid3.id" "typeExtrude1.eid";
connectAttr "type1.outputMesh" "typeExtrude1.in";
connectAttr "type1.extrudeMessage" "typeExtrude1.typeMessage";
connectAttr "groupId7.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId8.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId9.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId10.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId11.id" "typeExtrude1.charGroupId" -na;
connectAttr "groupId12.id" "typeExtrude1.charGroupId" -na;
connectAttr "typeStandardSurface.oc" "typeStandardSurfaceSG.ss";
connectAttr "typeMeshShape1.iog.og[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMeshShape1.ciog.cog[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMeshShape2.iog.og[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMeshShape2.ciog.cog[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMeshShape3.iog.og[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMeshShape3.ciog.cog[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMesh4Shape.iog.og[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "typeMesh4Shape.ciog.cog[0]" "typeStandardSurfaceSG.dsm" -na;
connectAttr "groupId13.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "groupId14.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "groupId15.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "groupId16.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "groupId17.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "groupId18.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "groupId19.msg" "typeStandardSurfaceSG.gn" -na;
connectAttr "typeStandardSurfaceSG.msg" "materialInfo4.sg";
connectAttr "typeStandardSurface.msg" "materialInfo4.m";
connectAttr "typeExtrude1.out" "vectorAdjust1.ip[0].ig";
connectAttr "typeExtrude1.out" "vectorAdjust1.orggeom[0]";
connectAttr "type1.grouping" "vectorAdjust1.grouping";
connectAttr "type1.manipulatorTransforms" "vectorAdjust1.manipulatorTransforms";
connectAttr "type1.alignmentMode" "vectorAdjust1.alignmentMode";
connectAttr "type1.vertsPerChar" "vectorAdjust1.vertsPerChar";
connectAttr "typeExtrude1.vertexGroupIds" "vectorAdjust1.vertexGroupIds";
connectAttr "vectorAdjust1.og[0]" "polySoftEdge1.ip";
connectAttr "typeMeshShape1.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polyRemesh1.ip";
connectAttr "typeMeshShape1.wm" "polyRemesh1.mp";
connectAttr "type1.remeshMessage" "polyRemesh1.typeMessage";
connectAttr "typeExtrude1.capComponents" "polyRemesh1.ics";
connectAttr "polyRemesh1.out" "polyAutoProj1.ip";
connectAttr "typeMeshShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "shellDeformer1.ip[0].ig";
connectAttr "typeExtrude1.out" "shellDeformer1.orggeom[0]";
connectAttr "type1.vertsPerChar" "shellDeformer1.vertsPerChar";
connectAttr ":time1.o" "shellDeformer1.ti";
connectAttr "type1.grouping" "shellDeformer1.grouping";
connectAttr "type1.animationMessage" "shellDeformer1.typeMessage";
connectAttr "typeExtrude1.vertexGroupIds" "shellDeformer1.vertexGroupIds";
connectAttr "typeMeshShape1.o" "polyUnite1.ip[0]";
connectAttr "typeMeshShape2.o" "polyUnite1.ip[1]";
connectAttr "typeMeshShape3.o" "polyUnite1.ip[2]";
connectAttr "xyzShape.o" "polyUnite1.ip[3]";
connectAttr "typeMeshShape1.wm" "polyUnite1.im[0]";
connectAttr "typeMeshShape2.wm" "polyUnite1.im[1]";
connectAttr "typeMeshShape3.wm" "polyUnite1.im[2]";
connectAttr "xyzShape.wm" "polyUnite1.im[3]";
connectAttr "shellDeformer1.og[0]" "groupParts1.ig";
connectAttr "groupId13.id" "groupParts1.gi";
connectAttr "polyUnite1.out" "groupParts2.ig";
connectAttr "groupId19.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId20.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId21.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId22.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId23.id" "groupParts6.gi";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "typeStandardSurfaceSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "typeStandardSurface.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "xyzShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "xyzShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "typeMesh4Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
// End of XYZ.ma
