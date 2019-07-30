{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
<<<<<<< HEAD
		"rect" : [ 883.0, 188.0, 640.0, 480.0 ],
=======
		"rect" : [ 693.0, 98.0, 824.0, 692.0 ],
>>>>>>> Added remapper abstraction
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
		"boxes" : [ 			{
				"box" : 				{
<<<<<<< HEAD
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 379.0, 184.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 144.0, 38.0, 20.0 ],
					"text" : "scale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 129.0, 38.0, 20.0 ],
					"text" : "invert"
=======
					"id" : "obj-7",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 402.0, 291.0, 292.0, 60.0 ],
					"text" : "The remapper gives 3 options for your control data: out1 = unchanged data\nout2 = inverted \nout3 = scaled accoring to values in 2nd and 3rd inlets"
>>>>>>> Added remapper abstraction
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
<<<<<<< HEAD
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 114.0, 38.0, 20.0 ],
					"text" : "direct"
=======
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.0, 119.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
>>>>>>> Added remapper abstraction
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
<<<<<<< HEAD
					"parameter_enable" : 0,
					"patching_rect" : [ 379.0, 114.0, 18.0, 50.0 ],
					"size" : 3,
					"value" : 0
=======
					"patching_rect" : [ 464.0, 119.0, 80.0, 22.0 ],
					"text" : "loadmess 0.6"
>>>>>>> Added remapper abstraction
				}

			}
, 			{
				"box" : 				{
<<<<<<< HEAD
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 379.0, 221.0, 52.0, 22.0 ],
					"text" : "gate 3 1"
=======
					"format" : 6,
					"id" : "obj-25",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 526.0, 177.0, 50.0, 22.0 ]
>>>>>>> Added remapper abstraction
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 464.0, 177.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "float", "" ],
					"patching_rect" : [ 402.0, 245.0, 143.0, 22.0 ],
					"text" : "remapper"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 402.0, 177.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "## Change a videos brightness/contrast/separation ##",
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vz.brcosr.maxpat",
					"numinlets" : 7,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.5, 184.0, 208.0, 130.0 ],
					"prototypename" : "pixl",
					"varname" : "brcosr",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"annotation" : "## Grab webcam video for VIZZIE fun ##",
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vz.grabbr.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.5, 7.0, 346.0, 158.0 ],
					"prototypename" : "pixl",
					"varname" : "grabbr",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "bang", "" ],
					"patching_rect" : [ 27.5, 410.0, 111.0, 22.0 ],
					"text" : "jit.world @enable 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 402.0, 89.0, 67.0, 22.0 ],
					"text" : "peakamp~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 402.0, 27.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "enable",
					"id" : "obj-2",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.5, 364.0, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 83.0, 444.0, 699.5, 444.0, 699.5, 82.0, 411.5, 82.0 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-35", 0 ]
=======
					"destination" : [ "obj-35", 2 ],
					"source" : [ "obj-22", 0 ]
>>>>>>> Added remapper abstraction
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 2 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
<<<<<<< HEAD
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-7", 0 ]
=======
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-5", 0 ]
>>>>>>> Added remapper abstraction
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
<<<<<<< HEAD
			"obj-35::obj-141" : [ "range[2]", "range", 0 ],
			"obj-35::obj-140" : [ "saturation", "saturation", 0 ],
			"obj-35::obj-142" : [ "saturation[1]", "saturation", 0 ],
			"obj-35::obj-148" : [ "pictctrl[43]", "pictctrl[1]", 0 ],
			"obj-35::obj-149" : [ "pictctrl[42]", "pictctrl[1]", 0 ],
			"obj-1::obj-38" : [ "pictctrl[2]", "pictctrl[1]", 0 ],
			"obj-35::obj-119" : [ "brightness", "brightness", 0 ],
			"obj-35::obj-150" : [ "pictctrl[28]", "pictctrl[1]", 0 ],
			"obj-1::obj-64::obj-5" : [ "umenu[1]", "umenu[1]", 0 ],
			"obj-35::obj-104" : [ "pictctrl[9]", "pictctrl[1]", 0 ],
			"obj-35::obj-127" : [ "contrast[1]", "contrast", 0 ],
			"obj-1::obj-64::obj-40" : [ "umenu[2]", "umenu", 0 ],
			"obj-35::obj-128" : [ "range[1]", "range", 0 ],
			"obj-35::obj-147" : [ "pictctrl[44]", "pictctrl[1]", 0 ],
			"obj-1::obj-39" : [ "pictctrl[1]", "pictctrl[1]", 0 ],
			"obj-35::obj-120" : [ "range", "range", 0 ],
			"obj-35::obj-121" : [ "brightness[1]", "brightness", 0 ],
			"obj-35::obj-6" : [ "range[4]", "range", 0 ],
			"obj-1::obj-64::obj-56" : [ "textbutton", "textbutton", 0 ],
			"obj-35::obj-129" : [ "contrast", "contrast", 0 ],
			"obj-35::obj-151" : [ "pictctrl[27]", "pictctrl[1]", 0 ],
