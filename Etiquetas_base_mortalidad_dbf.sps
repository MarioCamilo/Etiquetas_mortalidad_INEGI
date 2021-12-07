* Encoding: UTF-8.
*Etiquetas para base de mortalidad general*

VALUE LABELS sexo
1. Hombres
2. Mujeres
9. No especificado.
EXECUTE.


*Recodidicar edades individuales*

DATASET ACTIVATE ConjuntoDatos1.
RECODE edad (1001 thru 3098=1) (ELSE=Copy) INTO Edad_nueva.
VARIABLE LABELS  Edad_nueva 'Edad_nueva'.
EXECUTE.

VALUE LABELS Edad_nueva
1.00 0
4001. 1
4002. 2
4003. 3
4004. 4
4005. 5
4006. 6
4007. 7
4008. 8
4009. 9
4010. 10
4011. 11
4012. 12
4013. 13
4014. 14
4015. 15
4016. 16
4017. 17
4018. 18
4019. 19
4020. 20
4021. 21
4022. 22
4023. 23
4024. 24
4025. 25
4026. 26
4027. 27
4028. 28
4029. 29
4030. 30 
4031. 31
4032. 32
4033. 33
4034. 34
4035. 35
4036. 36
4037. 37
4038. 38
4039. 39
4040. 40
4041. 41
4042. 42
4043. 43
4044. 44
4045. 45
4046. 46
4047. 47
4048. 48
4049. 49
4050. 50
4051. 51
4052. 52
4053. 53
4054. 54
4055. 55
4056. 56
4057. 57
4058. 58
4059. 59
4060. 60
4061. 61
4062. 62
4063. 63
4064. 64
4065. 65
4066. 66
4067. 67
4068. 68
4069. 69
4070. 70
4071. 71
4072. 72
4073. 73
4074. 74
4075. 75
4076. 76
4077. 77
4078. 78
4079. 79
4080. 80
4081. 81
4082. 82
4083. 83
4084. 84
4085. 85
4086. 86
4087. 87
4088. 88
4089. 89
4090. 90
4091. 91
4092. 92
4093. 93
4094. 94
4095. 95
4096. 96
4097. 97
4098. 98
4099. 99
4100. 100
4101. 101
4102. 102
4103. 103
4104. 104
4105. 105
4106. 106
4107. 107
4108. 108
4109. 109
4110. 110
4111. 111
4112. 112
4113. 113
4114. 114
4115. 115
4116. 116
4117. 117
4118. 118
4119. 119
4120. 120
4121. 121
4998. No especificados.
EXECUTE.

*Recodificar edades individuales sin clave 4000*

DATASET ACTIVATE ConjuntoDatos1.
RECODE Edad_nueva (1=0) (4001=1) (4002=2) (4003=3) (4004=4) (4005=5) (4006=6) (4007=7) (4008=8) 
    (4009=9) (4010=10) (4011=11) (4012=12) (4013=13) (4014=14) (4015=15) (4016=16) (4017=17) (4018=18) 
    (4019=19) (4020=20) (4021=21) (4022=22) (4023=23) (4024=24) (4025=25) (4026=26) (4027=27) (4028=28) 
    (4029=29) (4030=30) (4031=31) (4032=32) (4033=33) (4034=34) (4035=35) (4036=36) (4037=37) (4038=38) 
    (4039=39) (4040=40) (4041=41) (4042=42) (4043=43) (4044=44) (4045=45) (4046=46) (4047=47) (4048=48) 
    (4049=49) (4050=50) (4051=51) (4052=52) (4053=53) (4054=54) (4055=55) (4056=56) (4057=57) (4058=58) 
    (4059=59) (4060=60) (4061=61) (4062=62) (4063=63) (4064=64) (4065=65) (4066=66) (4067=67) (4068=68) 
    (4069=69) (4070=70) (4071=71) (4072=72) (4073=73) (4074=74) (4075=75) (4076=76) (4077=77) (4078=78) 
    (4079=79) (4080=80) (4081=81) (4082=82) (4083=83) (4084=84) (4085=85) (4086=86) (4087=87) (4088=88) 
    (4089=89) (4090=90) (4091=91) (4092=92) (4093=93) (4094=94) (4095=95) (4096=96) (4097=97) (4098=98) 
    (4099=99) (4100=100) (4101=101) (4102=102) (4103=103) (4104=104) (4105=105) (4106=106) (4107=107) 
    (4108=108) (4109=109) (4110=110) (4111=111) (4112=112) (4113=113) (4114=114) (4115=115) (4116=116) 
    (4117=117) (4118=118) (4119=119) (4120=120) (4121=121) (ELSE=SYSMIS) INTO Edad_N.
