{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 41.0, 84.0, 1068.0, 713.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1139.0, 489.0, 150.0, 62.0 ],
					"text" : "il segnale di controllo è troppo ruvido, bisogna filtrarlo per avere un segnale più piacevole"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1129.0, 391.0, 153.0, 62.0 ],
					"text" : "inserisci un filtro passa basso sul segnale di controllo o un median filter con parametri 5/7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 529.0, 122.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 215.0, 157.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 215.0, 192.5, 49.0, 22.0 ],
									"text" : "metro 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 215.0, 233.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 215.0, 122.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 375.5, 137.0, 39.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 41.0, 84.0, 1068.0, 713.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 439.0, 187.0, 154.0, 117.0 ],
									"text" : "da arduino mando dati da 8 bit per rendere la comunicazione più veloce, mentre qui posso permettermi di usare valori float dato che ho un tetto massimo alla frequenza di controllo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 439.0, 324.0, 150.0, 62.0 ],
									"text" : "inverto gli estremi perchè ottengo valori più alti quando sono vicino al sensore(quindi in basso)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 381.5, 388.0, 101.0, 22.0 ],
									"text" : "scale 0 252 1. -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 258.5, 388.0, 101.0, 22.0 ],
									"text" : "scale 0 252 1. -1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 155.0, 388.0, 101.0, 22.0 ],
									"text" : "scale 0 252 -1. 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 215.0, 523.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 223.5, 39.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-64",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 381.5, 334.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-58",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 258.5, 334.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 155.0, 334.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 328.0, 239.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 217.0, 239.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 258.5, 303.336667342185933, 29.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 129.0, 243.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 381.5, 303.336667342185933, 29.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 155.0, 303.336667342185933, 29.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 215.0, 487.0, 68.0, 22.0 ],
									"text" : "pak 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 262.5, 60.0, 55.0, 20.0 ],
									"text" : "X , Y,  Z"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 335.25, 87.0, 150.0, 89.0 ],
									"text" : "quando l'input fa un matching con un delimitatore di coordinata, viene generato un bang che manda il valore in uscita"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "bang", "" ],
									"patching_rect" : [ 223.5, 87.0, 94.0, 22.0 ],
									"text" : "sel 253 254 255"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"midpoints" : [ 283.0, 175.5, 337.5, 175.5 ],
									"source" : [ "obj-22", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"midpoints" : [ 258.0, 175.5, 226.5, 175.5 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 1 ],
									"midpoints" : [ 308.0, 205.668333671093023, 278.5, 205.668333671093023 ],
									"order" : 1,
									"source" : [ "obj-22", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"midpoints" : [ 233.0, 175.5, 138.5, 175.5 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 1 ],
									"midpoints" : [ 308.0, 207.668333671093023, 401.5, 207.668333671093023 ],
									"order" : 0,
									"source" : [ "obj-22", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 1 ],
									"midpoints" : [ 308.0, 205.668333671093023, 175.0, 205.668333671093023 ],
									"order" : 2,
									"source" : [ "obj-22", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 2 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"midpoints" : [ 226.5, 283.668333671093023, 268.0, 283.668333671093023 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"midpoints" : [ 138.5, 283.668333671093023, 164.5, 283.668333671093023 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 375.5, 279.5, 42.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Map"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 524.0, 137.0, 123.0, 22.0 ],
					"text" : "print status @popup1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 286.166658282279968, 7.333341240882874, 150.0, 20.0 ],
					"text" : "mp3"
				}

			}
, 			{
				"box" : 				{
					"attr" : "mode",
					"id" : "obj-14",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 695.500007033348083, 24.833330988883972, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 198.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "C:\\Users\\eliad\\Downloads\\Samples\\campioni\\Various Artists - Left Alone.wav",
								"filename" : "Various Artists - Left Alone.wav",
								"filekind" : "audiofile",
								"id" : "u799001623",
								"selection" : [ 0.0, 1.0 ],
								"loop" : 0,
								"content_state" : 								{

								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-31",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 38.83333333333303, 31.5, 277.0, 199.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 860.500007033348083, 23.833330988883972, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.499991615612998, 409.500000476837158, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 389.0, 470.833333969116211, 194.0, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 4, 2, "ambix_binaural_o1.vstinfo", ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "ambix_binaural_o1.vstinfo",
							"plugindisplayname" : "ambix_binaural_o1",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 1094871345,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "2320.CMlaKA....fQPMDZ....ADjPoEC....Y....A........................................f.0VMjLgrLB...OMkETLU0QI4zTEQEUI4zQSARXiQWZ1UFTxU1bkQWOhLWb0Elbk4xXu4lYoclHf.mbkMWYzQTZx0iHCoCWUMWYxMGWkwVZgQFWAAGbDEFcgwkTuEVao41YbEVahkFdbIVZtEVcxEFaeAmbkMWYzMmHfLzatYmP0YlYkI2TooWY8HhMzHBHGEVZt0iHv3RMh.xbz8lbkMzatYVZmQTXzEVRtAkbuoVYiQWOhDiHfL1atYVZmQTXzEVOhDSMzLiKPMmdtPjat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKtjWQWM1YIcUVzwTLgQWVVoUavPSZOMGa14RPQcWc0UlRFgzUwcWSp4FZlgDVgIELBYUQBQlcgc1cvj0TVgUdrEiZvrhd0gCcIgjUPcGYtk2azHSZxvzMjQVdWQWNvj0RYgSdvTkMPMlUQMWUrsVZJMjc3bjQ3kENEUkZTwFLHAUSAg2PqMSSEUSXtTjQrcEdvgkQ4EVT0vlLmkjTqwFSXkTSEwld3LTRJIWUv3jVO81ck4RaRkUZookSmUVPZIkVmoUUjcVQDUja2AUMuIWQhg1QM4BNOc1Qm4hYCEjLwoGdAc1SsM1Uh0DT2kTcy4jSIgSdYElTqfUXWg2YwHkaLQSctTDdRomUw4TdyjSToM1TpEmbmMjPoYzS3Mmc1vVXJsRMuIyJ5QUcGMFNWwlV4sRQt.iTCAkYB4hKtHDRt3hcvMlPQg0cO8Fc1UlKt3hKKIjKt3xRt3hKtXFQLsVPC0DLDw1RxTDaiUEQYcERMkkXXQ0M4Q1X0njV1wVLDIFQYM1cx8jKmYlYJAmdBklVTcEVQkjZ54xPL0jMggmbEITQqQUPuIEaEMiRRIDLpUCcwXFZlkCT2ImbnIkZ3wVPEkkSZITVDUULGYFcwXSL1rRaSshMvk2YGkyXNY2PsM2bIsRN3jkKTQVRgU1PvHlalkmLM4hbAMjb4XmKzUWZAI2Px3VMJMjUukCQ34xbusVSRMzMX0TdZ4VS2nTS33BZAgVayEDUKcjazcWdtbzL3XzLOYGZAMFSKoGZOMEcJElSQUVQOUTcU8FMmgUYqDlblUFSWMiRgMULzTWdGQSNU8zLTM0QHk2TFUmLYcSPwEDSg8zcrM2Z1P0R5QFUGkSSGQENhczXgcSVGIyUJYWNNI0MtbUQrkSazvzSgsjcy.WR0gDNuY0cLUlZZoTRrA2LpclbqjDMRECZKEzTkgUdJIEUrAyXsQWRjUyJFYVaMU0ULYEdNA0SIsDdXIFLUA0XVUDZgoELBYzTMYTYwI1PrUDaPYjZWMkQQYjUj81LUgFd37FYHMzaIcUbUMzMM81M2klZwTzQMMFM3I0bjg1MTszSLMWUucCYvUUdYszYEEUV1MCb3gESvTGVJU0S5QUUDM1RoojSqgjTtjERYICdnQycqolbQ81RFEkPScjX0IVT2vjXKIFRNcDcSYERgYFYzXGSOYzYzjWNt8ldJMVdto2PwUjSYsBRKQ2RyrVcrsTZs0VXqcjZAgEViEyS3oEVI4lUzIEQl0zcvMSMyDEMvrRY44lVVETLOckPZwlUxUTLOE1Z0Y1UrMkaSs1P0nlKskVZ14zLWgkL0rhSBIyPZ0VSwACa1kGV3LyXxoDSuEySIUmYjc0PAc1bA01LDYmZMAmL2k1YLEENZsxb2shKt.iTCAkYB4hKtHDRt3hcvMlPQoEYvTjaNUlKt3hKKIjKt3xRt3hKtXFQLsVQ4wDLDw1RxTDai0jKUcERMkEVXoWdxDiXlImdYMGU5olclYUQMMkRn4xRColUyPkU5IjbKIWMFsTPy4VVnQERTgVTxIjPBclblQGTAEjMnIFUlQ1TE4jR3kSVDkDLnUUShcVMEUETwsBSXwldJMVb3fSNhUCNnMTask2Y4MzQyHFTqzTLtE1RtbDdgsTNNQ1U3HGcR4hYAImYFYzQtolMZETLPkja3DSMu0zbqEySD0jctTCQyIkY2EDMNAyM5o0XDEjaj0lKSUSPX8TdXIUZOgUPjICZnISLmEjQJMGZiIWRwgDUM4RRsIiZnsTbtg2XpsVSgEGS2LWYz4xPrElL18lduc1JqQ1XmkFNWElUyUGVisTcwwzTXIWNhsxcvgiXkYkSqQSRMYUbZUVQUs1cDQWMoMUVkMyM0cmaEkWNyUmLqTTd3slU0njauIWYTYjSW8FMsQFM4P0PZkCQYgTdHwlL1cib3gFboIUX3gjXqHEQFcEaWAmUJwVZuQWRCkTVznkZLcybRQEYBUiQqX0XXcyXUczMEgmT3QEdyoVTqMWbzAGcUshTTkWUKkTSk8FUqUiX3cGUEkmdvkmc3oFYYIzZHUDRygGdqYmdqI1XBk0ZHclVggTbZ4DcJkkKVcFSDEWUVAEbWIlcKoTPYwTVCIlUIImZRwzLnoENwoFcvfDS0UGYvHEROgVblISZMY2Q1klcGIUY5ozM3MmPOImTMI0ctHlSwzTZ2wFVm4lPV4hbS0FV4USUO4RapUUdj8VXNgTbmkmc3kEYVQzJBMlcyHVZ271MtbycxsTNCECc47TYL0TbqckYMkmSzrVVqHFU43jSKsTQqfVPPojUGQ1S3X1aYAkZpMDZskWTPQEYMcCSFIzczPycsMya2cELxj0LiY2JAAiTAgjKE4hat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXmX2U0UXgWUrsTZ3vVXrsVLYA0bT4hPPEjKJ4hKtfjYt3hKwESRDcVQqnVMBsRPt3hKxgjKt3hbt3hKt3hKt3hKt3hKt3hKt3hKCQjKt3hYDwzZAMTSvPDaKISQrMFTyQkKBAUPtnjKt3BRl4hKtDWLIQzazT0UlUyMA4hKtHGRt3hKx4hKt3hKt3hKt3hKt3hKt3hKt3FSt3hKlQDSqUTdLACQrsjLEw1XPMGUAYjKt3hKtXmKtvjKtLmPt3hKPQUPt3hKt3hKh7hO.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ambix_binaural_o1",
									"origin" : "ambix_binaural_o1.vstinfo",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "ambix_binaural_o1.vstinfo",
										"plugindisplayname" : "ambix_binaural_o1",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 1094871345,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "2320.CMlaKA....fQPMDZ....ADjPoEC....Y....A........................................f.0VMjLgrLB...OMkETLU0QI4zTEQEUI4zQSARXiQWZ1UFTxU1bkQWOhLWb0Elbk4xXu4lYoclHf.mbkMWYzQTZx0iHCoCWUMWYxMGWkwVZgQFWAAGbDEFcgwkTuEVao41YbEVahkFdbIVZtEVcxEFaeAmbkMWYzMmHfLzatYmP0YlYkI2TooWY8HhMzHBHGEVZt0iHv3RMh.xbz8lbkMzatYVZmQTXzEVRtAkbuoVYiQWOhDiHfL1atYVZmQTXzEVOhDSMzLiKPMmdtPjat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKtjWQWM1YIcUVzwTLgQWVVoUavPSZOMGa14RPQcWc0UlRFgzUwcWSp4FZlgDVgIELBYUQBQlcgc1cvj0TVgUdrEiZvrhd0gCcIgjUPcGYtk2azHSZxvzMjQVdWQWNvj0RYgSdvTkMPMlUQMWUrsVZJMjc3bjQ3kENEUkZTwFLHAUSAg2PqMSSEUSXtTjQrcEdvgkQ4EVT0vlLmkjTqwFSXkTSEwld3LTRJIWUv3jVO81ck4RaRkUZookSmUVPZIkVmoUUjcVQDUja2AUMuIWQhg1QM4BNOc1Qm4hYCEjLwoGdAc1SsM1Uh0DT2kTcy4jSIgSdYElTqfUXWg2YwHkaLQSctTDdRomUw4TdyjSToM1TpEmbmMjPoYzS3Mmc1vVXJsRMuIyJ5QUcGMFNWwlV4sRQt.iTCAkYB4hKtHDRt3hcvMlPQg0cO8Fc1UlKt3hKKIjKt3xRt3hKtXFQLsVPC0DLDw1RxTDaiUEQYcERMkkXXQ0M4Q1X0njV1wVLDIFQYM1cx8jKmYlYJAmdBklVTcEVQkjZ54xPL0jMggmbEITQqQUPuIEaEMiRRIDLpUCcwXFZlkCT2ImbnIkZ3wVPEkkSZITVDUULGYFcwXSL1rRaSshMvk2YGkyXNY2PsM2bIsRN3jkKTQVRgU1PvHlalkmLM4hbAMjb4XmKzUWZAI2Px3VMJMjUukCQ34xbusVSRMzMX0TdZ4VS2nTS33BZAgVayEDUKcjazcWdtbzL3XzLOYGZAMFSKoGZOMEcJElSQUVQOUTcU8FMmgUYqDlblUFSWMiRgMULzTWdGQSNU8zLTM0QHk2TFUmLYcSPwEDSg8zcrM2Z1P0R5QFUGkSSGQENhczXgcSVGIyUJYWNNI0MtbUQrkSazvzSgsjcy.WR0gDNuY0cLUlZZoTRrA2LpclbqjDMRECZKEzTkgUdJIEUrAyXsQWRjUyJFYVaMU0ULYEdNA0SIsDdXIFLUA0XVUDZgoELBYzTMYTYwI1PrUDaPYjZWMkQQYjUj81LUgFd37FYHMzaIcUbUMzMM81M2klZwTzQMMFM3I0bjg1MTszSLMWUucCYvUUdYszYEEUV1MCb3gESvTGVJU0S5QUUDM1RoojSqgjTtjERYICdnQycqolbQ81RFEkPScjX0IVT2vjXKIFRNcDcSYERgYFYzXGSOYzYzjWNt8ldJMVdto2PwUjSYsBRKQ2RyrVcrsTZs0VXqcjZAgEViEyS3oEVI4lUzIEQl0zcvMSMyDEMvrRY44lVVETLOckPZwlUxUTLOE1Z0Y1UrMkaSs1P0nlKskVZ14zLWgkL0rhSBIyPZ0VSwACa1kGV3LyXxoDSuEySIUmYjc0PAc1bA01LDYmZMAmL2k1YLEENZsxb2shKt.iTCAkYB4hKtHDRt3hcvMlPQoEYvTjaNUlKt3hKKIjKt3xRt3hKtXFQLsVQ4wDLDw1RxTDai0jKUcERMkEVXoWdxDiXlImdYMGU5olclYUQMMkRn4xRColUyPkU5IjbKIWMFsTPy4VVnQERTgVTxIjPBclblQGTAEjMnIFUlQ1TE4jR3kSVDkDLnUUShcVMEUETwsBSXwldJMVb3fSNhUCNnMTask2Y4MzQyHFTqzTLtE1RtbDdgsTNNQ1U3HGcR4hYAImYFYzQtolMZETLPkja3DSMu0zbqEySD0jctTCQyIkY2EDMNAyM5o0XDEjaj0lKSUSPX8TdXIUZOgUPjICZnISLmEjQJMGZiIWRwgDUM4RRsIiZnsTbtg2XpsVSgEGS2LWYz4xPrElL18lduc1JqQ1XmkFNWElUyUGVisTcwwzTXIWNhsxcvgiXkYkSqQSRMYUbZUVQUs1cDQWMoMUVkMyM0cmaEkWNyUmLqTTd3slU0njauIWYTYjSW8FMsQFM4P0PZkCQYgTdHwlL1cib3gFboIUX3gjXqHEQFcEaWAmUJwVZuQWRCkTVznkZLcybRQEYBUiQqX0XXcyXUczMEgmT3QEdyoVTqMWbzAGcUshTTkWUKkTSk8FUqUiX3cGUEkmdvkmc3oFYYIzZHUDRygGdqYmdqI1XBk0ZHclVggTbZ4DcJkkKVcFSDEWUVAEbWIlcKoTPYwTVCIlUIImZRwzLnoENwoFcvfDS0UGYvHEROgVblISZMY2Q1klcGIUY5ozM3MmPOImTMI0ctHlSwzTZ2wFVm4lPV4hbS0FV4USUO4RapUUdj8VXNgTbmkmc3kEYVQzJBMlcyHVZ271MtbycxsTNCECc47TYL0TbqckYMkmSzrVVqHFU43jSKsTQqfVPPojUGQ1S3X1aYAkZpMDZskWTPQEYMcCSFIzczPycsMya2cELxj0LiY2JAAiTAgjKE4hat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXmX2U0UXgWUrsTZ3vVXrsVLYA0bT4hPPEjKJ4hKtfjYt3hKwESRDcVQqnVMBsRPt3hKxgjKt3hbt3hKt3hKt3hKt3hKt3hKt3hKCQjKt3hYDwzZAMTSvPDaKISQrMFTyQkKBAUPtnjKt3BRl4hKtDWLIQzazT0UlUyMA4hKtHGRt3hKx4hKt3hKt3hKt3hKt3hKt3hKt3FSt3hKlQDSqUTdLACQrsjLEw1XPMGUAYjKt3hKtXmKtvjKtLmPt3hKPQUPt3hKt3hKh7hO.."
									}
,
									"fileref" : 									{
										"name" : "ambix_binaural_o1",
										"filename" : "ambix_binaural_o1.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "8693fab52cf8b9b09d41d1f70ce6a99f"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 4 2 ambix_binaural_o1.vstinfo",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 394.5, 308.5, 183.0, 20.0 ],
					"text" : "xyz [Number of Source] [x] [y] [z]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 661.333340883255005, 1.833330988883972, 279.0, 20.0 ],
					"text" : "aed [Number of Source] [angle] [Height] [diameter]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 596.0, 506.833331942558289, 55.0, 22.0 ],
					"text" : "dac~ 1 2"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 280.83333333333303, 467.500000476837158, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, 4, 2, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "ambix_binaural_o1.vstinfo",
							"plugindisplayname" : "ambix_binaural_o1",
							"pluginsavedname" : "",
							"pluginsaveduniqueid" : 1094871345,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "2320.CMlaKA....fQPMDZ....ADjPoEC....Y....A........................................f.0VMjLgrLB...OMkETLU0QI4zTEQEUI4zQSARXiQWZ1UFTxU1bkQWOhLWb0Elbk4xXu4lYoclHf.mbkMWYzQTZx0iHCoCWUMWYxMGWkwVZgQFWAAGbDEFcgwkTuEVao41YbEVahkFdbIVZtEVcxEFaeAmbkMWYzMmHfLzatYmP0YlYkI2TooWY8HhMzHBHGEVZt0iHv3RMh.xbz8lbkMzatYVZmQTXzEVRtAkbuoVYiQWOhDiHfL1atYVZmQTXzEVOhDSMzLiKPMmdtPjat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKtjWQWM1YIcUVzwTLgQWVVoUavPSZOMGa14RPQcWc0UlRFgzUwcWSp4FZlgDVgIELBYUQBQlcgc1cvj0TVgUdrEiZvrhd0gCcIgjUPcGYtk2azHSZxvzMjQVdWQWNvj0RYgSdvTkMPMlUQMWUrsVZJMjc3bjQ3kENEUkZTwFLHAUSAg2PqMSSEUSXtTjQrcEdvgkQ4EVT0vlLmkjTqwFSXkTSEwld3LTRJIWUv3jVO81ck4RaRkUZookSmUVPZIkVmoUUjcVQDUja2AUMuIWQhg1QM4BNOc1Qm4hYCEjLwoGdAc1SsM1Uh0DT2kTcy4jSIgSdYElTqfUXWg2YwHkaLQSctTDdRomUw4TdyjSToM1TpEmbmMjPoYzS3Mmc1vVXJsRMuIyJ5QUcGMFNWwlV4sRQt.iTCAkYB4hKtHDRt3hcvMlPQg0cO8Fc1UlKt3hKKIjKt3xRt3hKtXFQLsVPC0DLDw1RxTDaiUEQYcERMkkXXQ0M4Q1X0njV1wVLDIFQYM1cx8jKmYlYJAmdBklVTcEVQkjZ54xPL0jMggmbEITQqQUPuIEaEMiRRIDLpUCcwXFZlkCT2ImbnIkZ3wVPEkkSZITVDUULGYFcwXSL1rRaSshMvk2YGkyXNY2PsM2bIsRN3jkKTQVRgU1PvHlalkmLM4hbAMjb4XmKzUWZAI2Px3VMJMjUukCQ34xbusVSRMzMX0TdZ4VS2nTS33BZAgVayEDUKcjazcWdtbzL3XzLOYGZAMFSKoGZOMEcJElSQUVQOUTcU8FMmgUYqDlblUFSWMiRgMULzTWdGQSNU8zLTM0QHk2TFUmLYcSPwEDSg8zcrM2Z1P0R5QFUGkSSGQENhczXgcSVGIyUJYWNNI0MtbUQrkSazvzSgsjcy.WR0gDNuY0cLUlZZoTRrA2LpclbqjDMRECZKEzTkgUdJIEUrAyXsQWRjUyJFYVaMU0ULYEdNA0SIsDdXIFLUA0XVUDZgoELBYzTMYTYwI1PrUDaPYjZWMkQQYjUj81LUgFd37FYHMzaIcUbUMzMM81M2klZwTzQMMFM3I0bjg1MTszSLMWUucCYvUUdYszYEEUV1MCb3gESvTGVJU0S5QUUDM1RoojSqgjTtjERYICdnQycqolbQ81RFEkPScjX0IVT2vjXKIFRNcDcSYERgYFYzXGSOYzYzjWNt8ldJMVdto2PwUjSYsBRKQ2RyrVcrsTZs0VXqcjZAgEViEyS3oEVI4lUzIEQl0zcvMSMyDEMvrRY44lVVETLOckPZwlUxUTLOE1Z0Y1UrMkaSs1P0nlKskVZ14zLWgkL0rhSBIyPZ0VSwACa1kGV3LyXxoDSuEySIUmYjc0PAc1bA01LDYmZMAmL2k1YLEENZsxb2shKt.iTCAkYB4hKtHDRt3hcvMlPQoEYvTjaNUlKt3hKKIjKt3xRt3hKtXFQLsVQ4wDLDw1RxTDai0jKUcERMkEVXoWdxDiXlImdYMGU5olclYUQMMkRn4xRColUyPkU5IjbKIWMFsTPy4VVnQERTgVTxIjPBclblQGTAEjMnIFUlQ1TE4jR3kSVDkDLnUUShcVMEUETwsBSXwldJMVb3fSNhUCNnMTask2Y4MzQyHFTqzTLtE1RtbDdgsTNNQ1U3HGcR4hYAImYFYzQtolMZETLPkja3DSMu0zbqEySD0jctTCQyIkY2EDMNAyM5o0XDEjaj0lKSUSPX8TdXIUZOgUPjICZnISLmEjQJMGZiIWRwgDUM4RRsIiZnsTbtg2XpsVSgEGS2LWYz4xPrElL18lduc1JqQ1XmkFNWElUyUGVisTcwwzTXIWNhsxcvgiXkYkSqQSRMYUbZUVQUs1cDQWMoMUVkMyM0cmaEkWNyUmLqTTd3slU0njauIWYTYjSW8FMsQFM4P0PZkCQYgTdHwlL1cib3gFboIUX3gjXqHEQFcEaWAmUJwVZuQWRCkTVznkZLcybRQEYBUiQqX0XXcyXUczMEgmT3QEdyoVTqMWbzAGcUshTTkWUKkTSk8FUqUiX3cGUEkmdvkmc3oFYYIzZHUDRygGdqYmdqI1XBk0ZHclVggTbZ4DcJkkKVcFSDEWUVAEbWIlcKoTPYwTVCIlUIImZRwzLnoENwoFcvfDS0UGYvHEROgVblISZMY2Q1klcGIUY5ozM3MmPOImTMI0ctHlSwzTZ2wFVm4lPV4hbS0FV4USUO4RapUUdj8VXNgTbmkmc3kEYVQzJBMlcyHVZ271MtbycxsTNCECc47TYL0TbqckYMkmSzrVVqHFU43jSKsTQqfVPPojUGQ1S3X1aYAkZpMDZskWTPQEYMcCSFIzczPycsMya2cELxj0LiY2JAAiTAgjKE4hat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXmX2U0UXgWUrsTZ3vVXrsVLYA0bT4hPPEjKJ4hKtfjYt3hKwESRDcVQqnVMBsRPt3hKxgjKt3hbt3hKt3hKt3hKt3hKt3hKt3hKCQjKt3hYDwzZAMTSvPDaKISQrMFTyQkKBAUPtnjKt3BRl4hKtDWLIQzazT0UlUyMA4hKtHGRt3hKx4hKt3hKt3hKt3hKt3hKt3hKt3FSt3hKlQDSqUTdLACQrsjLEw1XPMGUAYjKt3hKtXmKtvjKtLmPt3hKPQUPt3hKt3hKh7hO.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ambix_binaural_o1",
									"origin" : "ambix_binaural_o1.vstinfo",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "ambix_binaural_o1.vstinfo",
										"plugindisplayname" : "ambix_binaural_o1",
										"pluginsavedname" : "",
										"pluginsaveduniqueid" : 1094871345,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "2320.CMlaKA....fQPMDZ....ADjPoEC....Y....A........................................f.0VMjLgrLB...OMkETLU0QI4zTEQEUI4zQSARXiQWZ1UFTxU1bkQWOhLWb0Elbk4xXu4lYoclHf.mbkMWYzQTZx0iHCoCWUMWYxMGWkwVZgQFWAAGbDEFcgwkTuEVao41YbEVahkFdbIVZtEVcxEFaeAmbkMWYzMmHfLzatYmP0YlYkI2TooWY8HhMzHBHGEVZt0iHv3RMh.xbz8lbkMzatYVZmQTXzEVRtAkbuoVYiQWOhDiHfL1atYVZmQTXzEVOhDSMzLiKPMmdtPjat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKtjWQWM1YIcUVzwTLgQWVVoUavPSZOMGa14RPQcWc0UlRFgzUwcWSp4FZlgDVgIELBYUQBQlcgc1cvj0TVgUdrEiZvrhd0gCcIgjUPcGYtk2azHSZxvzMjQVdWQWNvj0RYgSdvTkMPMlUQMWUrsVZJMjc3bjQ3kENEUkZTwFLHAUSAg2PqMSSEUSXtTjQrcEdvgkQ4EVT0vlLmkjTqwFSXkTSEwld3LTRJIWUv3jVO81ck4RaRkUZookSmUVPZIkVmoUUjcVQDUja2AUMuIWQhg1QM4BNOc1Qm4hYCEjLwoGdAc1SsM1Uh0DT2kTcy4jSIgSdYElTqfUXWg2YwHkaLQSctTDdRomUw4TdyjSToM1TpEmbmMjPoYzS3Mmc1vVXJsRMuIyJ5QUcGMFNWwlV4sRQt.iTCAkYB4hKtHDRt3hcvMlPQg0cO8Fc1UlKt3hKKIjKt3xRt3hKtXFQLsVPC0DLDw1RxTDaiUEQYcERMkkXXQ0M4Q1X0njV1wVLDIFQYM1cx8jKmYlYJAmdBklVTcEVQkjZ54xPL0jMggmbEITQqQUPuIEaEMiRRIDLpUCcwXFZlkCT2ImbnIkZ3wVPEkkSZITVDUULGYFcwXSL1rRaSshMvk2YGkyXNY2PsM2bIsRN3jkKTQVRgU1PvHlalkmLM4hbAMjb4XmKzUWZAI2Px3VMJMjUukCQ34xbusVSRMzMX0TdZ4VS2nTS33BZAgVayEDUKcjazcWdtbzL3XzLOYGZAMFSKoGZOMEcJElSQUVQOUTcU8FMmgUYqDlblUFSWMiRgMULzTWdGQSNU8zLTM0QHk2TFUmLYcSPwEDSg8zcrM2Z1P0R5QFUGkSSGQENhczXgcSVGIyUJYWNNI0MtbUQrkSazvzSgsjcy.WR0gDNuY0cLUlZZoTRrA2LpclbqjDMRECZKEzTkgUdJIEUrAyXsQWRjUyJFYVaMU0ULYEdNA0SIsDdXIFLUA0XVUDZgoELBYzTMYTYwI1PrUDaPYjZWMkQQYjUj81LUgFd37FYHMzaIcUbUMzMM81M2klZwTzQMMFM3I0bjg1MTszSLMWUucCYvUUdYszYEEUV1MCb3gESvTGVJU0S5QUUDM1RoojSqgjTtjERYICdnQycqolbQ81RFEkPScjX0IVT2vjXKIFRNcDcSYERgYFYzXGSOYzYzjWNt8ldJMVdto2PwUjSYsBRKQ2RyrVcrsTZs0VXqcjZAgEViEyS3oEVI4lUzIEQl0zcvMSMyDEMvrRY44lVVETLOckPZwlUxUTLOE1Z0Y1UrMkaSs1P0nlKskVZ14zLWgkL0rhSBIyPZ0VSwACa1kGV3LyXxoDSuEySIUmYjc0PAc1bA01LDYmZMAmL2k1YLEENZsxb2shKt.iTCAkYB4hKtHDRt3hcvMlPQoEYvTjaNUlKt3hKKIjKt3xRt3hKtXFQLsVQ4wDLDw1RxTDai0jKUcERMkEVXoWdxDiXlImdYMGU5olclYUQMMkRn4xRColUyPkU5IjbKIWMFsTPy4VVnQERTgVTxIjPBclblQGTAEjMnIFUlQ1TE4jR3kSVDkDLnUUShcVMEUETwsBSXwldJMVb3fSNhUCNnMTask2Y4MzQyHFTqzTLtE1RtbDdgsTNNQ1U3HGcR4hYAImYFYzQtolMZETLPkja3DSMu0zbqEySD0jctTCQyIkY2EDMNAyM5o0XDEjaj0lKSUSPX8TdXIUZOgUPjICZnISLmEjQJMGZiIWRwgDUM4RRsIiZnsTbtg2XpsVSgEGS2LWYz4xPrElL18lduc1JqQ1XmkFNWElUyUGVisTcwwzTXIWNhsxcvgiXkYkSqQSRMYUbZUVQUs1cDQWMoMUVkMyM0cmaEkWNyUmLqTTd3slU0njauIWYTYjSW8FMsQFM4P0PZkCQYgTdHwlL1cib3gFboIUX3gjXqHEQFcEaWAmUJwVZuQWRCkTVznkZLcybRQEYBUiQqX0XXcyXUczMEgmT3QEdyoVTqMWbzAGcUshTTkWUKkTSk8FUqUiX3cGUEkmdvkmc3oFYYIzZHUDRygGdqYmdqI1XBk0ZHclVggTbZ4DcJkkKVcFSDEWUVAEbWIlcKoTPYwTVCIlUIImZRwzLnoENwoFcvfDS0UGYvHEROgVblISZMY2Q1klcGIUY5ozM3MmPOImTMI0ctHlSwzTZ2wFVm4lPV4hbS0FV4USUO4RapUUdj8VXNgTbmkmc3kEYVQzJBMlcyHVZ271MtbycxsTNCECc47TYL0TbqckYMkmSzrVVqHFU43jSKsTQqfVPPojUGQ1S3X1aYAkZpMDZskWTPQEYMcCSFIzczPycsMya2cELxj0LiY2JAAiTAgjKE4hat3hKl4hPt3BQkACTDojUmkCQXMjKt3BVY4hKt.0Pt3hKt3hKt3hKt3hKt3hKt3hKt3hKtXmX2U0UXgWUrsTZ3vVXrsVLYA0bT4hPPEjKJ4hKtfjYt3hKwESRDcVQqnVMBsRPt3hKxgjKt3hbt3hKt3hKt3hKt3hKt3hKt3hKCQjKt3hYDwzZAMTSvPDaKISQrMFTyQkKBAUPtnjKt3BRl4hKtDWLIQzazT0UlUyMA4hKtHGRt3hKx4hKt3hKt3hKt3hKt3hKt3hKt3FSt3hKlQDSqUTdLACQrsjLEw1XPMGUAYjKt3hKtXmKtvjKtLmPt3hKPQUPt3hKt3hKh7hO.."
									}
,
									"fileref" : 									{
										"name" : "ambix_binaural_o1",
										"filename" : "ambix_binaural_o1.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "8693fab52cf8b9b09d41d1f70ce6a99f"
									}

								}
 ]
						}

					}
