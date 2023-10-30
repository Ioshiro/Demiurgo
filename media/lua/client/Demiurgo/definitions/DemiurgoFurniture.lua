if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMI.InitFurnitureDefs()
    ----- Beds -----
    DEMI.BedGray = {
        name = "Letto Grigio",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_3",
                sprite2 = "furniture_bedding_01_2",
                northSprite = "furniture_bedding_01_0",
                northSprite2 = "furniture_bedding_01_1"
            }
        }
    }
    DEMI.BedBlue = {
        name = "Letto Blu",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_11",
                sprite2 = "furniture_bedding_01_10",
                northSprite = "furniture_bedding_01_8",
                northSprite2 = "furniture_bedding_01_9"
            }
        }
    }
    DEMI.BedBrown = {
        name = "Letto Marrone",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_29",
                sprite2 = "furniture_bedding_01_28",
                northSprite = "furniture_bedding_01_26",
                northSprite2 = "furniture_bedding_01_27"
            }
        }
    }
    DEMI.BedBeige = {
        name = "Letto Beige",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_33",
                sprite2 = "furniture_bedding_01_32",
                northSprite = "furniture_bedding_01_34",
                northSprite2 = "furniture_bedding_01_35"
            }
        }
    }
    DEMI.BedBunkRed = {
        name = "Letto Rosso",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_37",
                sprite2 = "furniture_bedding_01_36",
                northSprite = "furniture_bedding_01_38",
                northSprite2 = "furniture_bedding_01_39"
            }
        }
    }
    DEMI.BedFolding = {
        name = "Letto Pieghevole",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_59",
                sprite2 = "furniture_bedding_01_58",
                northSprite = "furniture_bedding_01_56",
                northSprite2 = "furniture_bedding_01_57"
            }
        }
    }
    DEMI.BedBunkGray = {
        name = "Letto Matrimoniale Grigio",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.BedRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_bedding_01_87",
                sprite2 = "furniture_bedding_01_86",
                northSprite = "furniture_bedding_01_84",
                northSprite2 = "furniture_bedding_01_85"
            }
        }
    }

    ----- Bookshelf -----

    DEMI.BookshelfBrown = {
        name = "Libreria Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.BookshelfRecipe,
            options = {
                containerType = "shelves",
                canBeAlwaysPlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_shelving_01_41",
                northSprite = "furniture_shelving_01_40",
                eastSprite = "furniture_shelving_01_42",
                southSprite = "furniture_shelving_01_43"
            }
        }
    }
    DEMI.BookshelfWhite = {
        name = "Libreria Bianca",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.BookshelfRecipe,
            options = {
                containerType = "shelves",
                canBeAlwaysPlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_shelving_01_45",
                northSprite = "furniture_shelving_01_44",
                eastSprite = "furniture_shelving_01_46",
                southSprite = "furniture_shelving_01_47"
            }
        }
    }

    ----- Seating -----

    DEMI.BenchMall = {
        name = "Panchina Centro Commerciale",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_mall_01_35",
                northSprite = "location_shop_mall_01_32",
                eastSprite = "location_shop_mall_01_32",
                southSprite = "location_shop_mall_01_35"
            }
        }
    }
    DEMI.BenchTrailer = {
        name = "Panchina Roulotte",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_trailer_02_9",
                northSprite = "location_trailer_02_8",
                eastSprite = "location_trailer_02_8",
                southSprite = "location_trailer_02_9"
            }
        }
    }
    DEMI.BenchPadded = {
        name = "Panchina Imbottita",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_02_16",
                northSprite = "furniture_seating_indoor_02_19",
                eastSprite = "furniture_seating_indoor_02_19",
                southSprite = "furniture_seating_indoor_02_16"
            }
        }
    }
    DEMI.ChairWoodenBeige = {
        name = "Sedia di Legno Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_02_4",
                northSprite = "furniture_seating_indoor_02_5",
                eastSprite = "furniture_seating_indoor_02_6",
                southSprite = "furniture_seating_indoor_02_7"
            }
        }
    }
    DEMI.ChairWoodenBrown = {
        name = "Sedia di Legno Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pileocrepe_01_40",
                northSprite = "location_restaurant_pileocrepe_01_41",
                eastSprite = "location_restaurant_pileocrepe_01_42",
                southSprite = "location_restaurant_pileocrepe_01_43"
            }
        }
    }
    DEMI.ChairWoodenDarkBrown = {
        name = "Sedia di Legno Marrone Scuro",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_02_1",
                northSprite = "furniture_seating_indoor_02_0",
                eastSprite = "furniture_seating_indoor_02_3",
                southSprite = "furniture_seating_indoor_02_2"
            }
        }
    }
    DEMI.ChairWoodenRed = {
        name = "Sedia di Legno Rossa",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_02_8",
                northSprite = "furniture_seating_indoor_02_9",
                eastSprite = "furniture_seating_indoor_02_10",
                southSprite = "furniture_seating_indoor_02_11"
            }
        }
    }
    DEMI.ChairWoodenWhite = {
        name = "Sedia di Legno Bianca",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_02_57",
                northSprite = "furniture_seating_indoor_02_56",
                eastSprite = "furniture_seating_indoor_02_59",
                southSprite = "furniture_seating_indoor_02_58"
            }
        }
    }
    DEMI.ChairWoodenYellow = {
        name = "Sedia di Legno Gialla",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_03_56",
                northSprite = "furniture_seating_indoor_03_57",
                eastSprite = "furniture_seating_indoor_03_58",
                southSprite = "furniture_seating_indoor_03_59"
            }
        }
    }
    DEMI.ChairPaddedBlack = {
        name = "Sedia Imbottita Nera",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_03_44",
                northSprite = "furniture_seating_indoor_03_45",
                eastSprite = "furniture_seating_indoor_03_46",
                southSprite = "furniture_seating_indoor_03_47"
            }
        }
    }
    DEMI.ChairPaddedGreen = {
        name = "Sedia Imbottita Verde",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_01_56",
                northSprite = "furniture_seating_indoor_01_57",
                eastSprite = "furniture_seating_indoor_01_58",
                southSprite = "furniture_seating_indoor_01_59"
            }
        }
    }
    DEMI.ChairFoldingBlack = {
        name = "Sedia Pieghevole Nera",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_01_61",
                northSprite = "furniture_seating_indoor_01_60",
                eastSprite = "furniture_seating_indoor_01_63",
                southSprite = "furniture_seating_indoor_01_62"
            }
        }
    }
    DEMI.ChairOfficeBlack = {
        name = "Sedia da Ufficio Nera",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_01_49",
                northSprite = "furniture_seating_indoor_01_50",
                eastSprite = "furniture_seating_indoor_01_48",
                southSprite = "furniture_seating_indoor_01_51"
            }
        }
    }
    DEMI.ChairSchoolBlue = {
        name = "Sedia Scolastica Blu",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_02_12",
                northSprite = "furniture_seating_indoor_02_13",
                eastSprite = "furniture_seating_indoor_02_14",
                southSprite = "furniture_seating_indoor_02_15"
            }
        }
    }
    DEMI.ChairMetalGray = {
        name = "Sedia di Metallo Grigia",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_seating_indoor_01_53",
                northSprite = "furniture_seating_indoor_01_54",
                eastSprite = "furniture_seating_indoor_01_52",
                southSprite = "furniture_seating_indoor_01_55"
            }
        }
    }
    DEMI.ChairPaddedRed = {
        name = "Sedia Imbottita Rossa",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_01_40",
                northSprite = "furniture_seating_indoor_01_41",
                eastSprite = "furniture_seating_indoor_01_42",
                southSprite = "furniture_seating_indoor_01_43"
            }
        }
    }
    DEMI.ChairPaddedBeige = {
        name = "Sedia Imbottita Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_01_36",
                northSprite = "furniture_seating_indoor_01_37",
                eastSprite = "furniture_seating_indoor_01_38",
                southSprite = "furniture_seating_indoor_01_39"
            }
        }
    }
    DEMI.ChairPaddedBlue = {
        name = "Sedia Imbottita Blu",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_03_48",
                northSprite = "furniture_seating_indoor_03_49",
                eastSprite = "furniture_seating_indoor_03_50",
                southSprite = "furniture_seating_indoor_03_51"
            }
        }
    }
    DEMI.ChairPaddedBlackLeather = {
        name = "Sedia di Pelle Nera",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_03_40",
                northSprite = "furniture_seating_indoor_03_41",
                eastSprite = "furniture_seating_indoor_03_42",
                southSprite = "furniture_seating_indoor_03_43"
            }
        }
    }
    DEMI.ChairArmBlue = {
        name = "Poltrona Blu",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_03_24",
                northSprite = "furniture_seating_indoor_03_25",
                eastSprite = "furniture_seating_indoor_03_26",
                southSprite = "furniture_seating_indoor_03_27"
            }
        }
    }
    DEMI.ChairArmPowderBlue = {
        name = "Poltrona Blu Polvere",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_03_5",
                northSprite = "furniture_seating_indoor_03_4",
                eastSprite = "furniture_seating_indoor_03_6",
                southSprite = "furniture_seating_indoor_03_7"
            }
        }
    }
    DEMI.ChairArmBrown = {
        name = "Poltrona Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_02_45",
                northSprite = "furniture_seating_indoor_02_44",
                eastSprite = "furniture_seating_indoor_02_46",
                southSprite = "furniture_seating_indoor_02_47"
            }
        }
    }
    DEMI.ChairArmGray = {
        name = "Poltrona Grigia",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_02_40",
                northSprite = "furniture_seating_indoor_02_41",
                eastSprite = "furniture_seating_indoor_02_42",
                southSprite = "furniture_seating_indoor_02_43"
            }
        }
    }
    DEMI.ChairArmBeige = {
        name = "Poltrona Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_01_8",
                northSprite = "furniture_seating_indoor_01_9",
                eastSprite = "furniture_seating_indoor_01_10",
                southSprite = "furniture_seating_indoor_01_11"
            }
        }
    }
    DEMI.ChairArmGreen = {
        name = "Poltrona Verde",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_03_29",
                northSprite = "furniture_seating_indoor_03_28",
                eastSprite = "furniture_seating_indoor_03_30",
                southSprite = "furniture_seating_indoor_03_31"
            }
        }
    }
    DEMI.ChairArmOrange = {
        name = "Poltrona Arancione",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_01_13",
                northSprite = "furniture_seating_indoor_01_12",
                eastSprite = "furniture_seating_indoor_01_14",
                southSprite = "furniture_seating_indoor_01_15"
            }
        }
    }
    DEMI.ChairArmPurple = {
        name = "Poltrona Viola",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_01_32",
                northSprite = "furniture_seating_indoor_01_33",
                eastSprite = "furniture_seating_indoor_01_34",
                southSprite = "furniture_seating_indoor_01_35"
            }
        }
    }
    DEMI.ChairArmYellow = {
        name = "Poltrona Gialla",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.CouchRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_02_21",
                northSprite = "furniture_seating_indoor_02_20",
                eastSprite = "furniture_seating_indoor_02_22",
                southSprite = "furniture_seating_indoor_02_23"
            }
        }
    }
    DEMI.FootstoolOrange = {
        name = "Poggiapiedi Arancione",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "furniture_seating_indoor_01_46",
                northSprite = "furniture_seating_indoor_01_47",
                eastSprite = "furniture_seating_indoor_01_46",
                southSprite = "furniture_seating_indoor_01_47"
            }
        }
    }
    DEMI.StoolDiner = {
        name = "Sgabello Ristorante",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_restaurant_diner_01_42",
                northSprite = "location_restaurant_diner_01_42",
                eastSprite = "location_restaurant_diner_01_42",
                southSprite = "location_restaurant_diner_01_42"
            }
        }
    }
    -- TODO sprites look wrong, check
    DEMI.StoolBlack = {
        name = "Sgabello Nero",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_community_medical_01_10",
                northSprite = "location_community_medical_01_10",
                eastSprite = "location_community_medical_01_10",
                southSprite = "location_community_medical_01_10"
            }
        }
    }
    -- TODO sprites look wrong, check
    DEMI.StoolBarBlack = {
        name = "Sgabello Nero Bar",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_restaurant_bar_01_25",
                northSprite = "location_restaurant_bar_01_25",
                eastSprite = "location_restaurant_bar_01_25",
                southSprite = "location_restaurant_bar_01_25"
            }
        }
    }
    -- TODO sprites look wrong, check
    DEMI.StoolBarBrown = {
        name = "Sgabello Marrone Bar",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_restaurant_bar_01_26",
                northSprite = "location_restaurant_bar_01_26",
                eastSprite = "location_restaurant_bar_01_26",
                southSprite = "location_restaurant_bar_01_26"
            }
        }
    }
    DEMI.StoolSpiffos = {
        name = "Sgabello Bar Spiffo",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_restaurant_spiffos_02_25",
                northSprite = "location_restaurant_spiffos_02_24",
                eastSprite = "location_restaurant_spiffos_02_27",
                southSprite = "location_restaurant_spiffos_02_26"
            }
        }
    }
    DEMI.StoolBeautySalon = {
        name = "Sgabello Salone di Bellezza",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_services_beauty_01_1",
                northSprite = "location_services_beauty_01_2",
                eastSprite = "location_services_beauty_01_0",
                southSprite = "location_services_beauty_01_3"
            }
        }
    }
    DEMI.StoolBrown = {
        name = "Sgabello Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
            options = {
                canPassThrough = true
            },
            sprite = {
                sprite = "location_shop_mall_01_41",
                northSprite = "location_shop_mall_01_40",
                eastSprite = "location_shop_mall_01_43",
                southSprite = "location_shop_mall_01_42"
            }
        }
    }

    ----- Counters -----

    DEMI.CounterModern = {
        name = "Bancone Moderno",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_3",
                northSprite = "fixtures_counters_01_5",
                eastSprite = "fixtures_counters_01_7",
                southSprite = "fixtures_counters_01_1"
            }
        }
    }
    DEMI.CounterModernCorner = {
        name = "Angolo Bancone Moderno",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_2",
                northSprite = "fixtures_counters_01_4",
                eastSprite = "fixtures_counters_01_6",
                southSprite = "fixtures_counters_01_0"
            }
        }
    }
    DEMI.CounterWooden = {
        name = "Bancone di Legno",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_11",
                northSprite = "fixtures_counters_01_13",
                eastSprite = "fixtures_counters_01_15",
                southSprite = "fixtures_counters_01_9"
            }
        }
    }
    DEMI.CounterWoodenCorner = {
        name = "Angolo Bancone di Legno",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_10",
                northSprite = "fixtures_counters_01_12",
                eastSprite = "fixtures_counters_01_14",
                southSprite = "fixtures_counters_01_8"
            }
        }
    }
    DEMI.CounterSteel = {
        name = "Bancone di Metallo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_35",
                northSprite = "fixtures_counters_01_37",
                eastSprite = "fixtures_counters_01_39",
                southSprite = "fixtures_counters_01_33"
            }
        }
    }
    DEMI.CounterSteelCorner = {
        name = "Angolo Bancone di Metallo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_34",
                northSprite = "fixtures_counters_01_36",
                eastSprite = "fixtures_counters_01_38",
                southSprite = "fixtures_counters_01_32"
            }
        }
    }
    DEMI.CounterBirchwood = {
        name = "Bancone di Betulla",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_43",
                northSprite = "fixtures_counters_01_45",
                eastSprite = "fixtures_counters_01_47",
                southSprite = "fixtures_counters_01_41"
            }
        }
    }
    DEMI.CounterBirchwoodCorner = {
        name = "Angolo Bancone di Betulla",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_42",
                northSprite = "fixtures_counters_01_44",
                eastSprite = "fixtures_counters_01_46",
                southSprite = "fixtures_counters_01_40"
            }
        }
    }
    DEMI.CounterOak = {
        name = "Bancone di Quercia",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_51",
                northSprite = "fixtures_counters_01_53",
                eastSprite = "fixtures_counters_01_55",
                southSprite = "fixtures_counters_01_49"
            }
        }
    }
    DEMI.CounterOakCorner = {
        name = "Angolo Bancone di Quercia",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_50",
                northSprite = "fixtures_counters_01_52",
                eastSprite = "fixtures_counters_01_54",
                southSprite = "fixtures_counters_01_48"
            }
        }
    }
    DEMI.CounterDark = {
        name = "Bancone Scuro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_59",
                northSprite = "fixtures_counters_01_61",
                eastSprite = "fixtures_counters_01_63",
                southSprite = "fixtures_counters_01_57"
            }
        }
    }
    DEMI.CounterDarkCorner = {
        name = "Angolo Bancone Scuro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_58",
                northSprite = "fixtures_counters_01_60",
                eastSprite = "fixtures_counters_01_62",
                southSprite = "fixtures_counters_01_56"
            }
        }
    }
    DEMI.CounterGreen = {
        name = "Bancone Verde",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_67",
                northSprite = "fixtures_counters_01_69",
                eastSprite = "fixtures_counters_01_71",
                southSprite = "fixtures_counters_01_65"
            }
        }
    }
    DEMI.CounterGreenCorner = {
        name = "Angolo Bancone Verde",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_66",
                northSprite = "fixtures_counters_01_68",
                eastSprite = "fixtures_counters_01_70",
                southSprite = "fixtures_counters_01_64"
            }
        }
    }
    DEMI.CounterWhite = {
        name = "Bancone Bianco",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_75",
                northSprite = "fixtures_counters_01_77",
                eastSprite = "fixtures_counters_01_79",
                southSprite = "fixtures_counters_01_73"
            }
        }
    }
    DEMI.CounterWhiteCorner = {
        name = "Angolo Bancone Bianco",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_74",
                northSprite = "fixtures_counters_01_76",
                eastSprite = "fixtures_counters_01_78",
                southSprite = "fixtures_counters_01_72"
            }
        }
    }
    DEMI.CounterTrailer = {
        name = "Bancone Roulotte",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_trailer_02_17",
                northSprite = "location_trailer_02_18",
                eastSprite = "location_trailer_02_19",
                southSprite = "location_trailer_02_18"
            }
        }
    }
    DEMI.CounterMiniFridge = {
        name = "Mini Frigo Roulotte",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_trailer_02_17",
                northSprite = "location_trailer_02_16",
                eastSprite = "location_trailer_02_17",
                southSprite = "location_trailer_02_16"
            }
        }
    }
    DEMI.CounterBar = {
        name = "Bancone Bar",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_bar_01_6",
                northSprite = "location_restaurant_bar_01_4",
                eastSprite = "location_restaurant_bar_01_2",
                southSprite = "location_restaurant_bar_01_0"
            }
        }
    }
    DEMI.CounterBarCorner = {
        name = "Angolo Bancone Bar",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_bar_01_7",
                northSprite = "location_restaurant_bar_01_5",
                eastSprite = "location_restaurant_bar_01_3",
                southSprite = "location_restaurant_bar_01_1"
            }
        }
    }
    DEMI.CounterRestaurant = {
        name = "Bancone Ristorante",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_pie_01_43",
                northSprite = "location_restaurant_pie_01_45",
                eastSprite = "location_restaurant_pie_01_47",
                southSprite = "location_restaurant_pie_01_41"
            }
        }
    }
    DEMI.CounterRestaurantCorner = {
        name = "Angolo Bancone Ristorante",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_pie_01_42",
                northSprite = "location_restaurant_pie_01_44",
                eastSprite = "location_restaurant_pie_01_46",
                southSprite = "location_restaurant_pie_01_40"
            }
        }
    }
    DEMI.CounterTheater = {
        name = "Bancone Teatro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_entertainment_theatre_01_11",
                northSprite = "location_entertainment_theatre_01_13",
                eastSprite = "location_entertainment_theatre_01_15",
                southSprite = "location_entertainment_theatre_01_9"
            }
        }
    }
    DEMI.CounterTheaterCorner = {
        name = "Angolo Bancone Teatro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_entertainment_theatre_01_10",
                northSprite = "location_entertainment_theatre_01_12",
                eastSprite = "location_entertainment_theatre_01_14",
                southSprite = "location_entertainment_theatre_01_8"
            }
        }
    }
    DEMI.CounterFossoil = {
        name = "Bancone Fossoil",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_fossoil_01_19",
                northSprite = "location_shop_fossoil_01_21",
                eastSprite = "location_shop_fossoil_01_23",
                southSprite = "location_shop_fossoil_01_17"
            }
        }
    }
    DEMI.CounterFossoilCorner = {
        name = "Angolo Bancone Fossoil",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_fossoil_01_18",
                northSprite = "location_shop_fossoil_01_20",
                eastSprite = "location_shop_fossoil_01_22",
                southSprite = "location_shop_fossoil_01_16"
            }
        }
    }
    DEMI.CounterGas2Go = {
        name = "Bancone Gas2Go",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_gas2go_01_19",
                northSprite = "location_shop_gas2go_01_21",
                eastSprite = "location_shop_gas2go_01_23",
                southSprite = "location_shop_gas2go_01_17"
            }
        }
    }
    DEMI.CounterGas2GoCorner = {
        name = "Angolo Bancone Gas2Go",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_gas2go_01_18",
                northSprite = "location_shop_gas2go_01_20",
                eastSprite = "location_shop_gas2go_01_22",
                southSprite = "location_shop_gas2go_01_16"
            }
        }
    }
    DEMI.CounterPizzaWhirled = {
        name = "Bancone PizzaWhirled",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_pizzawhirled_01_35",
                northSprite = "location_restaurant_pizzawhirled_01_37",
                eastSprite = "location_restaurant_pizzawhirled_01_39",
                southSprite = "location_restaurant_pizzawhirled_01_33"
            }
        }
    }
    DEMI.CounterPizzaWhirledCorner = {
        name = "Angolo Bancone PizzaWhirled",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_pizzawhirled_01_32",
                northSprite = "location_restaurant_pizzawhirled_01_36",
                eastSprite = "location_restaurant_pizzawhirled_01_38",
                southSprite = "location_restaurant_pizzawhirled_01_34"
            }
        }
    }
    DEMI.CounterSeahorseCoffee = {
        name = "Bancone SeahorseCoffee",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_seahorse_01_43",
                northSprite = "location_restaurant_seahorse_01_47",
                eastSprite = "location_restaurant_seahorse_01_45",
                southSprite = "location_restaurant_seahorse_01_41"
            }
        }
    }
    DEMI.CounterSeahorseCoffeeCorner = {
        name = "Angolo Bancone SeahorseCoffee",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_seahorse_01_42",
                northSprite = "location_restaurant_seahorse_01_48",
                eastSprite = "location_restaurant_seahorse_01_50",
                southSprite = "location_restaurant_seahorse_01_40"
            }
        }
    }
    DEMI.CounterSpiffo = {
        name = "Bancone Spiffo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_spiffos_01_59",
                northSprite = "location_restaurant_spiffos_01_61",
                eastSprite = "location_restaurant_spiffos_01_63",
                southSprite = "location_restaurant_spiffos_01_57"
            }
        }
    }
    DEMI.CounterSpiffoCorner = {
        name = "Angolo Bancone Spiffo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_spiffos_01_56",
                northSprite = "location_restaurant_spiffos_01_60",
                eastSprite = "location_restaurant_spiffos_01_62",
                southSprite = "location_restaurant_spiffos_01_58"
            }
        }
    }
    DEMI.CounterDiner = {
        name = "Bancone Diner",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_diner_01_27",
                northSprite = "location_restaurant_diner_01_29",
                eastSprite = "location_restaurant_diner_01_31",
                southSprite = "location_restaurant_diner_01_25"
            }
        }
    }
    DEMI.CounterDinerCorner = {
        name = "Angolo Bancone Diner",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_restaurant_diner_01_26",
                northSprite = "location_restaurant_diner_01_28",
                eastSprite = "location_restaurant_diner_01_30",
                southSprite = "location_restaurant_diner_01_24"
            }
        }
    }
    DEMI.CounterZippee = {
        name = "Bancone Zippee",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_zippee_01_19",
                northSprite = "location_shop_zippee_01_21",
                eastSprite = "location_shop_zippee_01_23",
                southSprite = "location_shop_zippee_01_17"
            }
        }
    }
    DEMI.CounterZippeeCorner = {
        name = "Angolo Bancone Zippee",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_zippee_01_18",
                northSprite = "location_shop_zippee_01_20",
                eastSprite = "location_shop_zippee_01_22",
                southSprite = "location_shop_zippee_01_16"
            }
        }
    }
    DEMI.CounterMotel = {
        name = "Bancone Motel",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_hospitality_sunstarmotel_02_13",
                northSprite = "location_hospitality_sunstarmotel_02_14",
                eastSprite = "location_hospitality_sunstarmotel_02_15",
                southSprite = "location_hospitality_sunstarmotel_02_12"
            }
        }
    }
    DEMI.CounterGlassDisplay = {
        name = "Bancone di Vetro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_generic_01_99",
                northSprite = "location_shop_generic_01_101",
                eastSprite = "location_shop_generic_01_103",
                southSprite = "location_shop_generic_01_97"
            }
        }
    }
    DEMI.CounterGlassDisplayCorner = {
        name = "Angolo Bancone di Vetro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_shop_generic_01_98",
                northSprite = "location_shop_generic_01_100",
                eastSprite = "location_shop_generic_01_102",
                southSprite = "location_shop_generic_01_96"
            }
        }
    }
    DEMI.CounterTrailerUpper = {
        name = "Bancone Roulotte Alto",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "location_trailer_02_23",
                northSprite = "location_trailer_02_22",
                eastSprite = "location_trailer_02_23",
                southSprite = "location_trailer_02_22"
            }
        }
    }
    DEMI.CounterBirchwoodUpper = {
        name = "Bancone di Betulla Alto",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.CounterRecipe,
            sprite = {
                sprite = "fixtures_counters_01_27",
                northSprite = "fixtures_counters_01_25",
                eastSprite = "fixtures_counters_01_27",
                southSprite = "fixtures_counters_01_26"
            }
        }
    }

    ----- Containers -----

    DEMI.LockerGun = {
        name = "Armadietto per Fucili",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                canAlwaysBePlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true,
                containerType = "locker"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_02_9",
                northSprite = "furniture_storage_02_8",
                southSprite = "furniture_storage_02_10",
                eastSprite = "furniture_storage_02_11"
            }
        }
    }

    DEMI.LockerMetal = {
        name = "Armadietto di Metallo",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                canAlwaysBePlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true,
                containerType = "locker"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_02_1",
                northSprite = "furniture_storage_02_0",
                southSprite = "furniture_storage_02_2",
                eastSprite = "furniture_storage_02_3"
            }
        }
    }

    DEMI.LockerBoxes = {
        name = "Cassette di Sicurezza",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                canAlwaysBePlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true,
                containerType = "locker"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_bank_01_43",
                northSprite = "location_business_bank_01_42",
                southSprite = "location_business_bank_01_44",
                eastSprite = "location_business_bank_01_45"
            }
        }
    }

    DEMI.LockerBlue = {
        name = "Armadietto Blu",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                canAlwaysBePlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true,
                containerType = "locker"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_02_4",
                northSprite = "furniture_storage_02_5",
                southSprite = "furniture_storage_02_7",
                eastSprite = "furniture_storage_02_6"
            }
        }
    }

    DEMI.LockerYellow = {
        name = "Armadietto Giallo",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                canAlwaysBePlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true,
                containerType = "locker"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_02_12",
                northSprite = "furniture_storage_02_13",
                southSprite = "furniture_storage_02_15",
                eastSprite = "furniture_storage_02_14"
            }
        }
    }

    DEMI.LockerMilitary = {
        name = "Armadietto Militare",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                canAlwaysBePlaced = true,
                isContainer = true,
                canBeLockedByPadlock = true,
                containerType = "locker"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_military_generic_01_23",
                northSprite = "location_military_generic_01_22",
                southSprite = "location_military_generic_01_31",
                eastSprite = "location_military_generic_01_30"
            }
        }
    }
    DEMI.EndTableDrawer = {
        name = "Cassetto del Tavolino",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_01_53",
                northSprite = "furniture_storage_01_52",
                eastSprite = "furniture_storage_01_54",
                southSprite = "furniture_storage_01_55"
            }
        }
    }

    DEMI.DeskSchoolBrown = {
        name = "Banco Scolastico",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_school_01_4",
                northSprite = "location_community_school_01_5",
                eastSprite = "location_community_school_01_6",
                southSprite = "location_community_school_01_7"
            }
        }
    }

    DEMI.DeskSchoolGreen = {
        name = "Banco Scolastico",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_school_01_12",
                northSprite = "location_community_school_01_13",
                eastSprite = "location_community_school_01_14",
                southSprite = "location_community_school_01_15"
            }
        }
    }
    DEMI.FilingCabinetGray = {
        name = "Casellario Grigio",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_office_generic_01_16",
                northSprite = "location_business_office_generic_01_17",
                eastSprite = "location_business_office_generic_01_24",
                southSprite = "location_business_office_generic_01_25"
            }
        }
    }

    DEMI.FilingCabinetYellow = {
        name = "Casellario Giallo",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.MetalLockerRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_office_generic_01_32",
                northSprite = "location_business_office_generic_01_33",
                eastSprite = "location_business_office_generic_01_34",
                southSprite = "location_business_office_generic_01_35"
            }
        }
    }

    DEMI.DrawerMedical = {
        name = "Cassetto Medico",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_medical_01_36",
                northSprite = "location_community_medical_01_37",
                eastSprite = "location_community_medical_01_38",
                southSprite = "location_community_medical_01_39"
            }
        }
    }
    DEMI.BrickPallet = {
        name = "Bancale di Mattoni",
        data = {
            onBuild = DEMI.OnBuildStoneContainer,
            recipe = DEMI.WoodenContainerRecipe,
            icon = "fireplace",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "construction_01_4",
                northSprite = "construction_01_4"
            }
        }
    }

    DEMI.ClothingRackLarge = {
        name = "Appendiabiti Grande",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleStorageRecipe,
            options = {
                containerType = "clothingrack",
                isContainer = true,
                canBeAlwaysPlaced = true
            },
            desc = "A tidy way to store all those old filthy clothes",
            sprite = {
                sprite = "location_shop_generic_01_39",
                sprite2 = "location_shop_generic_01_38",
                northSprite = "location_shop_generic_01_36",
                northSprite2 = "location_shop_generic_01_37"
            }
        }
    }

    DEMI.BarrelMetal = {
        name = "Barile di Metallo",
        data = {
            onBuild = DEMI.OnBuildMetalContainer,
            recipe = DEMI.MetalContainerRecipe,
            icon = "bin",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "industry_01_22",
                northSprite = "industry_01_23"
            }
        }
    }

    DEMI.PostBox = {
        name = "Cassetta Postale",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
			options = {
                health = 50,
                containerType = "smallbox",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
				},
			desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "street_decoration_01_8",
                northSprite = "street_decoration_01_9",
                eastSprite = "street_decoration_01_10",
                southSprite = "street_decoration_01_11"
            }
        }
    }

    DEMI.RecyclingBin2 = {
        name = "Cestino 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                health = 50,
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "trashcontainers_01_0",
                northSprite = "trashcontainers_01_1",
                eastSprite = "trashcontainers_01_2",
                southSprite = "trashcontainers_01_3"
            }
        }
    }

    DEMI.CrateHalf = {
        name = "Mezza Cassa",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                health = 50,
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "location_shop_greenes_01_35",
                northSprite = "location_shop_greenes_01_36"
            }
        }
    }
    DEMI.CrateGroceryBox = {
        name = "Casse Alimentari",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                health = 50,
                containerType = "smallbox",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "location_shop_greenes_01_37",
                northSprite = "location_shop_greenes_01_38"
            }
        }
    }
    DEMI.CrateOuthouseBox = {
        name = "Casse Esterno",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.WoodenChairRecipe,
			
            options = {
                canPassThrough = true,
				containerType = "bin"
            },
            sprite = {
                sprite = "fixtures_bathroom_02_24",
                northSprite = "fixtures_bathroom_02_25"
            }
        }
    }
    DEMI.CrateTheatreStorage = {
        name = "Contenitore da Teatro",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "counter",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "location_entertainment_theatre_01_16",
                northSprite = "location_entertainment_theatre_01_16"
            }
        }
    }
    DEMI.CrateDogHouse = {
        name = "Cuccia Cane",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                health = 50,
                containerType = "officedrawers",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "location_farm_accesories_01_8",
                northSprite = "location_farm_accesories_01_9",
                eastSprite = "location_farm_accesories_01_10",
                southSprite = "location_farm_accesories_01_11"
            }
        }
    }
    DEMI.CrateMilitaryGreen = {
        name = "Cassa Militare Verde",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "militarycrate",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "location_military_generic_01_0",
                northSprite = "location_military_generic_01_2",
                eastSprite = "location_military_generic_01_4"
            }
        }
    }
    DEMI.CrateMilitaryGray = {
        name = "Cassa Militare Grigia",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "militarycrate",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "location_military_generic_01_8",
                northSprite = "location_military_generic_01_10",
                eastSprite = "location_military_generic_01_12"
            }
        }
    }
    DEMI.BoxCardboardSmall = {
        name = "Cassa di Cartone Piccola",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "smallbox",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "trashcontainers_01_24",
                northSprite = "trashcontainers_01_25"
            }
        }
    }
    DEMI.BoxCardboardBroken = {
        name = "Cassa di Cartone Rotta",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "smallbox",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "trashcontainers_01_26",
                northSprite = "trashcontainers_01_27"
            }
        }
    }
    DEMI.BoxCardboardBig = {
        name = "Cassa di Cartone Grande",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "garage_storage",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "furniture_storage_02_16",
                northSprite = "furniture_storage_02_17"
            }
        }
    }
    DEMI.BoxCardboard = {
        name = "Cassa di Cartone",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "garage_storage",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            sprite = {
                sprite = "furniture_storage_02_18",
                northSprite = "furniture_storage_02_19"
            }
        }
    }

    ----- Dylans Scrap Containers -----

    DEMI.DJunkBoxes1 = {
        name = "Dylans Cassa Spazzatura 1",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Vecchie scatole, si potrebbe mettere qualcosa dentro",
            sprite = {
                sprite = "DylansJunkstacks01_1",
                northSprite = "DylansJunkstacks01_6"
            }
        }
    }
    DEMI.DJunkBoxes2 = {
        name = "Dylans Cassa Spazzatura 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Vecchie scatole, si potrebbe mettere qualcosa dentro",
            sprite = {
                sprite = "DylansJunkstacks01_38",
                northSprite = "DylansJunkstacks01_39"
            }
        }
    }
    DEMI.DJunkBoxes3 = {
        name = "Dylans Cassa Spazzatura  3",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Vecchie scatole, si potrebbe mettere qualcosa dentro",
            sprite = {
                sprite = "DylansJunkstacks01_46",
                northSprite = "DylansJunkstacks01_50"
            }
        }
    }
    DEMI.DJunkBoxes4 = {
        name = "Dylans Cassa Spazzatura  4",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Vecchie scatole, si potrebbe mettere qualcosa dentro",
            sprite = {
                sprite = "DylansJunkstacks02_17",
                northSprite = "DylansJunkstacks02_53"
            }
        }
    }
    DEMI.DJunkBoxes5 = {
        name = "Dylans Cassa Spazzatura  5",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Vecchie scatole, si potrebbe mettere qualcosa dentro",
            sprite = {
                sprite = "DylansJunkstacks02_55",
                northSprite = "DylansJunkstacks02_57"
            }
        }
    }
    DEMI.DJunkBoxes6 = {
        name = "Dylans Cassa Spazzatura  6",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Vecchie scatole, si potrebbe mettere qualcosa dentro",
            sprite = {
                sprite = "DylansJunkstacks02_58",
                northSprite = "DylansJunkstacks02_59"
            }
        }
    }
    DEMI.CabinetDJunk1 = {
        name = "Dylans Armadietto Spazzatura 1",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "officedrawers",
            desc = "Armadietti distrutti, le serrature sono andate...",
            sprite = {
                sprite = "DylansJunkstacks01_3",
                northSprite = "DylansJunkstacks01_41"
            }
        }
    }
    DEMI.CabinetDJunk2 = {
        name = "Dylans Armadietto Spazzatura 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "officedrawers",
            desc = "Armadietti distrutti, le serrature sono andate...",
            sprite = {
                sprite = "DylansJunkstacks01_5",
                northSprite = "DylansJunkstacks01_13"
            }
        }
    }
    DEMI.CabinetDJunk3 = {
        name = "Dylans Armadietto Spazzatura 3",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "officedrawers",
            desc = "Armadietti distrutti, le serrature sono andate...",
            sprite = {
                sprite = "DylansJunkstacks01_45",
                northSprite = "DylansJunkstacks02_63"
            }
        }
    }
    DEMI.CabinetDJunk4 = {
        name = "Dylans Armadietto Spazzatura 4",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "officedrawers",
            desc = "Armadietti distrutti, le serrature sono andate...",
            sprite = {
                sprite = "DylansJunkstacks02_19",
                northSprite = "DylansJunkstacks02_41"
            }
        }
    }
    DEMI.OvenDJunk1 = {
        name = "Dylans Forno Spazzatura 1",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "stove",
            desc = "Dubito che funzionerà ancora, almeno è un contenitore a prova di fuoco!",
            sprite = {
                sprite = "DylansJunkstacks01_8",
                northSprite = "DylansJunkstacks01_9"
            }
        }
    }
    DEMI.OvenDJunk2 = {
        name = "Dylans Forno Spazzatura 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "stove",
            desc = "Dubito che funzionerà ancora, almeno è un contenitore a prova di fuoco!",
            sprite = {
                sprite = "DylansJunkstacks01_29",
                northSprite = "DylansJunkstacks02_31"
            }
        }
    }
    DEMI.FridgeDJunk1 = {
        name = "Dylans Frigo Spazzatura 1",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "fridge",
            desc = "Sicuramente non terrà il cibo al fresco, ma qualcosa dentro ci sta",
            sprite = {
                sprite = "DylansJunkstacks01_11",
                northSprite = "DylansJunkstacks01_26"
            }
        }
    }
    DEMI.FridgeDJunk2 = {
        name = "Dylans Frigo Spazzatura 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "fridge",
            desc = "Sicuramente non terrà il cibo al fresco, ma qualcosa dentro ci sta",
            sprite = {
                sprite = "DylansJunkstacks01_42",
                northSprite = "DylansJunkstacks02_13"
            }
        }
    }
    DEMI.FridgeDJunk3 = {
        name = "Dylans Frigo Spazzatura 3",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "fridge",
            desc = "Sicuramente non terrà il cibo al fresco, ma qualcosa dentro ci sta",
            sprite = {
                sprite = "DylansJunkstacks02_21",
                northSprite = "DylansJunkstacks02_21"
            }
        }
    }
    DEMI.WasherDJunk1 = {
        name = "Dylans Lavatrice Spazzatura 1",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Da quanto sono dentro questi vestiti?",
            sprite = {
                sprite = "DylansJunkstacks01_14",
                northSprite = "DylansJunkstacks01_28"
            }
        }
    }
    DEMI.WasherDJunk2 = {
        name = "Dylans Lavatrice Spazzatura 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Da quanto sono dentro questi vestiti?",
            sprite = {
                sprite = "DylansJunkstacks02_4",
                northSprite = "DylansJunkstacks02_22"
            }
        }
    }
    DEMI.WasherDJunk3 = {
        name = "Dylans Lavatrice Spazzatura 3",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Da quanto sono dentro questi vestiti?",
            sprite = {
                sprite = "DylansJunkstacks02_45",
                northSprite = "DylansJunkstacks02_46"
            }
        }
    }
    DEMI.DJunkPile1 = {
        name = "Dylans Pila di Spazzatura 1",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Puoi metterci la tua spazzatura, ma lo vuoi veramente?",
            sprite = {
                sprite = "DylansJunkstacks01_27",
                northSprite = "DylansJunkstacks01_37"
            }
        }
    }
    DEMI.DJunkPile2 = {
        name = "Dylans Pila di Spazzatura 2",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Puoi metterci la tua spazzatura, ma lo vuoi veramente?",
            sprite = {
                sprite = "DylansJunkstacks01_47",
                northSprite = "DylansJunkstacks01_59"
            }
        }
    }
    DEMI.DJunkPile3 = {
        name = "Dylans Pila di Spazzatura 3",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Puoi metterci la tua spazzatura, ma lo vuoi veramente?",
            sprite = {
                sprite = "DylansJunkstacks02_2",
                northSprite = "DylansJunkstacks02_7"
            }
        }
    }
    DEMI.DJunkPile4 = {
        name = "Dylans Pila di Spazzatura 4",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Puoi metterci la tua spazzatura, ma lo vuoi veramente?",
            sprite = {
                sprite = "DylansJunkstacks02_8",
                northSprite = "DylansJunkstacks02_10"
            }
        }
    }
    DEMI.DJunkPile5 = {
        name = "Dylans Pila di Spazzatura 5",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Puoi metterci la tua spazzatura, ma lo vuoi veramente?",
            sprite = {
                sprite = "DylansJunkstacks02_20",
                northSprite = "DylansJunkstacks02_27"
            }
        }
    }
    DEMI.DJunkPile6 = {
        name = "Dylans Pila di Spazzatura 6",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.JunkContainerRecipe,
            icon = "garage_storage",
            desc = "Puoi metterci la tua spazzatura, ma lo vuoi veramente?",
            sprite = {
                sprite = "DylansJunkstacks02_61",
                northSprite = "DylansJunkstacks02_61"
            }
        }
    }
    DEMI.DJunkRustySafe = {
        name = "Cassaforte Arruginita",
        data = {
            onBuild = DEMI.OnBuildMetalContainer,
            recipe = DEMI.MetalModContainerRecipe,
            icon = "militarycrate",
            desc = "Un vecchio cassetto di sicurezza, a malapena funzionante",
            sprite = {
                sprite = "DylansRandomFurniture01_8",
                northSprite = "DylansRandomFurniture01_9"
            }
        }
    }
    DEMI.DJunkMechanicsToolchest = {
        name = "Cassetto degli Attrezzi da Meccanico",
        data = {
            onBuild = DEMI.OnBuildMetalContainer,
            recipe = DEMI.MetalModContainerRecipe,
            icon = "toolcabinet",
            desc = "Il posto perfetto per tutti i tuoi attrezzi",
            sprite = {
                sprite = "DylansRandomFurniture01_10",
                northSprite = "DylansRandomFurniture01_10"
            }
        }
    }
    DEMI.DJunkMechanicsRollingCart = {
        name = "Cassetto degli Attrezzi da Meccanico 2",
        data = {
            onBuild = DEMI.OnBuildMetalContainer,
            recipe = DEMI.MetalModContainerRecipe,
            icon = "toolcabinet",
            desc = "Carrello per attrezzi mobile, se avesse ancora le ruote...",
            sprite = {
                sprite = "DylansRandomFurniture01_11",
                northSprite = "DylansRandomFurniture01_11"
            }
        }
    }

    ----- Trash Bins -----
    DEMI.BinPizzaWhirled = {
        name = "Cestino Pizza Whirled",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pizzawhirled_01_17",
                northSprite = "location_restaurant_pizzawhirled_01_18"
            }
        }
    }

    DEMI.BinSpiffos = {
        name = "Cestino Spiffo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_spiffos_01_30",
                northSprite = "location_restaurant_spiffos_01_31"
            }
        }
    }

    DEMI.BinFossoil = {
        name = "Cestino Fossoil",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_fossoil_01_32",
                northSprite = "location_shop_fossoil_01_33"
            }
        }
    }

    DEMI.BinFactory = {
        name = "Cestino Fabbrica",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "trashcontainers_01_18",
                northSprite = "trashcontainers_01_19"
            }
        }
    }

    DEMI.BinSmall = {
        name = "Cestino Piccolo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "trashcontainers_01_20",
                northSprite = "trashcontainers_01_20"
            }
        }
    }

    DEMI.BinSteel = {
        name = "Cestino di Metallo",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "trashcontainers_01_16",
                northSprite = "trashcontainers_01_16"
            }
        }
    }

    DEMI.BinRecyclingBin = {
        name = "Cestino Riciclata",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "trashcontainers_01_17",
                northSprite = "trashcontainers_01_17"
            }
        }
    }

    DEMI.BinMall = {
        name = "Cestino Supermercato",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.WoodenContainerRecipe,
            options = {
                containerType = "bin",
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_mall_01_44",
                northSprite = "location_shop_mall_01_44"
            }
        }
    }

    ----- Dressers and Wardrobes -----
    DEMI.DresserBeige = {
        name = "Cassettiera Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_01_46",
                northSprite = "furniture_storage_01_47",
                eastSprite = "furniture_storage_01_44",
                southSprite = "furniture_storage_01_45"
            }
        }
    }

    DEMI.DresserBeigeNightstand = {
        name = "Comodino Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_01_49",
                northSprite = "furniture_storage_01_48",
                eastSprite = "furniture_storage_01_50",
                southSprite = "furniture_storage_01_51"
            }
        }
    }

    DEMI.DresserDarkBrown = {
        name = "Cassettiera Marrone Scuro",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_01_12",
                northSprite = "furniture_storage_01_13",
                eastSprite = "furniture_storage_01_14",
                southSprite = "furniture_storage_01_35"
            }
        }
    }

    DEMI.DresserGray = {
        name = "Cassettiera Grigia",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_01_32",
                northSprite = "furniture_storage_01_33",
                eastSprite = "furniture_storage_01_34",
                southSprite = "furniture_storage_01_35"
            }
        }
    }

    DEMI.DresserWhite = {
        name = "Cassettiera Bianca",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_storage_01_8",
                northSprite = "furniture_storage_01_9",
                eastSprite = "furniture_storage_01_10",
                southSprite = "furniture_storage_01_11"
            }
        }
    }

    ----- Tables -----
    DEMI.HighRedBrown = {
        name = "Alto Rosso Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_4",
                northSprite = "furniture_tables_high_01_5"
            }
        }
    }

    DEMI.RoundBrown = {
        name = "Tondo Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_6",
                northSprite = "furniture_tables_high_01_6"
            }
        }
    }

    DEMI.RoundBeige = {
        name = "Tondo Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_7",
                northSprite = "furniture_tables_high_01_7"
            }
        }
    }

    DEMI.HighBeige = {
        name = "Alto Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_13",
                northSprite = "furniture_tables_high_01_12"
            }
        }
    }

    DEMI.Square = {
        name = "Quadrato",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_15",
                northSprite = "furniture_tables_high_01_15"
            }
        }
    }

    DEMI.SquareGray = {
        name = "Quadrato Grigio",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_16",
                northSprite = "furniture_tables_high_01_16"
            }
        }
    }

    DEMI.HighBrown = {
        name = "Alto Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_21",
                northSprite = "furniture_tables_high_01_22"
            }
        }
    }

    DEMI.RedBrownEnd = {
        name = "Coda Rosso Marrone",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_low_01_2",
                northSprite = "furniture_tables_low_01_3"
            }
        }
    }

    DEMI.BeigeEnd = {
        name = "Coda Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_low_01_16",
                northSprite = "furniture_tables_low_01_17"
            }
        }
    }

    DEMI.WhiteEnd = {
        name = "Coda Bianco",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_low_01_21",
                northSprite = "furniture_tables_low_01_20"
            }
        }
    }

    DEMI.SquareBeige = {
        name = "Quadrato Beige",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SingleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pileocrepe_01_37",
                northSprite = "location_restaurant_pileocrepe_01_36"
            }
        }
    }

    DEMI.TableLargePileocrepe = {
        name = "Tavolo Grande Pile O' Crepe",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_pileocrepe_01_33",
                sprite2 = "location_restaurant_pileocrepe_01_32",
                northSprite = "location_restaurant_pileocrepe_01_34",
                northSprite2 = "location_restaurant_pileocrepe_01_35"
            }
        }
    }

    DEMI.TableLargeHigh1 = {
        name = "Grande Tavolo Alto 1",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_1",
                sprite2 = "furniture_tables_high_01_0",
                northSprite = "furniture_tables_high_01_2",
                northSprite2 = "furniture_tables_high_01_3"
            }
        }
    }

    DEMI.TableLargeHigh2 = {
        name = "Grande Tavolo Alto 2",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_9",
                sprite2 = "furniture_tables_high_01_8",
                northSprite = "furniture_tables_high_01_10",
                northSprite2 = "furniture_tables_high_01_11"
            }
        }
    }

    DEMI.TableLargeHigh3 = {
        name = "Grande Tavolo Alto 3",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_20",
                sprite2 = "furniture_tables_high_01_19",
                northSprite = "furniture_tables_high_01_17",
                northSprite2 = "furniture_tables_high_01_18"
            }
        }
    }

    DEMI.TableLargeHigh4 = {
        name = "Grande Tavolo Alto 4",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_27",
                sprite2 = "furniture_tables_high_01_26",
                northSprite = "furniture_tables_high_01_28",
                northSprite2 = "furniture_tables_high_01_29"
            }
        }
    }

    DEMI.TableLargeOfficeBrown = {
        name = "Grande Tavolo Marrone da Ufficio",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_35",
                sprite2 = "furniture_tables_high_01_34",
                northSprite = "furniture_tables_high_01_32",
                northSprite2 = "furniture_tables_high_01_33"
            }
        }
    }

    DEMI.TableLargeHigh5 = {
        name = "Grande Tavolo Alto 5",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_37",
                sprite2 = "furniture_tables_high_01_36",
                northSprite = "furniture_tables_high_01_38",
                northSprite2 = "furniture_tables_high_01_39"
            }
        }
    }

    DEMI.TableLargeHigh6 = {
        name = "Grande Tavolo Alto 6",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_41",
                sprite2 = "furniture_tables_high_01_40",
                northSprite = "furniture_tables_high_01_42",
                northSprite2 = "furniture_tables_high_01_43"
            }
        }
    }

    DEMI.TableLargeWorkWhite = {
        name = "Grande Tavolo Bianco da Lavoro",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_45",
                sprite2 = "furniture_tables_high_01_44",
                northSprite = "furniture_tables_high_01_46",
                northSprite2 = "furniture_tables_high_01_47"
            }
        }
    }

    DEMI.TableLargeFoldingBeige1 = {
        name = "Grande Tavolo Pieghevole Beige 1",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_51",
                sprite2 = "furniture_tables_high_01_50",
                northSprite = "furniture_tables_high_01_48",
                northSprite2 = "furniture_tables_high_01_49"
            }
        }
    }

    DEMI.TableLargeFoldingBeige2 = {
        name = "Grande Tavolo Pieghevole Beige 2",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_53",
                sprite2 = "furniture_tables_high_01_52",
                northSprite = "furniture_tables_high_01_54",
                northSprite2 = "furniture_tables_high_01_55"
            }
        }
    }

    DEMI.TableLargeFoldingBeige3 = {
        name = "Grande Tavolo Pieghevole Beige 3",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_high_01_57",
                sprite2 = "furniture_tables_high_01_56",
                northSprite = "furniture_tables_high_01_58",
                northSprite2 = "furniture_tables_high_01_59"
            }
        }
    }

    DEMI.TableLargeCoffee = {
        name = "Grande Tavolo da Caffe",
        data = {
            onBuild = DEMI.OnBuildDoubleTileFurniture,
            recipe = DEMI.DoubleTileWoodenTableRecipe,
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_low_01_15",
                sprite2 = "furniture_tables_low_01_14",
                northSprite = "furniture_tables_low_01_0",
                northSprite2 = "furniture_tables_low_01_1"
            }
        }
    }
    DEMI.TableCoffee = {
        name = "Tavolo da Caffe",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.DresserRecipe,
            options = {
                isContainer = true,
                renderFloorHelper = true
            },
            icon = "officedrawers",
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "furniture_tables_low_01_12",
                northSprite = "furniture_tables_low_01_13",
                eastSprite = "furniture_tables_low_01_12",
                southSprite = "furniture_tables_low_01_13"
            }
        }
    }

    ----- Lights -----
    DEMI.LightPole1 = {
        name = "Lampione",
        data = {
            onBuild = DEMI.OnBuildLightSource,
            recipe = DEMI.LightPoleRecipe,
            options = {
                offsetX = 0,
                offsetY = 0,
                fuel = "Base.Battery",
                baseItem = "Base.LightBulb",
                radius = 15,
                modData = {
                    IsLighting = true
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "lighting_outdoor_01_0"
            }
        }
    }

    DEMI.LightPole2 = {
        name = "Lampione",
        data = {
            onBuild = DEMI.OnBuildLightSource,
            recipe = DEMI.LightPoleRecipe,
            options = {
                offsetX = 0,
                offsetY = 0,
                fuel = "Base.Battery",
                baseItem = "Base.LightBulb",
                radius = 15,
                modData = {
                    IsLighting = true
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "lighting_outdoor_01_1"
            }
        }
    }

    DEMI.LightPole3 = {
        name = "Lampione",
        data = {
            onBuild = DEMI.OnBuildLightSource,
            recipe = DEMI.LightPoleRecipe,
            options = {
                offsetX = 0,
                offsetY = 0,
                fuel = "Base.Battery",
                baseItem = "Base.LightBulb",
                radius = 15,
                modData = {
                    IsLighting = true
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "lighting_outdoor_01_2"
            }
        }
    }

    DEMI.LampEmergency = {
        name = "Luce Emergenza",
        data = {
            onBuild = DEMI.OnBuildLightSource,
            recipe = DEMI.OutdoorLightRecipe,
            options = {
                offsetX = 5,
                offsetY = 5,
                radius = 20,
                fuel = "Base.Battery",
                baseItem = "Base.LightBulb",
                modData = {
                    IsLighting = true
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "lighting_outdoor_01_50",
                northSprite = "lighting_outdoor_01_51",
                eastSprite = "lighting_outdoor_01_49",
                southSprite = "lighting_outdoor_01_48"
            }
        }
    }

    DEMI.LightPoleUV = {
        name = "Lampione UV",
        data = {
            onBuild = DEMI.OnBuildLightSourceUV,
            recipe = DEMI.LightPoleUVRecipe,
            options = {
                offsetX = 0,
                offsetY = 0,
                fuel = "Demiurgo.BatteryUV",
                baseItem = "Demiurgo.LightBulbUV",
                radius = 10,
                modData = {
                    IsLighting = true,
                    UV = true
                }
            },
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_56",
                northSprite = "la_resistenza_market_58"
            }
        }
    }

    DEMI.OvenGreen = {
        name = "Forno Verde",
        data = {
            onBuild = DEMI.onBuildOven,
            recipe = DEMI.ElectricalRecipe,
            options = {
                containerType = "fireplace"
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "appliances_cooking_01_1",
                northSprite = "appliances_cooking_01_2"
            }
        }
    }

    DEMI.LRMMailbox = {
        name = "LRMMailbox",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,
            
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_19",
                sprite2 = "la_resistenza_market_18",
                northSprite = "la_resistenza_market_16",
                northSprite2 = "la_resistenza_market_17"
            }
        }
    }

    DEMI.LRMMarket = {
        name = "LRMMarket",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,

            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_3",
                sprite2 = "la_resistenza_market_2",
                northSprite = "la_resistenza_market_0",
                northSprite2 = "la_resistenza_market_1"
            }
        }
    }

    DEMI.LRMExpress = {
        name = "LRMExpress",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_7",
                sprite2 = "la_resistenza_market_6",
                northSprite = "la_resistenza_market_4",
                northSprite2 = "la_resistenza_market_5"
            }
        }
    }

    DEMI.LRMMarketMedical = {
        name = "Medical Market",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.LRMRecipe,
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_0"
            }
        }
    }

    DEMI.LRMMarketMoney = {
        name = "Money Market",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.LRMRecipe,
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_4"
            }
        }
    }

    DEMI.LRMMarketAmmo = {
        name = "Ammo Market",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.LRMRecipe,
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_8"
            }
        }
    }

    DEMI.LRMMarketSurvival = {
        name = "Survival Market",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,

            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_16",
                sprite2 = "la_resistenza_market_specifici_17",
                northSprite = "la_resistenza_market_specifici_16",
                northSprite2 = "la_resistenza_market_specifici_17"
            }
        }
    }

    DEMI.LRMMarketWeapon = {
        name = "Weapon Market",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,

            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_24",
                sprite2 = "la_resistenza_market_specifici_25",
                northSprite = "la_resistenza_market_specifici_24",
                northSprite2 = "la_resistenza_market_specifici_25"
            }
        }
    }

    DEMI.LRMMarketClothing = {
        name = "Clothing Market",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,

            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_33",
                sprite2 = "la_resistenza_market_specifici_34",
                northSprite = "la_resistenza_market_specifici_33",
                northSprite2 = "la_resistenza_market_specifici_34"
            }
        }
    }

    DEMI.LRMMarketBook = {
        name = "Book Market",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,

            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_40",
                sprite2 = "la_resistenza_market_specifici_41",
                northSprite = "la_resistenza_market_specifici_40",
                northSprite2 = "la_resistenza_market_specifici_41"
            }
        }
    }

    DEMI.LRMMarketFood = {
        name = "Food Market",
        data = {
            onBuild = DEMI.OnBuildLRMDoubleTileFurniture,
            recipe = DEMI.LRMRecipe,

            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_50",
                sprite2 = "la_resistenza_market_specifici_51",
                northSprite = "la_resistenza_market_specifici_50",
                northSprite2 = "la_resistenza_market_specifici_51"
            }
        }
    }

    DEMI.LRMMarketCar = {
        name = "Car Market",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.LRMRecipe,
            desc = "Tecnologie futuristiche offerte da Pynoshi srl",
            sprite = {
                sprite = "la_resistenza_market_specifici_56"
            }
        }
    }

    DEMI.SafelockSmall = {
        name = "Cassaforte Piccola",
        data = {
            onBuild = DEMI.OnBuildSimpleFurniture,
            recipe = DEMI.SafelockSmallRecipe,
            desc = "Cassaforte indistruttibile per tenere al sicuro i beni più preziosi",
            options = {
                isContainer = true,
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = false,
                isThumpable = false,
                isTableTop = true
            },
            sprite = {
                sprite = "la_resistenza_market_40",
                northSprite = "la_resistenza_market_41"
            }
        }
    }

    DEMI.SafelockMedium = {
        name = "Cassaforte Media",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.SafelockMediumRecipe,
            desc = "Cassaforte indistruttibile per tenere al sicuro i beni più preziosi",
            options = {
                isContainer = true,
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = false,
                isThumpable = false
            },
            sprite = {
                sprite = "la_resistenza_market_44",
                northSprite = "la_resistenza_market_45"
            }
        }
    }

    DEMI.SafelockLarge = {
        name = "Cassaforte Grande",
        data = {
            onBuild = DEMI.OnBuildWoodenContainer,
            recipe = DEMI.SafelockLargeRecipe,
            desc = "Cassaforte indistruttibile per tenere al sicuro i beni più preziosi",
            options = {
                isContainer = true,
                renderFloorHelper = true,
                canBeAlwaysPlaced = true,
                blockAllTheSquare = true,
                canBeLockedByPadlock = false,
                isThumpable = false,
                health = 99999999
            },
            sprite = {
                sprite = "la_resistenza_market_48",
                northSprite = "la_resistenza_market_49"
            }
        }
    }
end