VARIABLE LABELS  Edad 'Edad_N'.
EXECUTE.

VALUE LABELS Edad_N
0 0 años
1 1 año
1. 1 año
2. 2 años
3. 3 años
4. 4 años
5. 5 años
6. 6 años
7. 7 años
8. 8 años
9. 9 años
10. 10 años
11. 11 años
12. 12 años
13. 13 años
14. 14 años
15. 15 años
16. 16 años
17. 17 años
18. 18 años
19. 19 años
20. 20 años
21. 21 años
22. 22 años
23. 23 años
24. 24 años
25. 25 años
26. 26 años
27. 27 años
28. 28 años
29. 29 años
30. 30 años
31. 31 años
32. 32 años
33. 33 años
34. 34 años
35. 35 años
36. 36 años
37. 37 años
38. 38 años
39. 39 años
40. 40 años
41. 41 años
42. 42 años
43. 43 años
44. 44 años
45. 45 años
46. 46 años
47. 47 años
48. 48 años
49. 49 años
50. 50 años
51. 51 años
52. 52 años
53. 53 años
54. 54 años
55. 55 años
56. 56 años
57. 57 años
58. 58 años
59. 59 años
60. 60 años
61. 61 años
62. 62 años
63. 63 años
64. 64 años
65. 65 años
66. 66 años
67. 67 años
68. 68 años
69. 69 años
70. 70 años
71. 71 años
72. 72 años
73. 73 años
74. 74 años
75. 75 años
76. 76 años
77. 77 años
78. 78 años
79. 79 años
80. 80 años
81. 81 años
82. 82 años
83. 83 años
84. 84 años
85. 85 años
86. 86 años
87. 87 años
88. 88 años
89. 89 años
90. 90 años
91. 91 años
92. 92 años
93. 93 años
94. 94 años
95. 95 años
96. 96 años
97. 97 años
98. 98 años
99. 99 años
100. 100 años
101. 101 años
102. 102 años
103. 103 años
104. 104 años
105. 105 años
106. 106 años
107. 107 años
108. 108 años
109. 109 años
110. 110 años
111. 111 años
112. 112 años
113. 113 años
114. 114 años
115. 115 años
116. 116 años
117. 117 años
118. 118 años
119. 119 años
120. 120 años
121. 121 años
4998. No especificados.
EXECUTE.

*Agrupar edades*

RECODE edad (999=19) (0 thru 4=1) (5 thru 9=2) (10 thru 14=3) (15 thru 19=4) 
    (20 thru 24=5) (25 thru 29=6) (30 thru 34=7) (35 thru 39=8) (40 thru 44=9) (45 thru 49=10) (50 thru 
    54=11) (55 thru 59=12) (60 thru 64=13) (65 thru 69=14) (70 thru 74=15) (75 thru 79=16) (80 thru 
    84=17) (85 thru Highest=18) INTO edad_agru.
VARIABLE LABELS  edad_agru 'Edad agrupada'.
EXECUTE.

*Etiquetas para edades agrupadas*

VALUE LABELS edad_agru
1 0-4
2 5-9
3 10-14
4 15-19
5 20-24
6 25-29
7 30-34
8 35-39
9 40-44
10 45-49
11 50-54
12 55-59
13 60-64
14 65-69
15 70-74
16 75-79
17 80-84
18 85 y más
19 No especificado.
EXECUTE.