,
					"text" : "vst~ 4 2",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 610.0, 388.833333969116211, 37.0, 104.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.83333333333303, 409.500000476837158, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "signal", "signal" ],
					"patching_rect" : [ 389.0, 409.500000476837158, 146.0, 22.0 ],
					"saved_object_attributes" : 					{
						"active" : [ 1, 1 ],
						"center_att_db" : 6.0,
						"center_curve" : 0.2,
						"center_size" : 1.0,
						"db_unit" : 1.5,
						"dist_att" : 1.0,
						"exp_curve" : 1.0,
						"exp_cutoff_dist" : 30.0,
						"order" : 1,
						"rotate_order" : 0
					}
,
					"text" : "ambiencode~ 1 2 @type2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.5, 330.5, 87.0, 22.0 ],
					"text" : "xyz 1 $1 $2 $3"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.145098039215686, 0.074509803921569, 0.376470588235294, 1.0 ],
					"grid_color" : [ 0.27843137254902, 0.92156862745098, 0.63921568627451, 1.0 ],
					"grid_display" : 1,
					"id" : "obj-1",
					"maxclass" : "ambimonitor",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 695.500007033348083, 69.833334565162659, 200.0, 400.0 ],
					"zoom_focal_point" : [ 0.015384615384616, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 375.5, 183.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 458.0, 114.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"channels" : 1,
					"fontsize" : 13.0,
					"id" : "obj-27",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 459.5, 16.0, 136.0, 35.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ -70 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"showname" : 0,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 569.5, 228.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 228.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 375.5, 228.0, 86.0, 22.0 ],
					"text" : "serial f 115200"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 705.000007033348083, 523.833334565162659, 682.750003516674042, 523.833334565162659, 682.750003516674042, 368.500000476837158, 398.5, 368.500000476837158 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 705.000007033348083, 57.833332777023315, 705.000007033348083, 57.833332777023315 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 870.000007033348083, 57.333332777023315, 705.000007033348083, 57.333332777023315 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 112.83333333333303, 376.166666984558105, 398.5, 376.166666984558105 ],
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 48.33333333333303, 375.166666984558105, 398.5, 375.166666984558105 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 3 ],
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 2 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 1 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"midpoints" : [ 423.5, 502.833333969116211, 592.5, 502.833333969116211, 592.5, 377.833333969116211, 637.5, 377.833333969116211 ],
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 398.5, 502.833333969116211, 592.0, 502.833333969116211, 592.0, 377.833333969116211, 619.5, 377.833333969116211 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 385.0, 362.5, 679.416670441627502, 362.5, 679.416670441627502, 58.833334565162659, 705.000007033348083, 58.833334565162659 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10" : [ "vst~", "vst~", 0 ],
			"obj-27" : [ "live.gain~", "live.gain~", 0 ],
			"obj-70" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-9" : [ "live.gain~[1]", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Various Artists - Left Alone.wav",
				"bootpath" : "~/Downloads/Samples/campioni",
				"patcherrelativepath" : "../../Downloads/Samples/campioni",
				"type" : "WAVE",
				"implicit" : 1
			}
, 			{
				"name" : "ambiencode~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "ambimonitor.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "ambix_binaural_o1.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "AudioStatus_Menu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270,
						"autogradient" : 0,
						"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
						"color1" : [ 0.454902, 0.462745, 0.482353, 0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1 ],
						"proportion" : 0.39,
						"type" : "color"
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
