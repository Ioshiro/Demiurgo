if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMIInitRecipes()
    DEMI.WoodenWallRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 5
        }, {
            Material = "Base.Nails",
            Amount = 10
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.StoneWallRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 3
		},	{
            Material = "Base.Nails",
            Amount = 8
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
     
        }}

    }

    DEMI.CounterRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 4
        }, {
            Material = "Base.Nails",
            Amount = 4
        },{
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }


    DEMI.BedRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 6
        }, {
            Material = "Base.Nails",
            Amount = 4
        }, {
            Material = "Base.Mattress",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.BookshelfRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 6
        }, {
            Material = "Base.Nails",
            Amount = 6
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.WoodenChairRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 5
        }, {
            Material = "Base.Nails",
            Amount = 4
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.CouchRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 6
        }, {
            Material = "Base.Nails",
            Amount = 4
        }, {
            Material = "Base.LeatherStrips",
            Amount = 10
        }, {
            Material = "Base.Pillow",
            Amount = 2
       
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        },{
      
              Skill = "Tailoring",
            Amount = 1
		}}
    }

    DEMI.PassThroughContainerRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.WoodenContainerRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.StoneContainerRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.MetalContainerRecipe = {
        tools = {"Screwdriver"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 4
        }, {
            Material = "Base.Screws",
            Amount = 2
        }},
        skills = {{
            Skill = "MetalWelding",
            Amount = 4
        }}
    }

    DEMI.MetalLockerRecipe = {
        tools = {"Screwdriver"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 2
        }, {
            Material = "Base.Screws",
            Amount = 6
        }, {
            Material = "Base.Hinge",
            Amount = 2
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 2
        },{
            Skill = "MetalWelding",
            Amount = 6
        }}
		
    }

    DEMI.HangingMetalLockerRecipe = {
        tools = {"Screwdriver"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 2
        }, {
            Material = "Base.Screws",
            Amount = 6
        }, {
            Material = "Base.Hinge",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.JunkContainerRecipe = {
        tools = {"Screwdriver"},
        materials = {{
            Material = "Base.Plank",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.MetalModContainerRecipe = {
        tools = {"Screwdriver"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 2
        }, {
            Material = "Base.Screws",
            Amount = 6
        }, {
            Material = "Base.Hinge",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.DoubleStorageRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 4
        }, {
            Material = "Base.Nails",
            Amount = 8
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.WoodenDoorFrameRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 3
        }, {
            Material = "Base.Nails",
            Amount = 6
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.LowWoodenDoorFrameRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 3
        }, {
            Material = "Base.Nails",
            Amount = 6
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.StoneDoorFrameRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 8
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.WoodenDoorTrimRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 2
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.WoodenDoorRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 7
        }, {
            Material = "Base.Nails",
            Amount = 10
        }, {
            Material = "Base.Hinge",
            Amount = 2
        }, {
            Material = "Base.Doorknob",
            Amount = 1
		}, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
      
       }}
    }

    DEMI.FramelessDoorRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 7
        }, {
            Material = "Base.Nails",
            Amount = 10
        }, {
            Material = "Base.Hinge",
            Amount = 2
        }, {
            Material = "Base.Doorknob",
            Amount = 1
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.LowWoo0denDoorFrameRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Wire",
            Amount = 0,
            Uses = 4
        }, {
            Material = "Base.Nails",
            Amount = 4
        }, {
            Material = "Base.Hinge",
            Amount = 1
        }, {
            Material = "Base.Doorknob",
            Amount = 2
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.GarageDoorRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 8
        }, {
            Material = "Base.Nails",
            Amount = 8
        }, {
            Material = "Base.Hinge",
            Amount = 4
        }, {
            Material = "Base.Doorknob",
            Amount = 2
        }, {
            Material = "Base.Screws",
            Amount = 8
        }, {
            Material = "Base.SmallSheetMetal",
            Amount = 4
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
			},{
            Skill = "MetalWelding",
            Amount = 4
        }}
    }

    DEMI.DresserRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 4
        }, {
            Material = "Base.Nails",
            Amount = 4
        }, {
            Material = "Base.Drawer",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.WoodenFencePostRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.StoneFencePostRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.MetalFencePostRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 1
        }, {
            Material = "Base.Screws",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.WoodenFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 3
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.StoneFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 3
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.MetalFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 2
        }, {
            Material = "Base.Screws",
            Amount = 3
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.MetalBarFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.MetalBar",
            Amount = 3
        }, {
            Material = "Base.Screws",
            Amount = 10
        },{
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.HBarrierRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Sheet",
            Amount = 4
        }, {
            Material = "Base.Wire",
            Amount = 0,
            Uses = 2
        }, {
            Material = "Base.Dirtbag",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.HighMetalFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Wire",
            Amount = 0,
            Uses = 1
        }, {
            Material = "Base.SmallSheetMetal",
            Amount = 2
        }, {
            Material = "Base.ScrapMetal",
            Amount = 10
        }, {
            Material = "Base.WeldingRods",
            Amount = 0,
            Uses = 1
        }, {
            Material = "Base.BlowTorch",
            Amount = 0,
            Uses = 2
        }},
        skills = {{
            Skill = "MetalWelding",
            Amount = 5
        }}
    }
	DEMI.ImpassableHighMetalFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.BarbedWire",
            Amount = 1
        }, {
            Material = "Base.SmallSheetMetal",
            Amount = 4
        }, {
            Material = "Base.ScrapMetal",
            Amount = 10
        }, {
            Material = "Base.WeldingRods",
            Amount = 0,
            Uses = 4
        }, {
            Material = "Base.BlowTorch",
            Amount = 0,
            Uses = 10
		}, {
            Material = "Base.Money",
            Amount = 3
        }},
        skills = {{
            Skill = "MetalWelding",
            Amount = 6
        },{
            Skill = "Maintenance",
            Amount = 4
        }}
    }
	
		DEMI.UnhoppableHighMetalFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
			Material = "Base.BarbedWire",
            Amount = 1
        }, {
            Material = "Base.SmallSheetMetal",
            Amount = 3
        }, {
            Material = "Base.ScrapMetal",
            Amount = 10
        }, {
            Material = "Base.WeldingRods",
            Amount = 0,
            Uses = 3
        }, {
            Material = "Base.BlowTorch",
            Amount = 0,
            Uses = 8
		}, {
            Material = "Base.Money",
            Amount = 2
        }},
        skills = {{
            Skill = "MetalWelding",
            Amount = 6
        }}
    }

    DEMI.HighWoodenFenceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 10
        }, {
            Material = "Base.Nails",
            Amount = 15
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.FireplaceRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 10
        }, {
            Material = "Base.Dirtbag",
            Amount = 1
        }, {
            Material = "Base.BucketConcreteFull",
            Amount = 0,
	        Uses = 5
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.TwoSpriteFloorRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 3
        }}
    }

    DEMI.FourSpriteFloorRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 3
        }}
    }

    DEMI.FlowerFloorRecipe = {
        tools = {"HandShovel"},
        materials = {{
            Material = "Base.Dirtbag",
            Amount = 1
   
       }},
        skills = {{
            Skill = "Farming",
            Amount = 5
        }}
    }

    DEMI.FourSpriteFlowerFloorRecipe = {
        tools = {"HandShovel"},
        materials = {{
            Material = "Base.Dirtbag",
            Amount = 4
   
        }},
        skills = {{
            Skill = "Farming",
            Amount = 4
        }}
    }

    DEMI.LightPoleRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.ScrapMetal",
            Amount = 5
        }, {
            Material = "Base.Screws",
            Amount = 4
        }, {
            Material = "Base.LightBulb",
            Amount = 2
        }, {
            Material = "Radio.ElectricWire",
            Amount = 1
        }, {
            Material = "Base.ElectronicsScrap",
            Amount = 5
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 3
        }, {
            Skill = "Electricity",
            Amount = 4
        }}
    }
	
	    DEMI.LightPoleUVRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.ScrapMetal",
            Amount = 5
        }, {
            Material = "Base.Screws",
            Amount = 4
        }, {
            Material = "Radio.ElectricWire",
            Amount = 1
        }, {
            Material = "Demiurgo.LightBulbUV",
            Amount = 1
        }, {
            Material = "Base.ElectronicsScrap",
            Amount = 5
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 2
        }, {
            Skill = "Electricity",
            Amount = 3
        }}
    }

    DEMI.OutdoorLightRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.ScrapMetal",
            Amount = 10
        }, {
            Material = "Base.Screws",
            Amount = 10
        }, {
            Material = "Base.LightBulb",
            Amount = 4
        }, {
            Material = "Radio.ElectricWire",
            Amount = 1
        }, {
            Material = "Base.ElectronicsScrap",
            Amount = 5
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 3
        }, {
            Skill = "Electricity",
            Amount = 4
        }}
    }

    DEMI.WoodenPillarRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.StonePillarRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.RoofTileRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.SignRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 1
        }, {
            Material = "Base.Nails",
            Amount = 2
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.SingleTileWoodenTableRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 5
        }, {
            Material = "Base.Nails",
            Amount = 4
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.DoubleTileWoodenTableRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 6
        }, {
            Material = "Base.Nails",
            Amount = 4
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.WoodenStairsRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 5
        }, {
            Material = "Base.Nails",
            Amount = 5
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.MetalStairsRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.SheetMetal",
            Amount = 10
        }, {
            Material = "Base.Nails",
            Amount = 5
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
        }}
    }

    DEMI.WindowWallRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 4
        }, {
            Material = "LabItems.MatShatteredGlass",
            Amount = 2
        }, {
            Material = "Base.Screws",
            Amount = 6
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.WallDecorationRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.SheetPaper2",
            Amount = 2
        }, {
            Material = "Base.Crayons",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 1
        }}
    }

    DEMI.WindowRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 4
        }, {
            Material = "Base.Screws",
            Amount = 4
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 5
        }}
    }

    DEMI.WoodenWindowFrameRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Plank",
            Amount = 4
        }, {
            Material = "Base.Nails",
            Amount = 4
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 6
       
        }}
    }

    DEMI.StoneWindowFrameRecipe = {
        tools = {"Hammer"},
        materials = {{
            Material = "Base.Stone",
            Amount = 2
        }, {
            Material = "Base.Nails",
            Amount = 4
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "Woodwork",
            Amount = 4
     
        }}
    }
	DEMI.ElectricalRecipe = {
        tools = {"Screwdriver"}, 
        materials = {{
            
			Material = "Base.SmallSheetMetal",
            Amount = 2
        }, {
            Material = "Base.ScrapMetal",
            Amount = 10
			
        }, {
            Material = "Base.BlowTorch",
            Amount = 0,
            Uses = 2
        }, {
            Material = "Base.Money",
            Amount = 1
        }},
        skills = {{
            Skill = "MetalWelding",
            Amount = 1
			},
       {
            Skill = "Electrical",
            Amount = 3
        }}}
	

        DEMI.LRMRecipe = {
            tools = {"Hammer"},
            materials = {{
                Material = "Base.Stone",
                Amount = 999
            }, {
                Material = "Base.Nails",
                Amount = 999
            }, {
                Material = "Base.Money",
                Amount = 999
            }},
            skills = {{
                Skill = "Woodwork",
                Amount = 10
            }}
        }

        DEMI.SafelockSmallRecipe = {
            tools = {"Screwdriver"},
            materials = {{
			       Material = "Base.CombinationPadlock",
                Amount = 1
            }, {
                Material = "Base.SmallSheetMetal",
                Amount = 2
            }, {
			     Material = "Base.SheetMetal",
                Amount = 1
            }, {
                Material = "Base.Screws",
                Amount = 10
            }, {
                Material = "Base.Money",
                Amount = 250
            }, {
                Material = "Base.BlowTorch",
                Amount = 0,
                Uses = 2
            }},
            skills = {{
                Skill = "MetalWelding",
                Amount = 1
					}, {
				Skill = "Electricity",
                Amount = 1
            }}
        }

        DEMI.SafelockMediumRecipe = {
            tools = {"Screwdriver"},
            materials = {{
			       Material = "Base.CombinationPadlock",
                Amount = 1
            }, {
                Material = "Base.SmallSheetMetal",
                Amount = 2
            }, {
			     Material = "Base.SheetMetal",
                Amount = 2
            }, {
                Material = "Base.Screws",
                Amount = 20
            }, {
                Material = "Base.Money",
                Amount = 500
            }, {
                Material = "Base.BlowTorch",
                Amount = 0,
                Uses = 5
            }},
            skills = {{
			
                Skill = "MetalWelding",
                Amount = 2
					}, {
				Skill = "Electricity",
                Amount = 2
            }}
        }

        DEMI.SafelockLargeRecipe = {
            tools = {"Screwdriver"},
            materials = {{
			       Material = "Base.CombinationPadlock",
                Amount = 1
            }, {
                Material = "Base.SmallSheetMetal",
                Amount = 4
            }, {
			     Material = "Base.SheetMetal",
                Amount = 4
            }, {
			
               Material = "Base.Screws",
                Amount = 25
            }, {
                Material = "Base.Money",
                Amount = 1000
            }, {
                Material = "Base.BlowTorch",
                Amount = 0,
                Uses = 8
            }},
            skills = {{
                Skill = "MetalWelding",
                Amount = 3
			}, {
                Skill = "Electricity",
                Amount = 3
            }}
        }
end