*Recodificar en la misma variable gl_lismex para pasar a númerico ciertos valores*

RECODE gr_lismex ('E49'='49') ('E50'='50') ('E51'='51') ('E52'='52') ('E53'='53') ('E54'='54') 
    ('E55'='55') ('E56'='56') ('E57'='57') ('E58'='58') ('E59'='59').
EXECUTE.


*Etiquetas para gr_lismex ya númerico*

VALUE LABELS gr_lismex
1 Enfermedades infecciosas intestinales
2 Tuberculosis
3 Otras enfermedades bacterianas
4 Infecciones con modo de transmision predominantemente sexual
5 Otras enfermedades infecciosas y parasitarias
6 Enfermedades viricas
7 Rickettsiosis y otras enfermedades debidas a protozoarios
8 Tumores malignos del labio, de la cavidad bucal y de la faringe
9 Tumores malignos de los organos digestivos
10 Tumor maligno de organos respiratorios e intratoracicos
11 Tumores malignos de los huesos, de los cartilagos articulares, del tejido conjuntivo, de la piel y de la mama
12 Tumores malignos de los organos genitourinarios
13 Tumores malignos de otros sitios y de los no especificados
14 Tumores malignos del tejido linfatico, de los organos hematopoyeticos y tejidos afines
15 Tumores malignos -primarios- de sitios multiples independientes
16 Tumores in situ
17 Tumores benignos
18 Tumores de comportamiento incierto o desconocido
19 Enfermedades de la sangre y de los organos hematopoyeticos
20 Enfermedades endocrinas y metabolicas
21 Desnutricion y otras deficiencias nutricionales
22 Trastornos mentales y del comportamiento
23 Enfermedades del sistema nervioso
24 Enfermedades del ojo y sus anexos
25 Enfermedades del oido y de la apofisis mastoides
26 Fiebre reumatica aguda y enfermedades cardiacas reumaticas cronicas
27 Enfermedades hipertensivas
28 Enfermedades isquemicas del corazon
29 Enfermedades de la circulacion pulmonar y otras enfermedades del corazon
30 Enfermedades cerebrovasculares
31 Otras enfermedades del aparato circulatorio
32 Infecciones y otras enfermedades de las vias respiratorias superiores
33 Otras enfermedades del aparato respiratorio
34 Enfermedades de la cavidad bucal, de las glandulas salivales y de los maxilares
35 Enfermedades de otras partes del aparato digestivo
36 Enfermedades de la piel y del tejido  subcutaneo
37 Enfermedades del sistema osteomuscular y del tejido conjuntivo
38 Enfermedades del aparato urinario
39 Enfermedades de los organos genitales masculinos
40 Trastornos de la mama
41 Enfermedades de los organos genitales femeninos
42 Trastornos del sistema genitourinario consecutivo a procedimientos no clasificados en otra parte
43 Causas obstetricas directas
44 Parto unico espontaneo
45 Causas obstetricas indirectas
46 Ciertas afecciones originadas en el periodo perinatal
47 Malformaciones congenitas, deformidades y anomalias cromosomicas
48 Sintomas, signos y hallazgos anormales clinicos y de laboratorio, no clasificados en otra parte
49 Accidentes de transporte
50 Caidas
51 Otros accidentes, incluso los efectos tardios
52 Exposicion al humo, fuego y llamas
53 Envenenamiento accidental por, y exposicion a sustancias nocivas
54 Lesiones autoinfligidas intencionalmente
55 Agresiones
56 Otra violencia
57 Drogas, medicamentos y sustancias biologicas causantes de efectos adversos en su uso terapeutico
58 Contratiempos durante la atencion medica, reacciones anormales y complicaciones ulteriores
59 Secuelas de lesiones autoinfligidas, agresiones y eventos de intencion no determinada, de atencion medica y quirurgica.
EXECUTE.


*Etiquetas lengua índigena¨*