=======
			"obj-35::obj-121" : [ "brightness[1]", "brightness", 0 ],
			"obj-1::obj-39" : [ "pictctrl[1]", "pictctrl[1]", 0 ],
			"obj-35::obj-6" : [ "range[4]", "range", 0 ],
			"obj-35::obj-129" : [ "contrast", "contrast", 0 ],
			"obj-1::obj-38" : [ "pictctrl[2]", "pictctrl[1]", 0 ],
			"obj-35::obj-149" : [ "pictctrl[42]", "pictctrl[1]", 0 ],
			"obj-35::obj-127" : [ "contrast[1]", "contrast", 0 ],
			"obj-1::obj-64::obj-56" : [ "textbutton", "textbutton", 0 ],
			"obj-1::obj-64::obj-40" : [ "umenu[2]", "umenu", 0 ],
			"obj-35::obj-141" : [ "range[2]", "range", 0 ],
			"obj-35::obj-150" : [ "pictctrl[28]", "pictctrl[1]", 0 ],
			"obj-35::obj-140" : [ "saturation", "saturation", 0 ],
			"obj-35::obj-128" : [ "range[1]", "range", 0 ],
			"obj-35::obj-147" : [ "pictctrl[44]", "pictctrl[1]", 0 ],
			"obj-35::obj-142" : [ "saturation[1]", "saturation", 0 ],
			"obj-35::obj-120" : [ "range", "range", 0 ],
			"obj-35::obj-151" : [ "pictctrl[27]", "pictctrl[1]", 0 ],
			"obj-1::obj-64::obj-5" : [ "umenu[1]", "umenu[1]", 0 ],
			"obj-35::obj-104" : [ "pictctrl[9]", "pictctrl[1]", 0 ],
			"obj-35::obj-148" : [ "pictctrl[43]", "pictctrl[1]", 0 ],
			"obj-35::obj-119" : [ "brightness", "brightness", 0 ],
>>>>>>> Added remapper abstraction
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
<<<<<<< HEAD
				"obj-35::obj-148" : 				{
					"parameter_longname" : "pictctrl[43]"
				}
,
				"obj-35::obj-149" : 				{
					"parameter_longname" : "pictctrl[42]"
				}
,
				"obj-35::obj-150" : 				{
					"parameter_longname" : "pictctrl[28]"
				}
,
				"obj-35::obj-104" : 				{
					"parameter_longname" : "pictctrl[9]"
=======
				"obj-35::obj-121" : 				{
					"parameter_longname" : "brightness[1]"
>>>>>>> Added remapper abstraction
				}
,
				"obj-35::obj-149" : 				{
					"parameter_longname" : "pictctrl[42]"
				}
,
				"obj-35::obj-150" : 				{
					"parameter_longname" : "pictctrl[28]"
				}
,
<<<<<<< HEAD
				"obj-35::obj-151" : 				{
					"parameter_longname" : "pictctrl[27]"
				}
=======
				"obj-35::obj-147" : 				{
					"parameter_longname" : "pictctrl[44]"
				}
,
				"obj-35::obj-151" : 				{
					"parameter_longname" : "pictctrl[27]"
				}
,
				"obj-35::obj-104" : 				{
					"parameter_longname" : "pictctrl[9]"
				}
,
				"obj-35::obj-148" : 				{
					"parameter_longname" : "pictctrl[43]"
				}
>>>>>>> Added remapper abstraction

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "vz.grabbr.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "data-handler.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-object.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vizzie-global.js",
				"bootpath" : "C74:/packages/vizzie/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "grabbr_controls.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "diminit.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dinit.js",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-disable.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vzgl-pwindow.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vz.brcosr.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "video-handler.maxpat",
				"bootpath" : "C74:/packages/vizzie/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "brcosa.genjit",
				"bootpath" : "~/Library/Application Support/Cycling '74/Max 8/Examples/jitter-examples/gen",
				"patcherrelativepath" : "../../../Library/Application Support/Cycling '74/Max 8/Examples/jitter-examples/gen",
				"type" : "gJIT",
				"implicit" : 1
			}
, 			{
				"name" : "remapper.maxpat",
				"bootpath" : "~/eyebeam-workshop-2/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
