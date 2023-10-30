if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMI.InitDecorationDefs()
    ----- Flower Beds -----
    DEMI.FlowerBedBlue = {
        name = "Aiuola di Fiori Blu",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_17"
            }
        }
    }

    DEMI.FlowerBedYellow = {
        name = "Aiuola di Fiori Gialli",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_32"
            }
        }
    }

    DEMI.FlowerBedPurple = {
        name = "Aiuola di Fiori Viola",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_16"
            }
        }
    }

    DEMI.FlowerBedPink = {
        name = "Aiuola di Fiori Rosa",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_18"
            }
        }
    }

    DEMI.FlowerBedGray = {
        name = "Aiuola di Fiori Grigi",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_33"
            }
        }
    }

    DEMI.FlowerBedWhite = {
        name = "Aiuola di Fiori Bianchi",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_34"
            }
        }
    }

    DEMI.FlowerBedPurpleAndPinkSide = {
        name = "Aiuola di Fiori Viola e Rosa",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FourSpriteFlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_19",
                northSprite = "vegetation_ornamental_01_21",
                eastSprite = "vegetation_ornamental_01_29",
                southSprite = "vegetation_ornamental_01_23"
            }
        }
    }

    DEMI.FlowerBedPurpleAndPinkCorner = {
        name = "Aiuola di Fiori Viola e Rosa",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FourSpriteFlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_20",
                northSprite = "vegetation_ornamental_01_22",
                eastSprite = "vegetation_ornamental_01_28",
                southSprite = "vegetation_ornamental_01_30"
            }
        }
    }

    DEMI.FlowerBedPurpleAndPinkPost = {
        name = "Aiuola di Fiori Viola e Rosa",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FourSpriteFlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "f_flowerbed_1_3",
                northSprite = "f_flowerbed_1_5",
                eastSprite = "f_flowerbed_1_7",
                southSprite = "f_flowerbed_1_9"
            }
        }
    }

    DEMI.FlowerBedGrayAndWhiteSide = {
        name = "Aiuola di Fiori Grigi e Bianchi",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FourSpriteFlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_35",
                northSprite = "vegetation_ornamental_01_37",
                eastSprite = "vegetation_ornamental_01_39",
                southSprite = "vegetation_ornamental_01_45"
            }
        }
    }

    DEMI.FlowerBedGrayAndWhiteCorner = {
        name = "Aiuola di Fiori Grigi e Bianchi",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FourSpriteFlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "vegetation_ornamental_01_36",
                northSprite = "vegetation_ornamental_01_38",
                eastSprite = "vegetation_ornamental_01_46",
                southSprite = "vegetation_ornamental_01_44"
            }
        }
    }

    DEMI.FlowerBedGrayAndWhitePost = {
        name = "Aiuola di Fiori Grigi e Bianchi",
        data = {
            onBuild = DEMI.OnBuildWoodenFloor,
            recipe = DEMI.FourSpriteFlowerFloorRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "f_flowerbed_1_15",
                northSprite = "f_flowerbed_1_17",
                eastSprite = "f_flowerbed_1_19",
                southSprite = "f_flowerbed_1_21"
            }
        }
    }
    ----- Decorations -----

    DEMI.ParkingMeter = {
        name = "Parchimetro",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "street_decoration_01_5",
                northSprite = "street_decoration_01_4",
                eastSprite = "street_decoration_01_7",
                southSprite = "street_decoration_01_6"
            }
        }
    }

    DEMI.Mailbox = {
        name = "Cassetta postale",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
			options = {
                isContainer = true,
                renderFloorHelper = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "street_decoration_01_19",
                northSprite = "street_decoration_01_18",
                eastSprite = "street_decoration_01_21",
                southSprite = "street_decoration_01_20"
            }
        }
    }

    DEMI.FireHydrant = {
        name = "Idrante",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "street_decoration_01_12",
                northSprite = "street_decoration_01_12",
                eastSprite = "street_decoration_01_12",
                southSprite = "street_decoration_01_12"
            }
        }
    }

    DEMI.TrafficCone1 = {
        name = "Cono di Traffico 1",
        
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            options = {
                health = 50
            },
            sprite = {
                sprite = "street_decoration_01_26",
                northSprite = "street_decoration_01_26",
                eastSprite = "street_decoration_01_26",
                southSprite = "street_decoration_01_26"
            }
        }
    }

    DEMI.TrafficCone2 = {
        name = "Cono di Traffico 2",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            options = {
                health = 50
            },
            sprite = {
                sprite = "street_decoration_01_27",
                northSprite = "street_decoration_01_27",
                eastSprite = "street_decoration_01_27",
                southSprite = "street_decoration_01_27"
            }
        }
    }

    DEMI.ConstructionHorse = {
        name = "Cavalletto da Lavoro",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            options = {
                health = 50
            },
            sprite = {
                sprite = "construction_01_9",
                northSprite = "construction_01_8",
                eastSprite = "construction_01_8",
                southSprite = "construction_01_9"
            }
        }
    }

    DEMI.RoadsignDriveThroughArrow = {
        name = "Freccia Drive Thru",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            options = {
                health = 50
            },
            sprite = {
                sprite = "location_restaurant_spiffos_02_58",
                northSprite = "location_restaurant_spiffos_02_59",
                eastSprite = "location_restaurant_spiffos_02_57",
                southSprite = "location_restaurant_spiffos_02_56"
            }
        }
    }

    DEMI.RoadsignStopCar = {
        name = "Cartello Stop",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            options = {
                health = 50
            },
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "street_decoration_01_1",
                northSprite = "street_decoration_01_0",
                eastSprite = "street_decoration_01_3",
                southSprite = "street_decoration_01_2"
            }
        }
    }

    DEMI.RoadsignSale = {
        name = "Cartello in Vendità",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            options = {
                health = 50
            },
            recipe = DEMI.SignRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_accessories_genericsigns_01_7",
                northSprite = "location_shop_accessories_genericsigns_01_6",
                eastSprite = "location_shop_accessories_genericsigns_01_7",
                southSprite = "location_shop_accessories_genericsigns_01_6"
            }
        }
    }
    DEMI.SignTodaySpecial = {
        name = "Cartello Specialità del Giorno",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                health = 50,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pie_01_15",
                northSprite = "location_restaurant_pie_01_14"
            }
        }
    }

    DEMI.SignPurplePie = {
        name = "Cartello Torta Viola",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                health = 50,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pie_01_63",
                northSprite = "location_restaurant_pie_01_56"
            }
        }
    }

    DEMI.SignBluePie = {
        name = "Cartello Torta Blu",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                health = 50,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pie_01_62",
                northSprite = "location_restaurant_pie_01_57"
            }
        }
    }

    DEMI.SignGreenPie = {
        name = "Cartello Torta Verde",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pie_01_61",
                northSprite = "location_restaurant_pie_01_58"
            }
        }
    }

    DEMI.SignPinkPie = {
        name = "Cartello Torta Rosa",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pie_01_60",
                northSprite = "location_restaurant_pie_01_59"
            }
        }
    }

    DEMI.SignJuice = {
        name = "Cartello Succo",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_accessories_01_26",
                northSprite = "location_shop_accessories_01_27"
            }
        }
    }

    DEMI.DecoHeartDiagram = {
        name = "Diagramma Cardiaco",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_medical_01_12",
                northSprite = "location_community_medical_01_11"
            }
        }
    }

    DEMI.DecoDiploma1 = {
        name = "Diploma 1",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_medical_01_13",
                northSprite = "location_community_medical_01_14"
            }
        }
    }

    DEMI.DecoDiploma2 = {
        name = "Diploma 2",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_medical_01_30",
                northSprite = "location_community_medical_01_31"
            }
        }
    }

    DEMI.DecoEyeChart = {
        name = "Ottotipo",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_medical_01_28",
                northSprite = "location_community_medical_01_29"
            }
        }
    }

    DEMI.PosterHorror = {
        name = "Poster Horror",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_entertainment_theatre_01_80",
                northSprite = "location_entertainment_theatre_01_83"
            }
        }
    }

    DEMI.PosterRomance = {
        name = "Poster Romantico",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_entertainment_theatre_01_81",
                northSprite = "location_entertainment_theatre_01_84"
            }
        }
    }

    DEMI.PosterAction = {
        name = "Poster Action",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_entertainment_theatre_01_82",
                northSprite = "location_entertainment_theatre_01_85"
            }
        }
    }

    DEMI.PosterWanted = {
        name = "Poster Wanted",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "papernotices_01_0",
                northSprite = "papernotices_01_3"
            }
        }
    }

    DEMI.PosterPolice = {
        name = "Poster Polizia",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "papernotices_01_1",
                northSprite = "papernotices_01_2"
            }
        }
    }

    DEMI.PosterColorful1 = {
        name = "Poster Colorato 1",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "papernotices_01_4",
                northSprite = "papernotices_01_7"
            }
        }
    }

    DEMI.PosterColorful2 = {
        name = "Poster Colorato 2",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "papernotices_01_5",
                northSprite = "papernotices_01_6"
            }
        }
    }

    DEMI.PosterColorful3 = {
        name = "Poster Colorato 3",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "papernotices_01_8",
                northSprite = "papernotices_01_9"
            }
        }
    }

    DEMI.PosterPacMan = {
        name = "Poster PacMan",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_32",
                northSprite = "walls_decoration_01_33"
            }
        }
    }

    DEMI.PosterLandscape = {
        name = "Poster Panorama",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_34",
                northSprite = "walls_decoration_01_35"
            }
        }
    }

    DEMI.PosterElegantLady = {
        name = "Poster Signora Elegante",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_47",
                northSprite = "walls_decoration_01_46"
            }
        }
    }

    DEMI.PosterWomanPortrait = {
        name = "Poster Ritratto Donna",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_49",
                northSprite = "walls_decoration_01_48"
            }
        }
    }

    DEMI.PosterNoClue = {
        name = "Poster Paws",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_51",
                northSprite = "walls_decoration_01_50"
            }
        }
    }

    DEMI.PosterPossibleShop = {
        name = "Poster Quadro",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_56",
                northSprite = "walls_decoration_01_57"
            }
        }
    }

    DEMI.DecoAmericanFlag = {
        name = "Bandiera Americana",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_17",
                northSprite = "walls_decoration_01_16"
            }
        }
    }

    DEMI.DecoStateFlag = {
        name = "Bandiera Stato",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_decoration_01_19",
                northSprite = "walls_decoration_01_18"
            }
        }
    }

    DEMI.DecoForLease = {
        name = "In Locazione",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_accessories_01_24",
                northSprite = "location_shop_accessories_01_25"
            }
        }
    }

    DEMI.DecoWallClock = {
        name = "Orologio da Parete",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_accessories_01_33",
                northSprite = "location_shop_accessories_01_32"
            }
        }
    }

    DEMI.DecoMensRoom = {
        name = "Bagno Signori",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "fixtures_bathroom_01_18",
                northSprite = "fixtures_bathroom_01_20"
            }
        }
    }

    DEMI.DecoLadyRoom = {
        name = "Bagno Signore",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WallDecorationRecipe,
            options = {
                needToBeAgainstWall = true,
                blockAllTheSquare = false,
                renderFloorHelper = true,
                canPassThrough = true,
                canBarricade = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "fixtures_bathroom_01_19",
                northSprite = "fixtures_bathroom_01_21"
            }
        }
    }
end