VALUE LABELS lengua
1 Sí
2 No
9 Se ignora.
EXECUTE.

*Etiquetas edad agrupada*

VALUE LABELS edad_agru
1 Menores de un año
2 1 año
3 2 años
4 3 años
5 4 años
6 5-9 años
7 10-14 años
8 15-19 años
9 20-24 años
10 25-29 años
11 30-34 años
12 35-39 años
13 40-44 años
14 45-49 años
15 50-54 años
16 55-59 años
17 60-64 años
18 65-69 años
19 70-74 años
20 75-79 años
21 80-84 años
22 85-89 años
23 90-94 años
24 95-99 años
25 100-104 años
26 105-109 años
27 110-114 años
28 115-119 años
29 120 años
30 No especificado.
EXECUTE.

*Etiquetas Entidad*

VALUE LABELS ent_regis
001 Aguascalientes
002 Baja California
003 Baja California Sur
004 Campeche
005 Coahuila de Zaragoza
006 Colima
007 Chiapas
008 Chihuahua
009 Distrito Federal
010 Durango
011 Guanajuato
012 Guerrero
013 Hidalgo
014 Jalisco
015 Mexico
016 Michoacan de Ocampo
017 Morelos
018 Nayarit
019 Nuevo Leon
020 Oaxaca
021 Puebla
022 Queretaro de Arteaga
023 Quintana Roo
024 San Luis Potosi
025 Sinaloa
026 Sonora
027 Tabasco
028 Tamaulipas
029 Tlaxcala
030 Veracruz de Ignacio de La Llave
031 Yucatan
032 Zacatecas
033 Entidad no especificada.
EXECUTE.

VALUE LABELS ent_ocurr
001 Aguascalientes
002 Baja California
003 Baja California Sur
004 Campeche
005 Coahuila de Zaragoza
006 Colima
007 Chiapas
008 Chihuahua
009 Distrito Federal
010 Durango
011 Guanajuato
012 Guerrero
013 Hidalgo
014 Jalisco
015 Mexico
016 Michoacan de Ocampo
017 Morelos
018 Nayarit
019 Nuevo Leon
020 Oaxaca
021 Puebla
022 Queretaro de Arteaga
023 Quintana Roo
024 San Luis Potosi
025 Sinaloa
026 Sonora
027 Tabasco
028 Tamaulipas
029 Tlaxcala
030 Veracruz de Ignacio de La Llave
031 Yucatan
032 Zacatecas
033 Entidad no especificada.
EXECUTE.

*Etiquietas Número de habitantes por lugar de residencia*

VALUE LABELS tloc_resid
1 De 1 a 999 habitantes
2 De 1 000 a 1 999 habitantes
3 De 2 000 a 2 499 habitantes
4 De 2 500 a 4 999 habitantes
5 De 5 000 a 9 999 habitantes
6 De 10 000 a 14 999 habitantes
7 De 15 000 a 19 999 habitantes
8 De 20 000 a 29 999 habitantes
9 De 30 000 a 39 999 habitantes
10 De 40 000 a 49 999 habitantes
11 De 50 000 a 74 999 habitantes
12 De 75 000 a 99 999 habitantes
13 De 100 000 a 249 999 habitantes
14 De 250 000 a 499 999 habitantes
15 De 500 000 a 999 999 habitantes
16 De 1 000 000 a 1 499 999 habitantes
17 De 1 500 000 y más habitantes
99 No especificado.
EXECUTE.

*Etiquetas Número de habitantes, por lugar de ocurrencia*


VALUE LABELS tloc_ocurr
1 De 1 a 999 habitantes
2 De 1 000 a 1 999 habitantes
3 De 2 000 a 2 499 habitantes
4 De 2 500 a 4 999 habitantes
5 De 5 000 a 9 999 habitantes
6 De 10 000 a 14 999 habitantes
7 De 15 000 a 19 999 habitantes
8 De 20 000 a 29 999 habitantes
9 De 30 000 a 39 999 habitantes
10 De 40 000 a 49 999 habitantes
11 De 50 000 a 74 999 habitantes
12 De 75 000 a 99 999 habitantes
13 De 100 000 a 249 999 habitantes
14 De 250 000 a 499 999 habitantes
15 De 500 000 a 999 999 habitantes
16 De 1 000 000 a 1 499 999 habitantes
17 De 1 500 000 y más habitantes
99 No especificado.
EXECUTE.

*Etiquetas mes de ocurrencia*

VALUE LABELS mes_ocurr
1	Enero
2	Febrero
3	Marzo
4	Abril
5	Mayo
6	Junio
7	Julio
8	Agosto
9	Septiembre
10	Octubre
11	Noviembre
12	Diciembre
99	No especificado.
EXECUTE.

*Etiquetas escolaridad*

VALUE LABELS escolarida
1 Sin escolaridad
2 Preescolar
3 Primaria incompleta
4 Primaria completa
5 Secundaria incompleta
6 Secundaria completa
7 Bachillerato incompleto
8 Bachillerato completo
9 Profesional
10 Posgrado
88 No aplica a menores de 3 años
99 No especificado.
EXECUTE.


*Etiquetas estado civil*

VALUE LABELS edo_civil
1 Soltero-a
2 Divorciado-a
3 Viudo-a
4 Unión libre
5 Casado-a
6 Separado-a
8 No aplica a menores de 12 años
9 No especificado.
EXECUTE.

*Etiquetas para lugar de ocurrencia*

VALUE LABELS lugar_ocur
0 Vivienda particular
1 Vivienda colectiva
2 Escuela u oficina pública
3 Aéreas deportivas
4 Vía pública
5 Área comercial o de servicios
6 Área industrial – taller, fábrica u obra
7 Granja o rancho
8 Otro
9 Se ignora
88 No aplica para muerte natural.
EXECUTE.


* Etiquetas violencia familiar*

VALUE LABELS vio_fami
1 Hubo violencia familiar
2 Hubo violencia no familiar
8 No aplica cuando no es homicidio
9 No especificado.
EXECUTE.

*Etiquetas urbano/rural*

VALUE LABELS area_ur
1 Urbana
2 Rural
9 No especificado.
EXECUTE.

*Etiquetas condición económica*

VALUE LABELS cond_act
1 Sí
2 No
8 No aplica a menores de 5 años
9 Se ignora.
EXECUTE.


*Recodificar municipios de Guerrero*

DATASET ACTIVATE ConjuntoDatos1.
RECODE mun_ocurr (1 thru 81=Copy) (ELSE=SYSMIS) INTO Mun_ocurr_Gro.
VARIABLE LABELS  Mun_ocurr_Gro 'Municipios Guerrero'.
EXECUTE.

*Etiquetas Municipios Guerrero¨*

VALUE LABELS Mun_ocurr_Gro
1	Acapulco de Juárez
2	Ahuacuotzingo
3	Ajuchitlán del Progreso
4	Alcozauca de Guerrero
5	Alpoyeca
6	Apaxtla
7	Arcelia
8	Atenango del Rio
9	Atlamajalcingo del Monte
10	Atlixtac
11	Atoyac de Álvarez
12	Ayutla de los Libres
13	Azoy
14	Benito Juárez
15	Buenavista de Cuéllar
16	Coahuayutla de José María Izazaga
17	Cocula
18	Copala
19	Copalillo
20	Copanatoyac
21	Coyuca de Benítez
22	Coyuca de Catalán
23	Cuajinicuilapa
24	Cualác
25	Cuautepec
26	Cuetzala del Progreso
27	Cutzamala de Pinzón
28	Chilapa de Álvarez
29	Chilpancingo de los Bravo
30	Florencio Villarreal
31	General Canuto A. Neri
32	General Heliodoro Castillo
33	Huamuxtitlán
34	Huitzuco de los Figueroa
35	Iguala de la Independencia
36	Igualapa
37	Ixcateopan de Cuauhtémoc
38	Zihuatanejo de Azueta
39	Juan R. Escudero
40	Leonardo Bravo
41	Malinaltepec
42	Mártir de Cuilapan
43	Metlatónoc
44	Mochitlán
45	Olinalá
46	Ometepec
47	Pedro Ascencio Alquisiras
48	Petatlán
49	Pilcaya
50	Pungarabato
51	Quechultenango
52	San Luis Acatlán
53	San Marcos
54	San Miguel Totolapan
55	Taxco de Alarcón
56	Tecoanapa
57	Técpan de Galeana
58	Teloloapan
59	Tepecoacuilco de Trujano
60	Tetipac
61	Tixtla de Guerrero
62	Tlacoachistlahuaca
63	Tlacoapa
64	Tlalchapa
65	Tlalixtaquilla de Maldonado
66	Tlapa de Comonfort
67	Tlapehuala
68	La Unión de Isidoro Montes de Oca
69	Xalpatláhuac
70	Xochihuehuetlán
71	Xochistlahuaca
72	Zapotitlán Tablas
73	Zirándaro
74	Zitlala
75	Eduardo Neri
76	Acatepec
77	Marquelia
78	Cochoapa el Grande
79	José Joaquín de Herrera
80	Juchitán
81	Iliatenco.
EXECUTE.

*Recodificar municipios de Michoacán*

DATASET ACTIVATE ConjuntoDatos1.
RECODE mun_ocurr (1 thru 113=Copy) (ELSE=SYSMIS) INTO Mun_ocurr_Mich.
VARIABLE LABELS  Mun_ocurr_Mich 'Municipios Michoacán'.
EXECUTE.

*Etiquetas Municipios Michoacán*

VALUE LABELS Mun_ocurr_Mich
1	Acuitzio
2	Aguililla
3	Álvaro Obregón
4	Angamacutiro
5	Angangueo
6	Apatzingán
7	Aporo
8	Aquila
9	Ario
10	Arteaga
11	Briseñas
12	Buenavista
13	Carácuaro
14	Coahuayana
15	Coalcomán de Vázquez Pallares
16	Coeneo
17	Contepec
18	Copándaro
19	Cotija
20	Cuitzeo
21	Charapan
22	Charo
23	Chavinda
24	Cherán
25	Chilchota
26	Chinicuila
27	Chucándiro
28	Churintzio
29	Churumuco
30	Ecuandureo
31	Epitacio Huerta
32	Erongarícuaro
33	Gabriel Zamora
34	Hidalgo
35	La Huacana
36	Huandacareo
37	Huaniqueo
38	Huetamo
39	Huiramba
40	Indaparapeo
41	Irimbo
42	Ixtlán
43	Jacona
44	Jiménez
45	Jiquilpan
46	Juárez
47	Jungapeo
48	Lagunillas
49	Madero
50	Maravatío
51	Marcos Castellanos
52	Lázaro Cárdenas
53	Morelia
54	Morelos
55	Múgica
56	Nahuatzen
57	Nocupétaro
58	Nuevo Parangaricutiro
59	Nuevo Urecho
60	Numarán
61	Ocampo
62	Pajacuarán
63	Panindícuaro
64	Parácuaro
65	Paracho
66	Pátzcuaro
67	Penjamillo
68	Peribán
69	La Piedad
70	Purépero
71	Puruándiro
72	Queréndaro
73	Quiroga
74	Cojumatlán de Régules
75	Los Reyes
76	Sahuayo
77	San Lucas
78	Santa Ana Maya
79	Salvador Escalante
80	Senguio
81	Susupuato
82	Tacámbaro
83	Tancítaro
84	Tangamandapio
85	Tangancícuaro
86	Tanhuato
87	Taretan
88	Tarímbaro
89	Tepalcatepec
90	Tingambato
91	Tingüindín
92	Tiquicheo de Nicolás Romero
93	Tlalpujahua
94	Tlazazalca
95	Tocumbo
96	Tumbiscatío
97	Turicato
98	Tuxpan
99	Tuzantla
100	Tzintzuntzan
101	Tzitzio
102	Uruapan
103	Venustiano Carranza
104	Villamar
105	Vista Hermosa
106	Yurécuaro
107	Zacapu
108	Zamora
109	Zináparo
110	Zinapécuaro
111	Ziracuaretiro
112	Zitácuaro
113	José Sixto Verduzco.
EXECUTE.

*Recodificar municipios de Estado de México*

DATASET ACTIVATE ConjuntoDatos1.
RECODE mun_ocurr (1 thru 125=Copy) (ELSE=SYSMIS) INTO Mun_ocurr_EdoMex.
VARIABLE LABELS  Mun_ocurr_EdoMex 'Municipios Estado de México'.
EXECUTE.

*Etiquetas Municipios Estado de México*

VALUE LABELS Mun_ocurr_EdoMex
001	Acambay
002	Acolman
003	Aculco
004	Almoloya de Alquisiras
005	Almoloya de Juárez
006	Almoloya del Río
007	Amanalco
008	Amatepec
009	Amecameca
010	Apaxco
011	Atenco
012	Atizapán
013	Atizapán de Zaragoza
014	Atlacomulco
015	Atlautla
016	Axapusco
017	Ayapango
018	Calimaya
019	Capulhuac
020	Coacalco de Berriozábal
021	Coatepec Harinas
022	Cocotitlán
023	Coyotepec
024	Cuautitlán
025	Chalco
026	Chapa de Mota
027	Chapultepec
028	Chiautla
029	Chicoloapan
030	Chiconcuac
031	Chimalhuacán
032	Donato Guerra
033	Ecatepec de Morelos
034	Ecatzingo
035	Huehuetoca
036	Hueypoxtla
037	Huixquilucan
038	Isidro Fabela
039	Ixtapaluca
040	Ixtapan de la Sal
041	Ixtapan del Oro
042	Ixtlahuaca
043	Xalatlaco
044	Jaltenco
045	Jilotepec
046	Jilotzingo
047	Jiquipilco
048	Jocotitlán
049	Joquicingo
050	Juchitepec
051	Lerma
052	Malinalco
053	Melchor Ocampo
054	Metepec
055	Mexicaltzingo
056	Morelos
057	Naucalpan de Juárez
058	Nezahualcóyotl
059	Nextlalpan
060	Nicolás Romero
061	Nopaltepec
062	Ocoyoacac
063	Ocuilan
064	El Oro
065	Otumba
066	Otzoloapan
067	Otzolotepec
068	Ozumba
069	Papalotla
070	La Paz
071	Polotitlán
072	Rayón
073	San Antonio la Isla
074	San Felipe del Progreso
075	San Martín de las Pirámides
076	San Mateo Atenco
077	San Simón de Guerrero
078	Santo Tomás
079	Soyaniquilpan de Juáez
080	Sultepec
081	Tecámac
082	Tejupilco
083	Temamatla
084	Temascalapa
085	Temascalcingo
086	Temascaltepec
087	Temoaya
088	Tenancingo
089	Tenango del Aire
090	Tenango del Valle
091	Teoloyucan
092	Teotihuacán
093	Tepetlaoxtoc
094	Tepetlixpa
095	Tepotzotlán
096	Tequixquiac
097	Texcaltitlán
098	Texcalyacac
099	Texcoco
100	Tezoyuca
101	Tianguistenco
102	Timilpan
103	Tlalmanalco
104	Tlalnepantla de Baz
105	Tlatlaya
106	Toluca
107	Tonatico
108	Tultepec
109	Tultitlán
110	Valle de Bravo
111	Villa de Allende
112	Villa del Carbón
113	Villa Guerrero
114	Villa Victoria
115	Xonacatlán
116	Zacazonapan
117	Zacualpan
118	Zinacantepec
119	Zumpahuacán
120	Zumpango
121	Cuautitlán Izcalli
122	Valle de Chalco Solidaridad
123	Luvianos
124	San José del Rincón
125	Tonanitla.
EXECUTE.

