if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMI.InitStructureDefs()
    ----- Commercial Interiors -----
    DEMI.BankWall = {
        name = "Muro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                canBarricade = false,
                isThumpable = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_bank_01_0",
                northSprite = "location_business_bank_01_1"
            }
        }
    }
    DEMI.BankWindowFrame = {
        name = "Infissi",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                hoppable = true,
                isThumpable = true,
                canBarricade = true,
                modData = {
                    wallType = "windowsframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_bank_01_8",
                northSprite = "location_business_bank_01_9"
            }
        }
    }
    DEMI.BankDoorFrame = {
        name = "Telaio della Porta",
        data = {
            onBuild = DEMI.OnBuildWoodenDoorFrame,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                modData = {
                    wallType = "doorframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_bank_01_10",
                northSprite = "location_business_bank_01_11"
            }
        }
    }
    DEMI.PillarBank = {
        name = "Pilastro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenPillarRecipe,
            options = {
                canPassThrough = true,
                canBarricade = false,
                isCorner = true,
                modData = {
                    wallType = "pillar"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_business_bank_01_3"
            }
        }
    }
    DEMI.SchoolWall = {
        name = "Muro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                canBarricade = false,
                isThumpable = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_school_01_0",
                northSprite = "location_community_school_01_1"
            }
        }
    }
    DEMI.SchoolWindowFrame = {
        name = "Infissi",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                hoppable = true,
                isThumpable = true,
                canBarricade = true,
                modData = {
                    wallType = "windowsframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_school_01_8",
                northSprite = "location_community_school_01_9"
            }
        }
    }
    DEMI.SchoolDoorFrame = {
        name = "Telaio della Porta",
        data = {
            onBuild = DEMI.OnBuildWoodenDoorFrame,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                modData = {
                    wallType = "doorframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_school_01_10",
                northSprite = "location_community_school_01_11"
            }
        }
    }
    DEMI.DinerWall = {
        name = "Muro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                canBarricade = false,
                isThumpable = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_diner_01_0",
                northSprite = "location_restaurant_diner_01_1"
            }
        }
    }
    DEMI.DinerWindowFrame = {
        name = "Infissi",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                hoppable = true,
                isThumpable = true,
                canBarricade = true,
                modData = {
                    wallType = "windowsframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_diner_01_9",
                northSprite = "location_restaurant_diner_01_12"
            }
        }
    }
    DEMI.DinerDoorFrame = {
        name = "Telaio della Porta",
        data = {
            onBuild = DEMI.OnBuildWoodenDoorFrame,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                modData = {
                    wallType = "doorframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_diner_01_4",
                northSprite = "location_restaurant_diner_01_5"
            }
        }
    }
    DEMI.FossoilWall = {
        name = "Muro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                canBarricade = false,
                isThumpable = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_fossoil_01_6",
                northSprite = "location_shop_fossoil_01_5"
            }
        }
    }
    DEMI.FossoilWindowFrame = {
        name = "Infissi",
        data = {
            onBuild = DEMI.OnBuildWindowWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                hoppable = true,
                isThumpable = true,
                canBarricade = true,
                modData = {
                    wallType = "windowsframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_fossoil_01_2",
                northSprite = "location_shop_fossoil_01_0"
            }
        }
    }
    DEMI.FossoilDoorFrame = {
        name = "Telaio della Porta",
        data = {
            onBuild = DEMI.OnBuildWoodenDoorFrame,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                modData = {
                    wallType = "doorframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_fossoil_01_8",
                northSprite = "location_shop_fossoil_01_9"
            }
        }
    }
    DEMI.Gas2GoWall = {
        name = "Muro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                canBarricade = false,
                isThumpable = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_gas2go_01_0",
                northSprite = "location_shop_gas2go_01_1"
            }
        }
    }
    DEMI.Gas2GoWindowFrame = {
        name = "Infissi",
        data = {
            onBuild = DEMI.OnBuildWindowWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                hoppable = true,
                isThumpable = true,
                canBarricade = true,
                modData = {
                    wallType = "windowsframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_gas2go_01_8",
                northSprite = "location_shop_gas2go_01_9"
            }
        }
    }
    DEMI.Gas2GoDoorFrame = {
        name = "Telaio della Porta",
        data = {
            onBuild = DEMI.OnBuildWoodenDoorFrame,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                modData = {
                    wallType = "doorframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_gas2go_01_10",
                northSprite = "location_shop_gas2go_01_11"
            }
        }
    }
    DEMI.CommercialGarageWall = {
        name = "Muro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                canBarricade = false,
                isThumpable = true
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_garage_02_16",
                northSprite = "walls_garage_02_17"
            }
        }
    }
    DEMI.CommercialGarageWindowFrame = {
        name = "Infissi",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                hoppable = false,
                isThumpable = true,
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_garage_02_24",
                northSprite = "walls_garage_02_25"
            }
        }
    }
    DEMI.CommercialGarageDoorFrame = {
        name = "Telaio della Porta",
        data = {
            onBuild = DEMI.OnBuildWoodenDoorFrame,
            recipe = DEMI.WoodenWallRecipe,
            options = {
                modData = {
                    wallType = "doorframe"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_garage_02_26",
                northSprite = "walls_garage_02_27"
            }
        }
    }
    DEMI.SecurityGratingWall = {
        name = "Grata di Sicurezza",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.MetalBarFenceRecipe,
            options = {
                canBarricade = false,
                isThumpable = false
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_mall_01_18",
                northSprite = "location_shop_mall_01_19"
            }
        }
    }

    DEMI.PillarCommercialGarage = {
        name = "Pilastro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenPillarRecipe,
            options = {
                canPassThrough = true,
                canBarricade = false,
                isCorner = true,
                modData = {
                    wallType = "pillar"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "walls_garage_02_19"
            }
        }
    }

    DEMI.PillarSchool = {
        name = "Pilastro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenPillarRecipe,
            options = {
                canPassThrough = true,
                canBarricade = false,
                isCorner = true,
                modData = {
                    wallType = "pillar"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_community_school_01_3"
            }
        }
    }

    DEMI.PillarDiner = {
        name = "Pilastro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenPillarRecipe,
            options = {
                canPassThrough = true,
                canBarricade = false,
                isCorner = true,
                modData = {
                    wallType = "pillar"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_restaurant_diner_01_3"
            }
        }
    }

    DEMI.PillarFossoil = {
        name = "Pilastro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenPillarRecipe,
            options = {
                canPassThrough = true,
                canBarricade = false,
                isCorner = true,
                modData = {
                    wallType = "pillar"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_fossoil_01_7"
            }
        }
    }

    DEMI.PillarGas2Go = {
        name = "Pilastro",
        data = {
            onBuild = DEMI.OnBuildWoodenWall,
            recipe = DEMI.WoodenPillarRecipe,
            options = {
                canPassThrough = true,
                canBarricade = false,
                isCorner = true,
                modData = {
                    wallType = "pillar"
                }
            },
            desc = "Non disassemblabile, non rimborsabile",
            sprite = {
                sprite = "location_shop_gas2go_01_3"
            }
        }
    }

----- Residential Interior -----
DEMI.WallWhiteBathroom = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_0",
            northSprite = "walls_interior_bathroom_01_1"
        }
    }
}
DEMI.WallTanBathroom = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_4",
            northSprite = "walls_interior_bathroom_01_5"
        }
    }
}
DEMI.WallGrayBathroom = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_16",
            northSprite = "walls_interior_bathroom_01_17"
        }
    }
}
DEMI.WallGrayStripes = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_0",
            northSprite = "walls_interior_house_01_1"
        }
    }
}
DEMI.WallTanStripes = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_36",
            northSprite = "walls_interior_house_01_37"
        }
    }
}
DEMI.WallBlueStripes = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_48",
            northSprite = "walls_interior_house_03_49"
        }
    }
}
DEMI.WallGrayDiamonds = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_16",
            northSprite = "walls_interior_house_03_17"
        }
    }
}
DEMI.WallGrayFlowers = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_52",
            northSprite = "walls_interior_house_03_53"
        }
    }
}
DEMI.WallPinkFlowers = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_52",
            northSprite = "walls_interior_house_04_53"
        }
    }
}
DEMI.DoorFrameWhiteBathroom = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_10",
            northSprite = "walls_interior_bathroom_01_11"
        }
    }
}
DEMI.DoorFrameTanBathroom = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_14",
            northSprite = "walls_interior_bathroom_01_15"
        }
    }
}
DEMI.DoorFrameGrayBathroom = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_26",
            northSprite = "walls_interior_bathroom_01_27"
        }
    }
}
DEMI.DoorFrameGrayStripes = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_10",
            northSprite = "walls_interior_house_01_11"
        }
    }
}
DEMI.DoorFrameTanStripes = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_46",
            northSprite = "walls_interior_house_01_47"
        }
    }
}
DEMI.DoorFrameBlueStripes = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_58",
            northSprite = "walls_interior_house_03_59"
        }
    }
}
DEMI.DoorFrameGrayDiamonds = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_26",
            northSprite = "walls_interior_house_03_27"
        }
    }
}
DEMI.DoorFrameGrayFlowers = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_62",
            northSprite = "walls_interior_house_03_63"
        }
    }
}
DEMI.DoorFramePinkFlowers = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_62",
            northSprite = "walls_interior_house_04_63"
        }
    }
}
DEMI.WindowFrameWhiteBathroom = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_8",
            northSprite = "walls_interior_bathroom_01_9"
        }
    }
}
DEMI.WindowFrameTanBathroom = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_12",
            northSprite = "walls_interior_bathroom_01_13"
        }
    }
}
DEMI.WindowFrameGrayBathroom = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_24",
            northSprite = "walls_interior_bathroom_01_25"
        }
    }
}
DEMI.WindowFrameGrayStripes = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_8",
            northSprite = "walls_interior_house_01_9"
        }
    }
}
DEMI.WindowFrameTanStripes = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_56",
            northSprite = "walls_interior_house_03_57"
        }
    }
}
DEMI.WindowFrameBlueStripes = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_44",
            northSprite = "walls_interior_house_01_45"
        }
    }
}
DEMI.WindowFrameGrayDiamonds = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_24",
            northSprite = "walls_interior_house_03_25"
        }
    }
}
DEMI.WindowFrameGrayFlowers = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_24",
            northSprite = "walls_interior_house_03_25"
        }
    }
}
DEMI.WindowFramePinkFlowers = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = true,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_60",
            northSprite = "walls_interior_house_04_61"
        }
    }
}
DEMI.PillarWhiteBathroom = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_3"
        }
    }
}
DEMI.PillarTanBathroom = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_7"
        }
    }
}
DEMI.PillarGrayBathroom = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_bathroom_01_19"
        }
    }
}
DEMI.PillarGrayStripes = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_3"
        }
    }
}
DEMI.PillarTanStripes = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_39"
        }
    }
}
DEMI.PillarBlueStripes = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_51"
        }
    }
}
DEMI.PillarGrayDiamonds = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_19"
        }
    }
}
DEMI.PillarGrayFlowers = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_55"
        }
    }
}
DEMI.PillarPinkFlowers = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_55"
        }
    }
}

----- Painted Interior -----

DEMI.WallStrawberry = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_4",
            northSprite = "walls_interior_house_01_5"
        }
    }
}

DEMI.WallBlueGray = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_16",
            northSprite = "walls_interior_house_01_17"
        }
    }
}

DEMI.WallLeafGreen = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_20",
            northSprite = "walls_interior_house_01_21"
        }
    }
}

DEMI.WallDeepRed = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_32",
            northSprite = "walls_interior_house_01_33"
        }
    }
}

DEMI.WallGreen = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_48",
            northSprite = "walls_interior_house_01_49"
        }
    }
}

DEMI.WallTan = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_52",
            northSprite = "walls_interior_house_01_53"
        }
    }
}

DEMI.WallMintGreen = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_0",
            northSprite = "walls_interior_house_02_1"
        }
    }
}

DEMI.WallLightBlue = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_4",
            northSprite = "walls_interior_house_02_5"
        }
    }
}

DEMI.WallOrange = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_16",
            northSprite = "walls_interior_house_02_17"
        }
    }
}

DEMI.WallBrown = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_20",
            northSprite = "walls_interior_house_02_21"
        }
    }
}

DEMI.WallBlue = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_32",
            northSprite = "walls_interior_house_02_33"
        }
    }
}

DEMI.WallOffTan = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_36",
            northSprite = "walls_interior_house_02_37"
        }
    }
}

DEMI.WallCream = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_48",
            northSprite = "walls_interior_house_02_49"
        }
    }
}

DEMI.WallPaleBlue = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_52",
            northSprite = "walls_interior_house_02_53"
        }
    }
}

DEMI.WallPurple = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_4",
            northSprite = "walls_interior_house_03_5"
        }
    }
}

DEMI.WallWhite = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_20",
            northSprite = "walls_interior_house_03_20"
        }
    }
}

DEMI.WallBlack = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_36",
            northSprite = "walls_interior_house_03_37"
        }
    }
}

DEMI.WallLightPurple = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_0",
            northSprite = "walls_interior_house_04_1"
        }
    }
}

DEMI.WallPink = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_4",
            northSprite = "walls_interior_house_04_5"
        }
    }
}

DEMI.WallCerulean = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_36",
            northSprite = "walls_interior_house_04_37"
        }
    }
}

DEMI.DoorFrameStrawberry = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_14",
            northSprite = "walls_interior_house_01_15"
        }
    }
}

DEMI.DoorFrameBlueGray = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_26",
            northSprite = "walls_interior_house_01_27"
        }
    }
}

DEMI.DoorFrameLeafGreen = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_30",
            northSprite = "walls_interior_house_01_31"
        }
    }
}

DEMI.DoorFrameDeepRed = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_42",
            northSprite = "walls_interior_house_01_43"
        }
    }
}

DEMI.DoorFrameGreen = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_58",
            northSprite = "walls_interior_house_01_59"
        }
    }
}

DEMI.DoorFrameTan = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_62",
            northSprite = "walls_interior_house_01_63"
        }
    }
}

DEMI.DoorFrameMintGreen = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_10",
            northSprite = "walls_interior_house_02_11"
        }
    }
}

DEMI.DoorFrameLightBlue = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_14",
            northSprite = "walls_interior_house_02_15"
        }
    }
}

DEMI.DoorFrameOrange = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_18",
            northSprite = "walls_interior_house_02_19"
        }
    }
}

DEMI.DoorFrameBrown = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_30",
            northSprite = "walls_interior_house_02_31"
        }
    }
}

DEMI.DoorFrameBlue = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_42",
            northSprite = "walls_interior_house_02_43"
        }
    }
}

DEMI.DoorFrameOffTan = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_46",
            northSprite = "walls_interior_house_02_47"
        }
    }
}

DEMI.DoorFrameCream = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_58",
            northSprite = "walls_interior_house_02_59"
        }
    }
}

DEMI.DoorFramePaleBlue = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_62",
            northSprite = "walls_interior_house_02_63"
        }
    }
}

DEMI.DoorFramePurple = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_14",
            northSprite = "walls_interior_house_03_15"
        }
    }
}

DEMI.DoorFrameWhite = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_30",
            northSprite = "walls_interior_house_03_31"
        }
    }
}

DEMI.DoorFrameBlack = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_46",
            northSprite = "walls_interior_house_03_47"
        }
    }
}

DEMI.DoorFrameLightPurple = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_10",
            northSprite = "walls_interior_house_04_11"
        }
    }
}

DEMI.DoorFramePink = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_14",
            northSprite = "walls_interior_house_04_15"
        }
    }
}

DEMI.DoorFrameCerulean = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_46",
            northSprite = "walls_interior_house_04_47"
        }
    }
}

DEMI.WindowFrameStrawberry = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_12",
            northSprite = "walls_interior_house_01_13"
        }
    }
}

DEMI.WindowFrameBlueGray = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_24",
            northSprite = "walls_interior_house_01_24"
        }
    }
}

DEMI.WindowFrameLeafGreen = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_28",
            northSprite = "walls_interior_house_01_29"
        }
    }
}

DEMI.WindowFrameDeepRed = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_40",
            northSprite = "walls_interior_house_01_41"
        }
    }
}

DEMI.WindowFrameGreen = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_56",
            northSprite = "walls_interior_house_01_57"
        }
    }
}

DEMI.WindowFrameTan = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_60",
            northSprite = "walls_interior_house_01_61"
        }
    }
}

DEMI.WindowFrameMintGreen = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_8",
            northSprite = "walls_interior_house_02_9"
        }
    }
}

DEMI.WindowFrameLightBlue = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_12",
            northSprite = "walls_interior_house_02_13"
        }
    }
}

DEMI.WindowFrameOrange = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_24",
            northSprite = "walls_interior_house_02_25"
        }
    }
}

DEMI.WindowFrameBrown = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_28",
            northSprite = "walls_interior_house_02_29"
        }
    }
}

DEMI.WindowFrameBlue = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_40",
            northSprite = "walls_interior_house_02_41"
        }
    }
}

DEMI.WindowFrameOffTan = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_44",
            northSprite = "walls_interior_house_02_45"
        }
    }
}

DEMI.WindowFrameCream = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_56",
            northSprite = "walls_interior_house_02_57"
        }
    }
}

DEMI.WindowFramePaleBlue = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_60",
            northSprite = "walls_interior_house_02_61"
        }
    }
}

DEMI.WindowFramePurple = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_12",
            northSprite = "walls_interior_house_03_13"
        }
    }
}

DEMI.WindowFrameWhite = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_28",
            northSprite = "walls_interior_house_03_29"
        }
    }
}

DEMI.WindowFrameBlack = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_44",
            northSprite = "walls_interior_house_03_45"
        }
    }
}

DEMI.WindowFrameLightPurple = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_8",
            northSprite = "walls_interior_house_04_9"
        }
    }
}

DEMI.WindowFramePink = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_12",
            northSprite = "walls_interior_house_04_13"
        }
    }
}

DEMI.WindowFrameCerulean = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_44",
            northSprite = "walls_interior_house_04_45"
        }
    }
}

DEMI.PillarStrawberry = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_7"
        }
    }
}

DEMI.PillarBlueGray = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_19"
        }
    }
}

DEMI.PillarLeafGreen = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_23"
        }
    }
}

DEMI.PillarDeepRed = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_35"
        }
    }
}

DEMI.PillarGreen = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_51"
        }
    }
}

DEMI.PillarTan = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_01_55"
        }
    }
}

DEMI.PillarMintGreen = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_3"
        }
    }
}

DEMI.PillarLightBlue = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_7"
        }
    }
}

DEMI.PillarOrange = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_19"
        }
    }
}

DEMI.PillarBrown = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_23"
        }
    }
}

DEMI.PillarBlue = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_35"
        }
    }
}

DEMI.PillarOffTan = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_39"
        }
    }
}

DEMI.PillarCream = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_51"
        }
    }
}

DEMI.PillarPaleBlue = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_02_55"
        }
    }
}

DEMI.PillarPurple = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_7"
        }
    }
}

DEMI.PillarWhite = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_23"
        }
    }
}

DEMI.PillarBlack = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_03_39"
        }
    }
}

DEMI.PillarLightPurple = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_3"
        }
    }
}

DEMI.PillarPink = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_7"
        }
    }
}

DEMI.PillarCerulean = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_interior_house_04_39"
        }
    }
}

----- di Mattoni -----
DEMI.WallBrickBlue = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_0",
            northSprite = "walls_exterior_house_01_1"
        }
    }
}
DEMI.WallBrickRed = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_4",
            northSprite = "walls_exterior_house_01_5"
        }
    }
}

DEMI.WallBrickTan = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_16",
            northSprite = "walls_exterior_house_01_17"
        }
    }
}

DEMI.WallBrickOld = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_52",
            northSprite = "walls_exterior_house_01_53"
        }
    }
}

DEMI.WallBrickGray = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_16",
            northSprite = "walls_exterior_house_02_17"
        }
    }
}

DEMI.WallBrickBeige = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_36",
            northSprite = "walls_exterior_house_02_37"
        }
    }
}

DEMI.WallBrickLight = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_48",
            northSprite = "walls_exterior_house_02_49"
        }
    }
}

DEMI.WallBrickGreen = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pie_01_0",
            northSprite = "location_restaurant_pie_01_1"
        }
    }
}

DEMI.DoorFrameBrickBlue = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_10",
            northSprite = "walls_exterior_house_01_11"
        }
    }
}

DEMI.DoorFrameBrickRed = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_14",
            northSprite = "walls_exterior_house_01_15"
        }
    }
}

DEMI.DoorFrameBrickTan = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_26",
            northSprite = "walls_exterior_house_01_27"
        }
    }
}

DEMI.DoorFrameBrickOld = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_62",
            northSprite = "walls_exterior_house_01_63"
        }
    }
}

DEMI.DoorFrameBrickGray = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_26",
            northSprite = "walls_exterior_house_02_27"
        }
    }
}

DEMI.DoorFrameBrickBeige = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_46",
            northSprite = "walls_exterior_house_02_47"
        }
    }
}

DEMI.DoorFrameBrickLight = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_58",
            northSprite = "walls_exterior_house_02_59"
        }
    }
}

DEMI.DoorFrameBrickGreen = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pie_01_10",
            northSprite = "location_restaurant_pie_01_11"
        }
    }
}

DEMI.WindowFrameBrickBlue = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_8",
            northSprite = "walls_exterior_house_01_9"
        }
    }
}

DEMI.WindowFrameBrickRed = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_12",
            northSprite = "walls_exterior_house_01_13"
        }
    }
}

DEMI.WindowFrameBrickTan = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_24",
            northSprite = "walls_exterior_house_01_25"
        }
    }
}

DEMI.WindowFrameBrickOld = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_60",
            northSprite = "walls_exterior_house_01_61"
        }
    }
}

DEMI.WindowFrameBrickGray = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_24",
            northSprite = "walls_exterior_house_02_25"
        }
    }
}

DEMI.WindowFrameBrickBeige = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_44",
            northSprite = "walls_exterior_house_02_45"
        }
    }
}

DEMI.WindowFrameBrickLight = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_56",
            northSprite = "walls_exterior_house_02_57"
        }
    }
}

DEMI.WindowFrameBrickGreen = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pie_01_8",
            northSprite = "location_restaurant_pie_01_9"
        }
    }
}

DEMI.PillarBrickBlue = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_3"
        }
    }
}

DEMI.PillarBrickRed = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_7"
        }
    }
}

DEMI.PillarBrickTan = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_19"
        }
    }
}

DEMI.PillarBrickOld = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_55"
        }
    }
}

DEMI.PillarBrickGray = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_19"
        }
    }
}

DEMI.PillarBrickBeige = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_39"
        }
    }
}

DEMI.PillarBrickLight = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_51"
        }
    }
}

DEMI.PillarBrickGreen = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pie_01_3"
        }
    }
}
----- di Pietra -----


DEMI.WallStoneGray = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_0",
            northSprite = "walls_exterior_house_02_1"
        }
    }
}

DEMI.WallStoneTan = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_4",
            northSprite = "walls_exterior_house_02_5"
        }
    }
}

DEMI.WallStoneRed = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_64",
            northSprite = "walls_exterior_house_02_65"
        }
    }
}

DEMI.WallStoneGreen = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_52",
            northSprite = "walls_exterior_house_02_53"
        }
    }
}

DEMI.WallStoneBrown = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_96",
            northSprite = "walls_exterior_house_02_97"
        }
    }
}

DEMI.DoorFrameStoneGray = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_10",
            northSprite = "walls_exterior_house_02_11"
        }
    }
}

DEMI.DoorFrameStoneTan = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_14",
            northSprite = "walls_exterior_house_02_15"
        }
    }
}

DEMI.DoorFrameStoneRed = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_74",
            northSprite = "walls_exterior_house_02_75"
        }
    }
}

DEMI.DoorFrameStoneGreen = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_62",
            northSprite = "walls_exterior_house_02_63"
        }
    }
}

DEMI.DoorFrameStoneBrown = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.StoneDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_106",
            northSprite = "walls_exterior_house_02_107"
        }
    }
}

DEMI.WindowFrameStoneGray = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_8",
            northSprite = "walls_exterior_house_02_9"
        }
    }
}

DEMI.WindowFrameStoneTan = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_12",
            northSprite = "walls_exterior_house_02_13"
        }
    }
}

DEMI.WindowFrameStoneRed = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_72",
            northSprite = "walls_exterior_house_02_73"
        }
    }
}

DEMI.WindowFrameStoneGreen = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_60",
            northSprite = "walls_exterior_house_02_61"
        }
    }
}

DEMI.WindowFrameStoneBrown = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StoneWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_104",
            northSprite = "walls_exterior_house_02_105"
        }
    }
}

DEMI.PillarStoneGray = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_3"
        }
    }
}

DEMI.PillarStoneTan = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_7"
        }
    }
}

DEMI.PillarStoneRed = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_67"
        }
    }
}

DEMI.PillarStoneGreen = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_55"
        }
    }
}

DEMI.PillarStoneBrown = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.StonePillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_99"
        }
    }
}

----- di Cemento -----
DEMI.WallBlockTan = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_16",
            northSprite = "walls_commercial_03_17"
        }
    }
}
DEMI.WallBlockDarkGray = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_32",
            northSprite = "walls_commercial_03_33"
        }
    }
}
DEMI.WallBlockLightGray = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_48",
            northSprite = "walls_commercial_03_49"
        }
    }
}
DEMI.WallBlockWhite = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_48",
            northSprite = "walls_commercial_01_49"
        }
    }
}
DEMI.WallBlockBrown = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_0",
            northSprite = "walls_commercial_03_1"
        }
    }
}
DEMI.DoorFrameBlockTan = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_26",
            northSprite = "walls_commercial_03_27"
        }
    }
}
DEMI.DoorFrameBlockDarkGray = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_42",
            northSprite = "walls_commercial_03_43"
        }
    }
}
DEMI.DoorFrameBlockLightGray = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_58",
            northSprite = "walls_commercial_03_59"
        }
    }
}
DEMI.DoorFrameBlockWhite = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_58",
            northSprite = "walls_commercial_01_59"
        }
    }
}
DEMI.DoorFrameBlockBrown = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_10",
            northSprite = "walls_commercial_03_11"
        }
    }
}
DEMI.WindowFrameBlockTan = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_24",
            northSprite = "walls_commercial_03_25"
        }
    }
}
DEMI.WindowFrameBlockDarkGray = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_40",
            northSprite = "walls_commercial_03_41"
        }
    }
}
DEMI.WindowFrameBlockLightGray = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_56",
            northSprite = "walls_commercial_03_57"
        }
    }
}
DEMI.WindowFrameBlockWhite = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_56",
            northSprite = "walls_commercial_01_57"
        }
    }
}
DEMI.WindowFrameBlockBrown = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_8",
            northSprite = "walls_commercial_03_9"
        }
    }
}
DEMI.PillarBlockTan = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_19"
        }
    }
}
DEMI.PillarBlockDarkGray = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_35"
        }
    }
}
DEMI.PillarBlockLightGray = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_51"
        }
    }
}
DEMI.PillarBlockWhite = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_51"
        }
    }
}
DEMI.PillarBlockBrown = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_3"
        }
    }
}

----- di Legno Walls -----

DEMI.WallWoodenWhiteClapboard = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_32",
            northSprite = "walls_exterior_house_01_33"
        }
    }
}

DEMI.WallWoodenBrownClapboard = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_48",
            northSprite = "walls_exterior_house_01_49"
        }
    }
}

DEMI.WallWoodenBlueClapboard = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_20",
            northSprite = "walls_exterior_house_02_21"
        }
    }
}

DEMI.WallWoodenTanClapboard = {
    name = "Muro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_32",
            northSprite = "walls_exterior_house_02_33"
        }
    }
}

DEMI.WallWoodenPinkClapboard = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_68",
            northSprite = "walls_exterior_house_02_69"
        }
    }
}

DEMI.WallWoodenGreenClapboard = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_80",
            northSprite = "walls_exterior_house_02_81"
        }
    }
}

DEMI.WallWoodenLightBrownPanel = {
    name = "Pannello ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_0",
            northSprite = "location_restaurant_pileocrepe_01_1",
            corner = "location_restaurant_pileocrepe_01_3"
        }
    }
}

DEMI.WallWoodenBrownPanel = {
    name = "Pannello",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_shop_bargNclothes_01_24",
            northSprite = "location_shop_bargNclothes_01_25",
            corner = "location_shop_bargNclothes_01_27"
        }
    }
}

DEMI.WallWoodenGrayPanel = {
    name = "Pannello",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_28",
            northSprite = "walls_exterior_wooden_01_29",
            corner = "walls_exterior_wooden_01_31"
        }
    }
}

DEMI.WallWoodenWhitePanel = {
    name = "Pannello ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_02_0",
            northSprite = "walls_exterior_wooden_02_1",
            corner = "walls_exterior_wooden_02_3"
        }
    }
}

DEMI.WallWoodenRedBarn = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            isThumpable = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_0",
            northSprite = "walls_exterior_wooden_01_1",
            corner = "walls_exterior_wooden_01_3"
        }
    }
}

DEMI.DoorFrameWoodenWhiteClapboard = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_42",
            northSprite = "walls_exterior_house_01_43"
        }
    }
}

DEMI.DoorFrameWoodenBrownClapboard = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_58",
            northSprite = "walls_exterior_house_01_59"
        }
    }
}

DEMI.DoorFrameWoodenBlueClapboard = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_30",
            northSprite = "walls_exterior_house_02_31"
        }
    }
}

DEMI.DoorFrameWoodenTanClapboard = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_42",
            northSprite = "walls_exterior_house_02_43"
        }
    }
}

DEMI.DoorFrameWoodenPinkClapboard = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_78",
            northSprite = "walls_exterior_house_02_79"
        }
    }
}

DEMI.DoorFrameWoodenGreenClapboard = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_90",
            northSprite = "walls_exterior_house_02_91"
        }
    }
}

DEMI.DoorFrameWoodenLightBrownPanel = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_10",
            northSprite = "location_restaurant_pileocrepe_01_11"
        }
    }
}

DEMI.DoorFrameWoodenBrownPanel = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_shop_bargNclothes_01_34",
            northSprite = "location_shop_bargNclothes_01_35"
        }
    }
}

DEMI.DoorFrameWoodenGrayPanel = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_38",
            northSprite = "walls_exterior_wooden_01_39"
        }
    }
}

DEMI.DoorFrameWoodenWhitePanel = {
    name = "Telaio della Porta ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_02_10",
            northSprite = "walls_exterior_wooden_02_11"
        }
    }
}

DEMI.DoorFrameWoodenRedBarn = {
    name = "Telaio della Porta",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_10",
            northSprite = "walls_exterior_wooden_01_11"
        }
    }
}

DEMI.WindowFrameWoodenWhiteClapboard = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_40",
            northSprite = "walls_exterior_house_01_41"
        }
    }
}

DEMI.WindowFrameWoodenBrownClapboard = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_56",
            northSprite = "walls_exterior_house_01_57"
        }
    }
}

DEMI.WindowFrameWoodenBlueClapboard = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_28",
            northSprite = "walls_exterior_house_02_29"
        }
    }
}

DEMI.WindowFrameWoodenTanClapboard = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_40",
            northSprite = "walls_exterior_house_02_41"
        }
    }
}

DEMI.WindowFrameWoodenPinkClapboard = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_76",
            northSprite = "walls_exterior_house_02_77"
        }
    }
}

DEMI.WindowFrameWoodenGreenClapboard = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_88",
            northSprite = "walls_exterior_house_02_89"
        }
    }
}

DEMI.WindowFrameWoodenLightBrownPanel = {
    name = "Infissi ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_8",
            northSprite = "location_restaurant_pileocrepe_01_9"
        }
    }
}

DEMI.WindowFrameWoodenBrownPanel = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_shop_bargNclothes_01_32",
            northSprite = "location_shop_bargNclothes_01_33"
        }
    }
}

DEMI.WindowFrameWoodenGrayPanel = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_36",
            northSprite = "walls_exterior_wooden_01_37"
        }
    }
}

DEMI.WindowFrameWoodenWhitePanel = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_02_8",
            northSprite = "walls_exterior_wooden_02_9"
        }
    }
}

DEMI.WindowFrameWoodenRedBarn = {
    name = "Infissi",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false,
            canBarricade = true,
            modData = {
                wallType = "windowsframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_8",
            northSprite = "walls_exterior_wooden_01_9"
        }
    }
}

DEMI.PillarWoodenWhiteClapboard = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_35"
        }
    }
}

DEMI.PillarWoodenBrownClapboard = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_51"
        }
    }
}

DEMI.PillarWoodenBlueClapboard = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_23"
        }
    }
}

DEMI.PillarWoodenTanClapboard = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_35"
        }
    }
}

DEMI.PillarWoodenPinkClapboard = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_71"
        }
    }
}

DEMI.PillarWoodenGreenClapboard = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_02_83"
        }
    }
}

DEMI.PillarWoodenLightBrownPanel = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_3"
        }
    }
}

DEMI.PillarWoodenBrownPanel = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_shop_bargNclothes_01_27"
        }
    }
}

DEMI.PillarWoodenGrayPanel = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_31"
        }
    }
}

DEMI.PillarWoodenWhitePanel = {
    name = "Pilastro ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_02_3"
        }
    }
}

DEMI.PillarWoodenRedBarn = {
    name = "Pilastro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenPillarRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_3"
        }
    }
}
----- Glass Walls -----
DEMI.WallGlass = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_96",
            northSprite = "walls_commercial_01_97",
            corner = "walls_commercial_01_99"
        }
    }
}

DEMI.WallGlassLightGray1 = {
    name = "Muro",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_02_0",
            northSprite = "walls_commercial_02_1",
            corner = "walls_commercial_02_3"
        }
    }
}

DEMI.WallGlassDarkGray1 = {
    name = "Muro 1",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_16",
            northSprite = "walls_commercial_01_17",
            corner = "walls_commercial_01_19"
        }
    }
}

DEMI.WallGlassDarkGray2 = {
    name = "Muro 2",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_32",
            northSprite = "walls_commercial_01_33",
            corner = "walls_commercial_01_35"
        }
    }
}

DEMI.WallGlassDarkGray3 = {
    name = "Muro 3",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_40",
            northSprite = "walls_commercial_01_41",
            corner = "walls_commercial_01_35"
        }
    }
}

DEMI.WallGlassBrown1 = {
    name = "Muro 1",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_0",
            northSprite = "walls_commercial_01_1",
            corner = "walls_commercial_01_2"
        }
    }
}

DEMI.WallGlassBrown2 = {
    name = "Muro 2",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_64",
            northSprite = "walls_commercial_01_65",
            corner = "walls_commercial_01_67"
        }
    }
}

DEMI.WallGlassBrown3 = {
    name = "Muro 3",
    data = {
        onBuild = DEMI.OnBuildWindowWall,
        recipe = DEMI.WindowWallRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_80",
            northSprite = "walls_commercial_01_81",
            corner = "walls_commercial_01_83"
        }
    }
}

----- Floors -----
DEMI.FloorCarpetBlue = {
    name = "Blu ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_0",
            northSprite = "floors_interior_carpet_01_0"
        }
    }
}

DEMI.FloorCarpetPurple = {
    name = "Viola ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_1",
            northSprite = "floors_interior_carpet_01_1"
        }
    }
}

DEMI.FloorCarpetDarkGray = {
    name = "Scuro ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_2",
            northSprite = "floors_interior_carpet_01_2"
        }
    }
}

DEMI.FloorCarpetBrown = {
    name = "Marrone",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_3",
            northSprite = "floors_interior_carpet_01_3"
        }
    }
}

DEMI.FloorCarpetRed = {
    name = "Rosso ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_4",
            northSprite = "floors_interior_carpet_01_4"
        }
    }
}

DEMI.FloorCarpetGreen = {
    name = "Verde ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_5",
            northSprite = "floors_interior_carpet_01_5"
        }
    }
}

DEMI.FloorCarpetViolet = {
    name = "Violetto ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_6",
            northSprite = "floors_interior_carpet_01_6"
        }
    }
}

DEMI.FloorCarpetGrayCurly = {
    name = "Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_7",
            northSprite = "floors_interior_carpet_01_7"
        }
    }
}

DEMI.FloorCarpetBordeaux = {
    name = "Bordeaux ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_8",
            northSprite = "floors_interior_carpet_01_8"
        }
    }
}

DEMI.FloorCarpetRed = {
    name = "Rosso ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_9",
            northSprite = "floors_interior_carpet_01_9"
        }
    }
}

DEMI.FloorCarpetYellow = {
    name = "Giallo ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_10",
            northSprite = "floors_interior_carpet_01_10"
        }
    }
}

DEMI.FloorCarpetWhite = {
    name = "Bianco ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_11",
            northSprite = "floors_interior_carpet_01_11"
        }
    }
}

DEMI.FloorCarpetBeige = {
    name = "Beige ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_12",
            northSprite = "floors_interior_carpet_01_12"
        }
    }
}

DEMI.FloorCarpetBlack = {
    name = "Nero ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_13",
            northSprite = "floors_interior_carpet_01_13"
        }
    }
}

DEMI.FloorCarpetGray = {
    name = "Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_14",
            northSprite = "floors_interior_carpet_01_14"
        }
    }
}

DEMI.FloorCarpetLightGreen = {
    name = "Chiaro Verde ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_carpet_01_15",
            northSprite = "floors_interior_carpet_01_15"
        }
    }
}

DEMI.FloorHardwood = {
    name = "Legno Massiccio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_40",
            northSprite = "floors_interior_tilesandwood_01_40"
        }
    }
}

DEMI.FloorOakwood = {
    name = "Quercia",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_41",
            northSprite = "floors_interior_tilesandwood_01_41"
        }
    }
}

DEMI.FloorBirchwood = {
    name = "Betulla",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_42",
            northSprite = "floors_interior_tilesandwood_01_42"
        }
    }
}

DEMI.FloorCinnamonWest = {
    name = "Rosso Cannella Ovest",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_43",
            northSprite = "floors_interior_tilesandwood_01_43"
        }
    }
}

DEMI.FloorCinnamonNorth = {
    name = "Rosso Cannella Nord",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_44",
            northSprite = "floors_interior_tilesandwood_01_44"
        }
    }
}

DEMI.FloorFinewood = {
    name = "Legno Pregiato",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_45",
            northSprite = "floors_interior_tilesandwood_01_45"
        }
    }
}

DEMI.FloorChestnutWest = {
    name = "Castagno Ovest",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_46",
            northSprite = "floors_interior_tilesandwood_01_46"
        }
    }
}

DEMI.FloorChestnutNorth = {
    name = "Castagno Nord",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_47",
            northSprite = "floors_interior_tilesandwood_01_47"
        }
    }
}

DEMI.FloorHardwoodTiles = {
    name = "Legno Massiccio ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_48",
            northSprite = "floors_interior_tilesandwood_01_48"
        }
    }
}

DEMI.FloorBirchwoodTiles = {
    name = "Betulla ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_49",
            northSprite = "floors_interior_tilesandwood_01_49"
        }
    }
}

DEMI.FloorCinnamonTiles = {
    name = "Rosso Cannella ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_50",
            northSprite = "floors_interior_tilesandwood_01_50"
        }
    }
}

DEMI.FloorAcaiaTiles = {
    name = "Acacia ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_51",
            northSprite = "floors_interior_tilesandwood_01_51"
        }
    }
}

DEMI.FloorPinewoodTiles = {
    name = "Pino ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_52",
            northSprite = "floors_interior_tilesandwood_01_52"
        }
    }
}

DEMI.FloorTilesDiagonalGray = {
    name = "Grigio ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_0",
            northSprite = "floors_interior_tilesandwood_01_0"
        }
    }
}

DEMI.FloorTilesDiagonalBlack = {
    name = " Nero ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_1",
            northSprite = "floors_interior_tilesandwood_01_1"
        }
    }
}

DEMI.FloorTilesDiagonalGreen = {
    name = " Verde ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_8",
            northSprite = "floors_interior_tilesandwood_01_8"
        }
    }
}

DEMI.FloorTilesDiagonalYellow = {
    name = " Giallo ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_9",
            northSprite = "floors_interior_tilesandwood_01_9"
        }
    }
}

DEMI.FloorTilesDiagonalWhite = {
    name = " Bianco ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_12",
            northSprite = "floors_interior_tilesandwood_01_12"
        }
    }
}

DEMI.FloorTilesDiagonalBeige = {
    name = "Beige",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_14",
            northSprite = "floors_interior_tilesandwood_01_14"
        }
    }
}

DEMI.FloorTilesCheckeredBlue = {
    name = " Blu ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_2",
            northSprite = "floors_interior_tilesandwood_01_2"
        }
    }
}

DEMI.FloorTilesCheckeredYellow = {
    name = " Giallo ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_3",
            northSprite = "floors_interior_tilesandwood_01_3"
        }
    }
}

DEMI.FloorTilesCheckeredGray = {
    name = " Grigio ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_4",
            northSprite = "floors_interior_tilesandwood_01_4"
        }
    }
}

DEMI.FloorTilesCheckeredWhite = {
    name = " Bianco ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_5",
            northSprite = "floors_interior_tilesandwood_01_5"
        }
    }
}

DEMI.FloorTilesCheckeredBeige = {
    name = " Beige ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_10",
            northSprite = "floors_interior_tilesandwood_01_10"
        }
    }
}

DEMI.FloorTilesYellow = {
    name = "Giallo ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_6",
            northSprite = "floors_interior_tilesandwood_01_6"
        }
    }
}

DEMI.FloorTilesBlack = {
    name = "Nero ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_7",
            northSprite = "floors_interior_tilesandwood_01_7"
        }
    }
}

DEMI.FloorTilesWhite = {
    name = "Bianco ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_11",
            northSprite = "floors_interior_tilesandwood_01_11"
        }
    }
}

DEMI.FloorTilesBrown = {
    name = " Marrone ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_13",
            northSprite = "floors_interior_tilesandwood_01_13"
        }
    }
}

DEMI.FloorTilesSmoothWhite = {
    name = "Liscio Bianco ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_16",
            northSprite = "floors_interior_tilesandwood_01_16"
        }
    }
}

DEMI.FloorTilesSmoothGray = {
    name = "Liscio Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_18",
            northSprite = "floors_interior_tilesandwood_01_18"
        }
    }
}

DEMI.FloorTilesSmoothBeige = {
    name = "Liscio Beige",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_19",
            northSprite = "floors_interior_tilesandwood_01_19"
        }
    }
}

DEMI.FloorTilesDarkGray = {
    name = "Scuro ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_20",
            northSprite = "floors_interior_tilesandwood_01_20"
        }
    }
}

DEMI.FloorTilesGreen = {
    name = "Verde ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_21",
            northSprite = "floors_interior_tilesandwood_01_21"
        }
    }
}

DEMI.FloorTilesPurple = {
    name = "Viola ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_22",
            northSprite = "floors_interior_tilesandwood_01_22"
        }
    }
}

DEMI.FloorTilesBeige = {
    name = "Beige ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_23",
            northSprite = "floors_interior_tilesandwood_01_23"
        }
    }
}

DEMI.FloorTilesSmoothDarkGray = {
    name = "Liscio Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_24",
            northSprite = "floors_interior_tilesandwood_01_24"
        }
    }
}

DEMI.FloorTilesSquaresGray = {
    name = " Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_28",
            northSprite = "floors_interior_tilesandwood_01_28"
        }
    }
}

DEMI.FloorTilesSquaresDarkGray = {
    name = " Grigio Scuro",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_29",
            northSprite = "floors_interior_tilesandwood_01_29"
        }
    }
}

DEMI.FloorTilesGray = {
    name = "Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_30",
            northSprite = "floors_interior_tilesandwood_01_30"
        }
    }
}

DEMI.FloorTilesBrown = {
    name = "Marrone",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_interior_tilesandwood_01_31",
            northSprite = "floors_interior_tilesandwood_01_31"
        }
    }
}

DEMI.FloorConcrete = {
    name = "Calcestruzzo",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_street_01_14",
            northSprite = "floors_exterior_street_01_14"
        }
    }
}

DEMI.FloorAsphaltLight = {
    name = "Asfalto ",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_street_01_17",
            northSprite = "floors_exterior_street_01_17"
        }
    }
}

DEMI.FloorAsphaltDark = {
    name = "Asfalto Scuro",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_street_01_16",
            northSprite = "floors_exterior_street_01_16"
        }
    }
}

DEMI.FloorCatwalk = {
    name = "Passerella di Metallo",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "industry_01_37",
            northSprite = "industry_01_37"
        }
    }
}

DEMI.FloorGrass = {
    name = "Erba",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_natural_01_0",
            northSprite = "floors_exterior_natural_01_1"
        }
    }
}

DEMI.FloorDirt = {
    name = "Terra",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_natural_01_18",
            northSprite = "floors_exterior_natural_01_19"
        }
    }
}

DEMI.FloorSand = {
    name = "Sabbia",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_natural_01_24",
            northSprite = "floors_exterior_natural_01_24"
        }
    }
}

DEMI.FloorPloughed = {
    name = "Terra Arata",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_natural_01_16",
            northSprite = "floors_exterior_natural_01_17"
        }
    }
}

DEMI.FloorGravel = {
    name = "Ghiaia",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.TwoSpriteFloorRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "floors_exterior_natural_01_49",
            northSprite = "floors_exterior_natural_01_48"
        }
    }
}
----- Stairs -----
DEMI.StairsLightBrown = {
    name = "Marrone Chiaro",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_stairs_01_64",
            upToLeft01 = "fixtures_stairs_01_64",
            upToLeft02 = "fixtures_stairs_01_65",
            upToLeft03 = "fixtures_stairs_01_66",
            upToRight01 = "fixtures_stairs_01_72",
            upToRight02 = "fixtures_stairs_01_73",
            upToRight03 = "fixtures_stairs_01_74",
            pillar = "fixtures_stairs_01_70",
            pillarNorth = "fixtures_stairs_01_70"
        }
    }
}

DEMI.StairsBrown = {
    name = "Marroni",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_stairs_01_32",
            upToLeft01 = "fixtures_stairs_01_32",
            upToLeft02 = "fixtures_stairs_01_33",
            upToLeft03 = "fixtures_stairs_01_34",
            upToRight01 = "fixtures_stairs_01_40",
            upToRight02 = "fixtures_stairs_01_41",
            upToRight03 = "fixtures_stairs_01_42",
            pillar = "fixtures_stairs_01_38",
            pillarNorth = "fixtures_stairs_01_39"
        }
    }
}

DEMI.StairsDarkBrown = {
    name = "Marrone Scuro",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_stairs_01_16",
            upToLeft01 = "fixtures_stairs_01_16",
            upToLeft02 = "fixtures_stairs_01_17",
            upToLeft03 = "fixtures_stairs_01_18",
            upToRight01 = "fixtures_stairs_01_24",
            upToRight02 = "fixtures_stairs_01_25",
            upToRight03 = "fixtures_stairs_01_26",
            pillar = "fixtures_stairs_01_22",
            pillarNorth = "fixtures_stairs_01_23"
        }
    }
}

DEMI.StairsWhiteMotel = {
    name = "Motel Bianche",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_hospitality_sunstarmotel_01_40",
            upToLeft01 = "location_hospitality_sunstarmotel_01_40",
            upToLeft02 = "location_hospitality_sunstarmotel_01_41",
            upToLeft03 = "location_hospitality_sunstarmotel_01_42",
            upToRight01 = "location_hospitality_sunstarmotel_01_48",
            upToRight02 = "location_hospitality_sunstarmotel_01_49",
            upToRight03 = "location_hospitality_sunstarmotel_01_50",
            pillar = "location_hospitality_sunstarmotel_01_43",
            pillarNorth = "location_hospitality_sunstarmotel_01_51"
        }
    }
}

DEMI.StairsWhiteIndustrial = {
    name = "Industriali Bianche",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_stairs_01_48",
            upToLeft01 = "fixtures_stairs_01_48",
            upToLeft02 = "fixtures_stairs_01_49",
            upToLeft03 = "fixtures_stairs_01_50",
            upToRight01 = "fixtures_stairs_01_56",
            upToRight02 = "fixtures_stairs_01_57",
            upToRight03 = "fixtures_stairs_01_58",
            pillar = "location_hospitality_sunstarmotel_01_43",
            pillarNorth = "location_hospitality_sunstarmotel_01_51"
        }
    }
}

DEMI.StairsYellow = {
    name = "Gialle",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_stairs_01_19",
            upToLeft01 = "fixtures_stairs_01_19",
            upToLeft02 = "fixtures_stairs_01_20",
            upToLeft03 = "fixtures_stairs_01_21",
            upToRight01 = "fixtures_stairs_01_27",
            upToRight02 = "fixtures_stairs_01_28",
            upToRight03 = "fixtures_stairs_01_29",
            pillar = "fixtures_stairs_01_30",
            pillarNorth = "fixtures_stairs_01_31"
        }
    }
}

DEMI.StairsMetal = {
    name = "Metalliche",
    data = {
        onBuild = DEMI.OnBuildWoodenStairs,
        recipe = DEMI.WoodenStairsRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_stairs_01_3",
            upToLeft01 = "fixtures_stairs_01_3",
            upToLeft02 = "fixtures_stairs_01_4",
            upToLeft03 = "fixtures_stairs_01_5",
            upToRight01 = "fixtures_stairs_01_11",
            upToRight02 = "fixtures_stairs_01_12",
            upToRight03 = "fixtures_stairs_01_13",
            pillar = "fixtures_stairs_01_14",
            pillarNorth = "fixtures_stairs_01_14"
        }
    }
}
----- Fencing -----
DEMI.FencePostWooden = {
    name = "Recinto di Legno",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "carpentry_02_51",
            northSprite = "carpentry_02_51"
        }
    }
}

DEMI.PillarRopeLogWall = {
    name = "Pilastro con Corda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "carpentry_02_51",
            northSprite = "carpentry_02_51"
        }
    }
}

DEMI.FencePostPicketWhite = {
    name = "Angolo con Picchetto Bianca",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_7",
            northSprite = "fencing_01_7"
        }
    }
}
DEMI.FencePostBeigeRail = {
    name = "Palo di Staccionata Beige",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_115",
            northSprite = "fixtures_railings_01_115"
        }
    }
}

DEMI.FencePostGrayRail = {
    name = "Palo di Staccionata Grigia",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_119",
            northSprite = "fixtures_railings_01_119"
        }
    }
}

DEMI.FencePostGreenMetal = {
    name = "Angolo di Metallo Verde",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "industry_railroad_05_43",
            northSprite = "industry_railroad_05_43"
        }
    }
}

DEMI.FencePostRoughBrick = {
    name = "Angolo di Mattoni",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "construction_01_3",
            northSprite = "construction_01_3"
        }
    }
}

DEMI.FencePostLightBrownWood = {
    name = "Angolo di Legno Marrone Chiaro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_47",
            northSprite = "location_restaurant_pileocrepe_01_47"
        }
    }
}

DEMI.FencePostGrayWood = {
    name = "Angolo di Legno Grigia",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_63",
            northSprite = "walls_exterior_wooden_01_63"
        }
    }
}

DEMI.FencePostBlockBrown = {
    name = "Angolo di Cemento",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_7",
            northSprite = "walls_commercial_03_7"
        }
    }
}

DEMI.FencePostBlockGray = {
    name = "Angolo di Cemento Grigia",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_39",
            northSprite = "walls_commercial_03_39"
        }
    }
}

DEMI.FencePostBlockWhite = {
    name = "Angolo di Cemento Bianca",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_55",
            northSprite = "walls_commercial_01_55"
        }
    }
}

DEMI.FencePostBrickRed = {
    name = "Angolo di Cemento Rossa",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_39",
            northSprite = "walls_exterior_house_01_39"
        }
    }
}
DEMI.FenceWoodLightBrown = {
    name = "Recinzione di Legno Marrone Chiaro",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        options = {
            isThumpable = true,
            hoppable = true,
        },
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_44",
            northSprite = "location_restaurant_pileocrepe_01_45",
            corner = "location_restaurant_pileocrepe_01_47"
        }
    }
}

DEMI.FenceWoodGray = {
    name = "Recinto di Legno Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_wooden_01_60",
            northSprite = "walls_exterior_wooden_01_61",
            corner = "walls_exterior_wooden_01_63"
        }
    }
}

DEMI.FenceBlockBrown = {
    name = "Recinto di Cemento Marrone",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_4",
            northSprite = "walls_commercial_03_5",
            corner = "walls_commercial_03_7"
        }
    }
}

DEMI.FenceBlockGray = {
    name = "Recinto di Cemento Grigio",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_03_36",
            northSprite = "walls_commercial_03_37",
            corner = "walls_commercial_03_38"
        }
    }
}

DEMI.FenceBlockWhite = {
    name = "Recinto di Cemento Bianco",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
                isThumpable = true,
                hoppable = true,
                blockAllTheSquare = false,
            },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_commercial_01_52",
            northSprite = "walls_commercial_01_53",
            corner = "walls_commercial_01_55"
        }
    }
}

DEMI.FenceBrickRed = {
    name = "Recinto di Mattoni Rosso",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "walls_exterior_house_01_36",
            northSprite = "walls_exterior_house_01_37",
            corner = "walls_exterior_house_01_39"
        }
    }
}

DEMI.FencePicketWhite = {
    name = "Recinto di Picchetti Bianco",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_4",
            northSprite = "fencing_01_5",
            corner = "fencing_01_7"
        }
    }
}

DEMI.FenceBeigeRail = {
    name = "Staccionata Beige",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_112",
            northSprite = "fixtures_railings_01_113",
            corner = "fixtures_railings_01_115"
        }
    }
}

DEMI.FenceGrayRail = {
    name = "Staccionata Grigia",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_116",
            northSprite = "fixtures_railings_01_117",
            corner = "fixtures_railings_01_119"
        }
    }
}

DEMI.FenceMetalGreen = {
    name = "Recinto di Metallo Verde",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "industry_railroad_05_40",
            northSprite = "industry_railroad_05_41",
            corner = "industry_railroad_05_43"
        }
    }
}

DEMI.FenceMetalRed = {
    name = "Recinto di Metallo Rosso",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "industry_bunker_01_24",
            northSprite = "industry_bunker_01_25",
            corner = "industry_bunker_01_27"
        }
    }
}

DEMI.FenceBrickRough = {
    name = "Recinto di Mattoni Ruvido",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "construction_01_0",
            northSprite = "construction_01_1",
            corner = "construction_01_3"
        }
    }
}

DEMI.FenceChainlink = {
    name = "Rete Metallica",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_27",
            northSprite = "fencing_01_24",
            corner = "fencing_01_28"
        }
    }
}
DEMI.FencePostChainlink = {
    name = "Recinzione Decorativa di Legno",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_29",
            northSprite = "fencing_01_29"
        }
    }
}

DEMI.FencePlainWood = {
    name = "Recinto di Legno Semplice",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_35",
            northSprite = "fencing_01_32",
            corner = "fencing_01_36"
        }
    }
}
DEMI.FencePostPlainWood = {
    name = "Angolo di Legno Semplice ",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_37",
            northSprite = "fencing_01_37"
        }
    }
}

DEMI.FenceLowWroughtIron = {
    name = "Recinto in Ferro Battuto",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_2",
            northSprite = "fencing_01_1",
            corner = "fencing_01_3"
        }
    }
}
DEMI.FencePostLowWroughtIron = {
    name = "Angolo in Ferro Battuto",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_0",
            northSprite = "fencing_01_0"
        }
    }
}

DEMI.RailingWood = {
    name = "Ringhiera di Legno",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_24",
            northSprite = "fixtures_railings_01_25"
        }
    }
}
DEMI.RailingPostWood = {
    name = "Palo della Ringhiera",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Use R to toggle Short or Tall post",
        sprite = {
            sprite = "fixtures_railings_01_27",
            northSprite = "fixtures_railings_01_35"
        }
    }
}

DEMI.RailingWhiteWood = {
    name = "Ringhiera di Legno",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_64",
            northSprite = "fixtures_railings_01_65"
        }
    }
}
DEMI.RailingPostWhiteWood = {
    name = "Palo della Ringhiera",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Use R to toggle Short or Tall post",
        sprite = {
            sprite = "fixtures_railings_01_67",
            northSprite = "fixtures_railings_01_75"
        }
    }
}

DEMI.RailingMotel = {
    name = "Ringhiera di Legno",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_hospitality_sunstarmotel_02_28",
            northSprite = "location_hospitality_sunstarmotel_02_29"
        }
    }
}
DEMI.RailingPostMotel = {
    name = "Palo della Ringhiera",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_hospitality_sunstarmotel_02_24",
            northSprite = "location_hospitality_sunstarmotel_02_24"
        }
    }
}

DEMI.RailingMetalWood = {
    name = "Ringhiera di Metallo e Legno",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_28",
            northSprite = "fixtures_railings_01_29"
        }
    }
}

DEMI.RailingMetalBars = {
    name = "Ringhiera di Metallo",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_railings_01_36",
            northSprite = "fixtures_railings_01_37"
        }
    }
}

DEMI.FenceHBarrier = {
    name = "Barriera Hesco",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.HBarrierRecipe,
        options = {
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_96",
            northSprite = "fencing_01_97"
        }
    }
}

DEMI.FenceChainAndRazor = {
    name = "Recinto Spinato di Metallo",
    data = {
        onBuild = DEMI.OnBuildImpassableHighMetalFence,
        recipe = DEMI.ImpassableHighMetalFenceRecipe,
        options = {
            isThumpable = true,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_50",
            sprite2 = "fencing_01_51",
            northSprite = "fencing_01_49",
            northSprite2 = "fencing_01_48"
        }
    }
}

DEMI.FenceChain = {
    name = "Recinto a Rete Metallica",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.HighMetalFenceRecipe,
        options = {
            isThumpable = true,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_58",
            sprite2 = "fencing_01_59",
            northSprite = "fencing_01_57",
            northSprite2 = "fencing_01_56"
        }
    }
}
DEMI.FencePostDecorativeWood = {
    name = "Angolo in Legno Decorato",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_13",
            northSprite = "fencing_01_13"
        }
    }
}

DEMI.FenceWroughtIron = {
    name = "Recinto in Ferro Battuto",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.HighMetalFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_66",
            sprite2 = "fencing_01_67",
            northSprite = "fencing_01_65",
            northSprite2 = "fencing_01_64"
        }
    }
}

DEMI.FenceWired = {
    name = "Recinto Spinato",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.HighMetalFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_82",
            sprite2 = "fencing_01_83",
            northSprite = "fencing_01_81",
            northSprite2 = "fencing_01_80"
        }
    }
}

DEMI.FenceWiredRazor = {
    name = "Recinto con Filo Spinato",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.UnhoppableHighMetalFenceRecipe,
        options = {
            isThumpable = true,
			hoppable = false,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_90",
            sprite2 = "fencing_01_91",
            northSprite = "fencing_01_89",
            northSprite2 = "fencing_01_88"
        }
    }
}
DEMI.FenceTallDecorativeWood = {
    name = "Recinto in Legno Decorato",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.HighWoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_10",
            sprite2 = "fencing_01_11",
            northSprite = "fencing_01_9",
            northSprite2 = "fencing_01_8"
        }
    }
}
DEMI.FencePostDecorativeWood = {
    name = "Angolo in Legno Decorato",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fencing_01_13",
            northSprite = "fencing_01_13"
        }
    }
}
DEMI.FenceFarmWhite = {
    name = "Recinto da Fattoria ",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.HighWoodenFenceRecipe,
        options = {
            hoppable = true,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_farm_accesories_spyjack_01_18",
            sprite2 = "location_farm_accesories_spyjack_01_19",
            northSprite = "location_farm_accesories_01_spyjack_17",
            northSprite2 = "location_farm_accesories_spyjack_01_16"
        }
    }
}
DEMI.FenceFarmWood = {
    name = "Recinto da Fattoria di Legno",
    data = {
        onBuild = DEMI.OnBuildHighMetalFence,
        recipe = DEMI.HighWoodenFenceRecipe,
        options = {
            isThumpable = true,
            hoppable = true,
            blockAllTheSquare = false,
            completionSound = "BuildMetalStructureMedium"
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_farm_accesories_spyjack_01_2",
            sprite2 = "location_farm_accesories_spyjack_01_3",
            northSprite = "location_farm_accesories_spyjack_01_1",
            northSprite2 = "location_farm_accesories_spyjack_01_0"
        }
    }
}
DEMI.FencePostFarmWhite = {
    name = "Recinzione da Fattoria Bianca",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_farm_accesories_spyjack_01_5",
            northSprite = "location_farm_accesories_spyjack_01_5"
        }
    }
}
DEMI.FencePostFarmWood = {
    name = "Recinzione da Fattoria di Legno",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenFencePostRecipe,
        options = {
            canBeAlwaysPlaced = true,
            canPassThrough = true,
            canBarricade = false,
            isCorner = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_farm_accesories_spyjack_01_21",
            northSprite = "location_farm_accesories_spyjack_01_21"
        }
    }
}

----- Fireplace and Mantles -----
DEMI.Fireplace = {
    name = "Camino",
    data = {
        onBuild = DEMI.OnBuildWoodenContainer,
        recipe = DEMI.FireplaceRecipe,
        options = {
            containerType = "fireplace",
            canBeAlwaysPlaced = true,
            isContainer = true,
            canBeLockedByPadlock = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_fireplaces_01_0",
            northSprite = "fixtures_fireplaces_01_3"
        }
    }
}
----- Roofing -----
DEMI.RoofShingleBlackFlat = {
    name = " Piatta Nera",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_22",
            northSprite = "roofs_01_23"
        }
    }
}

DEMI.RoofShingleBlackPitched1 = {
    name = " Nera Angolata 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_0",
            northSprite = "roofs_01_5"
        }
    }
}

DEMI.RoofShingleBlackPitched2 = {
    name = " Nera Angolata 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_1",
            northSprite = "roofs_01_4"
        }
    }
}

DEMI.RoofShingleBlackPitched3 = {
    name = " Nera Angolata 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_2",
            northSprite = "roofs_01_3"
        }
    }
}

DEMI.RoofShingleBlackInner1 = {
    name = " Nera Interna 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_8",
            northSprite = "roofs_01_8"
        }
    }
}

DEMI.RoofShingleBlackInner2 = {
    name = " Nera Interna 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_9",
            northSprite = "roofs_01_9"
        }
    }
}

DEMI.RoofShingleBlackInner3 = {
    name = " Nera Interna 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_10",
            northSprite = "roofs_01_10"
        }
    }
}

DEMI.RoofShingleBlackOuter1 = {
    name = " Nera Esterna 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_24",
            northSprite = "roofs_01_29"
        }
    }
}

DEMI.RoofShingleBlackOuter2 = {
    name = " Nera Esterna 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_25",
            northSprite = "roofs_01_28"
        }
    }
}

DEMI.RoofShingleBlackOuter3 = {
    name = " Nera Esterna 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_26",
            northSprite = "roofs_01_27"
        }
    }
}

DEMI.RoofShingleBlackValley1 = {
    name = " Nera a Valle  1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_11",
            northSprite = "roofs_01_11"
        }
    }
}

DEMI.RoofShingleBlackValley2 = {
    name = " Nera a Valle  2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_12",
            northSprite = "roofs_01_12"
        }
    }
}

DEMI.RoofShingleBlackValley3 = {
    name = " Nera a Valle  3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_13",
            northSprite = "roofs_01_13"
        }
    }
}

DEMI.RoofShingleBrownFlat = {
    name = " Piatta",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_22",
            northSprite = "roofs_02_23"
        }
    }
}

DEMI.RoofShingleBrownPitched1 = {
    name = " Angolata 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_0",
            northSprite = "roofs_02_5"
        }
    }
}

DEMI.RoofShingleBrownPitched2 = {
    name = " Angolata 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_1",
            northSprite = "roofs_02_4"
        }
    }
}

DEMI.RoofShingleBrownPitched3 = {
    name = " Angolata 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_2",
            northSprite = "roofs_02_3"
        }
    }
}

DEMI.RoofShingleBrownInner1 = {
    name = " Interna 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_8",
            northSprite = "roofs_02_8"
        }
    }
}

DEMI.RoofShingleBrownInner2 = {
    name = " Interna 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_9",
            northSprite = "roofs_02_9"
        }
    }
}

DEMI.RoofShingleBrownInner3 = {
    name = " Interna 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_10",
            northSprite = "roofs_02_10"
        }
    }
}

DEMI.RoofShingleBrownOuter1 = {
    name = " Esterna 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_24",
            northSprite = "roofs_02_29"
        }
    }
}

DEMI.RoofShingleBrownOuter2 = {
    name = " Esterna 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_25",
            northSprite = "roofs_02_28"
        }
    }
}

DEMI.RoofShingleBrownOuter3 = {
    name = " Esterna 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_26",
            northSprite = "roofs_02_27"
        }
    }
}

DEMI.RoofShingleBrownValley1 = {
    name = " a Valle  1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_11",
            northSprite = "roofs_02_11"
        }
    }
}

DEMI.RoofShingleBrownValley2 = {
    name = " a Valle  2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_12",
            northSprite = "roofs_02_12"
        }
    }
}

DEMI.RoofShingleBrownValley3 = {
    name = " a Valle  3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_13",
            northSprite = "roofs_02_13"
        }
    }
}

DEMI.RoofShingleGlassFlat = {
    name = " Piatta",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_54",
            northSprite = "roofs_02_55"
        }
    }
}

DEMI.RoofShingleGlassPitched1 = {
    name = " Angolata 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_32",
            northSprite = "roofs_02_37"
        }
    }
}

DEMI.RoofShingleGlassPitched2 = {
    name = " Angolata 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_33",
            northSprite = "roofs_02_36"
        }
    }
}

DEMI.RoofShingleGlassPitched3 = {
    name = " Angolata 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_34",
            northSprite = "roofs_02_35"
        }
    }
}

DEMI.RoofShingleGlassInner1 = {
    name = " Interna 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_40",
            northSprite = "roofs_02_40"
        }
    }
}

DEMI.RoofShingleGlassInner2 = {
    name = " Interna 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_41",
            northSprite = "roofs_02_41"
        }
    }
}

DEMI.RoofShingleGlassInner3 = {
    name = " Interna 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_42",
            northSprite = "roofs_02_42"
        }
    }
}

DEMI.RoofShingleGlassOuter1 = {
    name = " Esterna 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_56",
            northSprite = "roofs_02_61"
        }
    }
}

DEMI.RoofShingleGlassOuter2 = {
    name = " Esterna 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_57",
            northSprite = "roofs_02_60"
        }
    }
}

DEMI.RoofShingleGlassOuter3 = {
    name = " Esterna 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_58",
            northSprite = "roofs_02_59"
        }
    }
}

DEMI.RoofShingleGlassValley1 = {
    name = " a Valle 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_43",
            northSprite = "roofs_02_43"
        }
    }
}

DEMI.RoofShingleGlassValley2 = {
    name = " a Valle 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_44",
            northSprite = "roofs_02_44"
        }
    }
}

DEMI.RoofShingleGlassValley3 = {
    name = " a Valle 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_02_45",
            northSprite = "roofs_02_45"
        }
    }
}

DEMI.RoofGreenTentFront1 = {
    name = "Vista Frontale 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_24",
            northSprite = "location_military_tent_01_21"
        }
    }
}

DEMI.RoofGreenTentFront2 = {
    name = "Vista Frontale 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_25",
            northSprite = "location_military_tent_01_20"
        }
    }
}

DEMI.RoofGreenTentFront3 = {
    name = "Vista Frontale 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_26",
            northSprite = "location_military_tent_01_19"
        }
    }
}

DEMI.RoofGreenTentRear1 = {
    name = "Vista Retrospettiva 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_16",
            northSprite = "location_military_tent_01_29"
        }
    }
}

DEMI.RoofGreenTentRear2 = {
    name = "Vista Retrospettiva 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_17",
            northSprite = "location_military_tent_01_28"
        }
    }
}

DEMI.RoofGreenTentRear3 = {
    name = "Vista Retrospettiva 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_18",
            northSprite = "location_military_tent_01_27"
        }
    }
}

DEMI.RoofGreenTentOverhang1 = {
    name = "Sporgenza 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_32",
            northSprite = "location_military_tent_01_39"
        }
    }
}

DEMI.RoofGreenTentOverhang2 = {
    name = "Sporgenza 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_33",
            northSprite = "location_military_tent_01_38"
        }
    }
}

DEMI.RoofTanTentFront1 = {
    name = "Vista Frontale 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_88",
            northSprite = "location_military_tent_01_85"
        }
    }
}

DEMI.RoofTanTentFront2 = {
    name = "Vista Frontale 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_89",
            northSprite = "location_military_tent_01_84"
        }
    }
}

DEMI.RoofTanTentFront3 = {
    name = "Vista Frontale 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_90",
            northSprite = "location_military_tent_01_83"
        }
    }
}

DEMI.RoofTanTentRear1 = {
    name = "Vista Retrospettiva 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_80",
            northSprite = "location_military_tent_01_93"
        }
    }
}

DEMI.RoofTanTentRear2 = {
    name = "Vista Retrospettiva 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_81",
            northSprite = "location_military_tent_01_92"
        }
    }
}

DEMI.RoofTanTentRear3 = {
    name = "Vista Retrospettiva 3",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_82",
            northSprite = "location_military_tent_01_91"
        }
    }
}

DEMI.RoofTanTentOverhang1 = {
    name = "Sporgenza 1",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_103",
            northSprite = "location_military_tent_01_96"
        }
    }
}

DEMI.RoofTanTentOverhang2 = {
    name = "Sporgenza 2",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_102",
            northSprite = "location_military_tent_01_97"
        }
    }
}
DEMI.BrownWood = {
    name = "Marrone",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_01_54",
            northSprite = "roofs_01_55"
        }
    }
}

DEMI.LightBrownWood = {
    name = "Marrone Chiaro",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_03_22",
            northSprite = "roofs_03_23"
        }
    }
}

DEMI.GreenWood = {
    name = "Verde",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_03_54",
            northSprite = "roofs_03_55"
        }
    }
}

DEMI.RedWood = {
    name = "Rosso",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_04_22",
            northSprite = "roofs_04_23"
        }
    }
}

DEMI.White = {
    name = "Bianco",
    data = {
        onBuild = DEMI.OnBuildWoodenFloor,
        recipe = DEMI.RoofTileRecipe,
        options = {
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canPassThrough = true,
            canBarricade = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "roofs_04_54",
            northSprite = "roofs_04_55"
        }
    }
}
----- Doors -----

DEMI.DoorWhite = {
    name = "Bianca",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_0",
            northSprite = "fixtures_doors_01_1",
            openSprite = "fixtures_doors_01_2",
            openNorthSprite = "fixtures_doors_01_3"
        }
    }
}
DEMI.DoorBrown = {
    name = "Marrone",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_4",
            northSprite = "fixtures_doors_01_5",
            openSprite = "fixtures_doors_01_6",
            openNorthSprite = "fixtures_doors_01_7"
        }
    }
}
DEMI.DoorBlue = {
    name = "Blu",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_0",
            northSprite = "fixtures_doors_02_1",
            openSprite = "fixtures_doors_02_2",
            openNorthSprite = "fixtures_doors_02_3"
        }
    }
}
DEMI.DoorCherry = {
    name = "Ciliegia",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_12",
            northSprite = "fixtures_doors_01_13",
            openSprite = "fixtures_doors_01_14",
            openNorthSprite = "fixtures_doors_01_15"
        }
    }
}
DEMI.Door4PanelBrown = {
    name = "Marrone a 4 Pannelli",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_4",
            northSprite = "fixtures_doors_02_5",
            openSprite = "fixtures_doors_02_6",
            openNorthSprite = "fixtures_doors_02_7"
        }
    }
}
DEMI.Door4PanelWhite = {
    name = "Bianca a 4 Pannelli",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_44",
            northSprite = "fixtures_doors_01_45",
            openSprite = "fixtures_doors_01_46",
            openNorthSprite = "fixtures_doors_01_47"
        }
    }
}
DEMI.DoorTan = {
    name = "Beige",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_16",
            northSprite = "fixtures_doors_01_17",
            openSprite = "fixtures_doors_01_18",
            openNorthSprite = "fixtures_doors_01_19"
        }
    }
}
DEMI.DoorBlack = {
    name = "Nera",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_20",
            northSprite = "fixtures_doors_01_21",
            openSprite = "fixtures_doors_01_22",
            openNorthSprite = "fixtures_doors_01_23"
        }
    }
}
DEMI.DoorWhiteKitchen = {
    name = "Bianca da Cucina",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_60",
            northSprite = "fixtures_doors_01_61",
            openSprite = "fixtures_doors_01_62",
            openNorthSprite = "fixtures_doors_01_63"
        }
    }
}
DEMI.DoorSinglePaneChestnut = {
    name = "Castagna a Pannello Singolo",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_36",
            northSprite = "fixtures_doors_01_37",
            openSprite = "fixtures_doors_01_38",
            openNorthSprite = "fixtures_doors_01_39"
        }
    }
}
DEMI.DoorSinglePaneBlack = {
    name = "Nera a Pannello Singolo",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_40",
            northSprite = "fixtures_doors_01_41",
            openSprite = "fixtures_doors_01_42",
            openNorthSprite = "fixtures_doors_01_43"
        }
    }
}
DEMI.Door2PanelBlack = {
    name = "Nera a 2 Pannelli",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_48",
            northSprite = "fixtures_doors_01_49",
            openSprite = "fixtures_doors_01_50",
            openNorthSprite = "fixtures_doors_01_51"
        }
    }
}
DEMI.DoorPileOCrepeBlue = {
    name = "Pile O' Crepe ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_48",
            northSprite = "location_restaurant_pileocrepe_01_49",
            openSprite = "location_restaurant_pileocrepe_01_50",
            openNorthSprite = "location_restaurant_pileocrepe_01_51"
        }
    }
}
DEMI.DoorPizzaWhirledBrown = {
    name = "PizzaWhirled",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_pizzawhirled_01_56",
            northSprite = "location_restaurant_pizzawhirled_01_57",
            openSprite = "location_restaurant_pizzawhirled_01_58",
            openNorthSprite = "location_restaurant_pizzawhirled_01_59"
        }
    }
}
DEMI.DoorSeahorseBrown = {
    name = "Seahorse",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_seahorse_01_48",
            northSprite = "location_restaurant_seahorse_01_49",
            openSprite = "location_restaurant_seahorse_01_50",
            openNorthSprite = "location_restaurant_seahorse_01_51"
        }
    }
}
DEMI.DoorSpiffosBrown = {
    name = "Spiffo",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_spiffos_01_48",
            northSprite = "location_restaurant_spiffos_01_49",
            openSprite = "location_restaurant_spiffos_01_50",
            openNorthSprite = "location_restaurant_spiffos_01_51"
        }
    }
}
DEMI.DoorFossoilBlue = {
    name = "Fossoil ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_shop_fossoil_01_60",
            northSprite = "location_shop_fossoil_01_61",
            openSprite = "location_shop_fossoil_01_62",
            openNorthSprite = "location_shop_fossoil_01_63"
        }
    }
}
DEMI.DoorGaS2goRed = {
    name = "GaS2go Rossa",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_shop_gas2go_01_60",
            northSprite = "location_shop_gas2go_01_61",
            openSprite = "location_shop_gas2go_01_62",
            openNorthSprite = "location_shop_gas2go_01_63"
        }
    }
}
DEMI.DoorSolidBlue = {
    name = "Blu Solido",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_24",
            northSprite = "fixtures_doors_01_25",
            openSprite = "fixtures_doors_01_26",
            openNorthSprite = "fixtures_doors_01_27"
        }
    }
}
DEMI.DoorSolidGray = {
    name = "Solida Grigia",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_52",
            northSprite = "fixtures_doors_01_53",
            openSprite = "fixtures_doors_01_54",
            openNorthSprite = "fixtures_doors_01_55"
        }
    }
}
DEMI.DoorSolidBeige = {
    name = "Solida ",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_56",
            northSprite = "fixtures_doors_01_57",
            openSprite = "fixtures_doors_01_58",
            openNorthSprite = "fixtures_doors_01_59"
        }
    }
}
DEMI.DoorSolidTan = {
    name = "Solida Beige",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_64",
            northSprite = "fixtures_doors_01_65",
            openSprite = "fixtures_doors_01_66",
            openNorthSprite = "fixtures_doors_01_67"
        }
    }
}
DEMI.DoorSolidRedKickplate = {
    name = "Solida Rossa",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_8",
            northSprite = "fixtures_doors_02_9",
            openSprite = "fixtures_doors_02_10",
            openNorthSprite = "fixtures_doors_02_11"
        }
    }
}
DEMI.DoorSolidBlackKickplate = {
    name = "Solida Nera",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_12",
            northSprite = "fixtures_doors_02_13",
            openSprite = "fixtures_doors_02_14",
            openNorthSprite = "fixtures_doors_02_15"
        }
    }
}
DEMI.DoorSolidPileOCrepeOrange = {
    name = "Solida Pile O' Crepe",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_52",
            northSprite = "location_restaurant_pileocrepe_01_53",
            openSprite = "location_restaurant_pileocrepe_01_54",
            openNorthSprite = "location_restaurant_pileocrepe_01_55"
        }
    }
}
DEMI.DoorSolidPizzaWhirledGreen = {
    name = "Solida Pizza Whirled",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_pizzawhirled_01_60",
            northSprite = "location_restaurant_pizzawhirled_01_61",
            openSprite = "location_restaurant_pizzawhirled_01_62",
            openNorthSprite = "location_restaurant_pizzawhirled_01_63"
        }
    }
}
DEMI.DoorSolidSpiffosRed = {
    name = "Solida Spiffo",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_restaurant_spiffos_01_52",
            northSprite = "location_restaurant_spiffos_01_53",
            openSprite = "location_restaurant_spiffos_01_54",
            openNorthSprite = "location_restaurant_spiffos_01_55"
        }
    }
}
DEMI.DoorSlideBlackFrosted = {
    name = "Nera Congelato Porta Scorrevole???",
    data = {
        onBuild = DEMI.OnBuildFramelessDoor,
        recipe = DEMI.FramelessDoorRecipe,
        sprite = {
            sprite = "d_doors_01_24",
            northSprite = "d_doors_01_25",
            openSprite = "d_doors_01_26",
            openNorthSprite = "d_doors_01_27"
        }
    }
}
DEMI.DoorSlideWhiteFrosted = {
    name = "Bianca Congelata Scorrevole???",
    data = {
        onBuild = DEMI.OnBuildFramelessDoor,
        recipe = DEMI.FramelessDoorRecipe,
        sprite = {
            sprite = "d_doors_01_32",
            northSprite = "d_doors_01_33",
            openSprite = "d_doors_01_34",
            openNorthSprite = "d_doors_01_35"
        }
    }
}
DEMI.DoorSlideBlack = {
    name = "Nera Scorrevole",
    data = {
        onBuild = DEMI.OnBuildFramelessDoor,
        recipe = DEMI.FramelessDoorRecipe,
        sprite = {
            sprite = "d_doors_01_40",
            northSprite = "d_doors_01_41",
            openSprite = "d_doors_01_42",
            openNorthSprite = "d_doors_01_43"
        }
    }
}
DEMI.DoorSlideWhite = {
    name = "Bianca Scorrevole",
    data = {
        onBuild = DEMI.OnBuildFramelessDoor,
        recipe = DEMI.FramelessDoorRecipe,
        sprite = {
            sprite = "d_doors_01_48",
            northSprite = "d_doors_01_49",
            openSprite = "d_doors_01_50",
            openNorthSprite = "d_doors_01_51"
        }
    }
}
DEMI.DoorSecurity = {
    name = "Porta di Sicurezza",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_01_32",
            northSprite = "fixtures_doors_01_33",
            openSprite = "fixtures_doors_01_34",
            openNorthSprite = "fixtures_doors_01_35"
        }
    }
}
DEMI.DoorPrisonCell = {
    name = "Cella",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_police_01_4",
            northSprite = "location_community_police_01_5",
            openSprite = "location_community_police_01_6",
            openNorthSprite = "location_community_police_01_7"
        }
    }
}
DEMI.DoorCurtainOrange = {
    name = "Arancione a Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_windows_curtains_01_0",
            northSprite = "fixtures_windows_curtains_01_2",
            openSprite = "fixtures_windows_curtains_01_4",
            openNorthSprite = "fixtures_windows_curtains_01_6"
        }
    }
}
DEMI.DoorCurtainWhite = {
    name = "Bianca a Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_windows_curtains_01_8",
            northSprite = "fixtures_windows_curtains_01_10",
            openSprite = "fixtures_windows_curtains_01_12",
            openNorthSprite = "fixtures_windows_curtains_01_14"
        }
    }
}
DEMI.DoorCurtainGray = {
    name = "Grigia a Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_windows_curtains_01_88",
            northSprite = "fixtures_windows_curtains_01_90",
            openSprite = "fixtures_windows_curtains_01_92",
            openNorthSprite = "fixtures_windows_curtains_01_94"
        }
    }
}
DEMI.DoorMallSecurityGrate = {
    name = "Grata di Sicurezza Supermercato",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_shop_mall_01_18",
            northSprite = "location_shop_mall_01_19",
            openSprite = "location_shop_mall_01_14",
            openNorthSprite = "location_shop_mall_01_15"
        }
    }
}
DEMI.DoorTrimWhite = {
    name = "Rivestimento della Porta ",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.WoodenDoorTrimRecipe,
        options = {
            canPassThrough = true,
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canBarricade = false,
            isThumpable = false
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_0",
            northSprite = "fixtures_doors_frames_01_1"
        }
    }
}
DEMI.DoorTrimChestnut = {
    name = "Rivestimento della Porta Castagno",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.WoodenDoorTrimRecipe,
        options = {
            canPassThrough = true,
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canBarricade = false,
            isThumpable = false
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_2",
            northSprite = "fixtures_doors_frames_01_3"
        }
    }
}
DEMI.DoorTrimBlack = {
    name = "Rivestimento della Porta",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.WoodenDoorTrimRecipe,
        options = {
            canPassThrough = true,
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canBarricade = false,
            isThumpable = false
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_4",
            northSprite = "fixtures_doors_frames_01_5"
        }
    }
}
DEMI.DoorTrimWalnut = {
    name = "Rivestimento della Porta Noce",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.WoodenDoorTrimRecipe,
        options = {
            canPassThrough = true,
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canBarricade = false,
            isThumpable = false
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_6",
            northSprite = "fixtures_doors_frames_01_7"
        }
    }
}
DEMI.DoorTrimEspresso = {
    name = "Rivestimento della Porta Espresso",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.WoodenDoorTrimRecipe,
        options = {
            canPassThrough = true,
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canBarricade = false,
            isThumpable = false
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_8",
            northSprite = "fixtures_doors_frames_01_9"
        }
    }
}
DEMI.AwningBlueWhite = {
    name = "Tenda da Sole Blu & ",
    data = {
        onBuild = DEMI.OnBuildSimpleFurniture,
        recipe = DEMI.WoodenDoorTrimRecipe,
        options = {
            canPassThrough = true,
            needToBeAgainstWall = false,
            blockAllTheSquare = false,
            renderFloorHelper = true,
            canBarricade = false,
            isThumpable = false
        },
        sprite = {
            sprite = "location_restaurant_pileocrepe_01_5",
            northSprite = "location_restaurant_pileocrepe_01_4"
        }
    }
}
DEMI.DoorDoubleBlackGlassR = {
    name = "Doppia Nera Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_40",
            northSprite = "fixtures_doors_02_41",
            openSprite = "fixtures_doors_02_42",
            openNorthSprite = "fixtures_doors_02_43"
        }
    }
}
DEMI.DoorDoubleBlackGlassL = {
    name = "Doppia Nera Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_44",
            northSprite = "fixtures_doors_02_45",
            openSprite = "fixtures_doors_02_46",
            openNorthSprite = "fixtures_doors_02_47"
        }
    }
}
DEMI.DoorDoubleGraySolidR = {
    name = "Doppia Grigio Solido Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_48",
            northSprite = "fixtures_doors_02_49",
            openSprite = "fixtures_doors_02_50",
            openNorthSprite = "fixtures_doors_02_51"
        }
    }
}
DEMI.DoorDoubleGraySolidL = {
    name = "Doppia Grigio Solido Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_52",
            northSprite = "fixtures_doors_02_53",
            openSprite = "fixtures_doors_02_54",
            openNorthSprite = "fixtures_doors_02_55"
        }
    }
}
DEMI.DoorDoubleOrangeKitchenR = {
    name = "Doppia Arancione da Cucina Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_56",
            northSprite = "fixtures_doors_02_57",
            openSprite = "fixtures_doors_02_58",
            openNorthSprite = "fixtures_doors_02_59"
        }
    }
}
DEMI.DoorDoubleOrangeKitchenL = {
    name = "Doppia Arancione da Cucina Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_02_60",
            northSprite = "fixtures_doors_02_61",
            openSprite = "fixtures_doors_02_62",
            openNorthSprite = "fixtures_doors_02_63"
        }
    }
}
DEMI.DoorDoubleBluePanelR = {
    name = "Doppia Pannello Blu Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_church_small_01_24",
            northSprite = "location_community_church_small_01_25",
            openSprite = "location_community_church_small_01_26",
            openNorthSprite = "location_community_church_small_01_27"
        }
    }
}
DEMI.DoorDoubleBluePanelL = {
    name = "Doppia Pannello Blu Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_church_small_01_28",
            northSprite = "location_community_church_small_01_29",
            openSprite = "location_community_church_small_01_30",
            openNorthSprite = "location_community_church_small_01_31"
        }
    }
}
DEMI.DoorDoubleBrownPanelR = {
    name = "Doppia Pannello Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_church_small_01_64",
            northSprite = "location_community_church_small_01_65",
            openSprite = "location_community_church_small_01_66",
            openNorthSprite = "location_community_church_small_01_67"
        }
    }
}
DEMI.DoorDoubleBrownPanelL = {
    name = "Doppia Pannello Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_church_small_01_68",
            northSprite = "location_community_church_small_01_69",
            openSprite = "location_community_church_small_01_70",
            openNorthSprite = "location_community_church_small_01_71"
        }
    }
}
DEMI.DoorFrameBlackL = {
    name = "Telaio della Porta Nero Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_24",
            northSprite = "fixtures_doors_frames_01_26"
        }
    }
}
DEMI.DoorFrameBlackR = {
    name = "Telaio della Porta Nero Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_25",
            northSprite = "fixtures_doors_frames_01_27"
        }
    }
}
DEMI.DoorFrameWhiteL = {
    name = "Telaio della Porta Bianco Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_28",
            northSprite = "fixtures_doors_frames_01_30"
        }
    }
}
DEMI.DoorFrameWhiteR = {
    name = "Telaio della Porta Bianco Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_29",
            northSprite = "fixtures_doors_frames_01_31"
        }
    }
}
DEMI.DoorFrameBrownL = {
    name = "Telaio della Porta Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_32",
            northSprite = "fixtures_doors_frames_01_34"
        }
    }
}
DEMI.DoorFrameBrownR = {
    name = "Telaio della Porta Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_33",
            northSprite = "fixtures_doors_frames_01_35"
        }
    }
}
DEMI.DoorFrameGrayL = {
    name = "Telaio della Porta Grigio Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_36",
            northSprite = "fixtures_doors_frames_01_38"
        }
    }
}
DEMI.DoorFrameGrayR = {
    name = "Telaio della Porta Grigio Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_37",
            northSprite = "fixtures_doors_frames_01_39"
        }
    }
}
DEMI.DoorFrameWhiteDecoL = {
    name = "Telaio della Porta Bianco Deco Sinistra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_church_small_01_16",
            northSprite = "location_community_church_small_01_18"
        }
    }
}
DEMI.DoorFrameWhiteDecoR = {
    name = "Telaio della Porta Bianco Deco Destra",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "location_community_church_small_01_17",
            northSprite = "location_community_church_small_01_19"
        }
    }
}
DEMI.DoorFrameMetalGrate = {
    name = "Telaio della Porta Grate di Metallo",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "walls_detailing_01_24",
            northSprite = "walls_detailing_01_25"
        }
    }
}
DEMI.DoorGarageWhite = {
    name = "Garage Bianca",
    data = {
        onBuild = DEMI.OnBuildGarageDoor,
        recipe = DEMI.GarageDoorRecipe,
        sprite = {
            index = 0,
            sprite = "walls_garage_01_"
        }
    }
}
DEMI.DoorGarageGreen = {
    name = "Garage",
    data = {
        onBuild = DEMI.OnBuildGarageDoor,
        recipe = DEMI.GarageDoorRecipe,
        sprite = {
            index = 16,
            sprite = "walls_garage_01_"
        }
    }
}
DEMI.DoorGarageGray = {
    name = "Garage Grigia",
    data = {
        onBuild = DEMI.OnBuildGarageDoor,
        recipe = DEMI.GarageDoorRecipe,
        sprite = {
            index = 48,
            sprite = "walls_garage_01_"
        }
    }
}
DEMI.DoorGarageRolling = {
    name = "Garage a Serranda",
    data = {
        onBuild = DEMI.OnBuildGarageDoor,
        recipe = DEMI.GarageDoorRecipe,
        sprite = {
            index = 0,
            sprite = "walls_garage_02_"
        }
    }
}
DEMI.DoorGarageRedWindow = {
    name = "Garage con Finestra Rossa",
    data = {
        onBuild = DEMI.OnBuildGarageDoor,
        recipe = DEMI.GarageDoorRecipe,
        sprite = {
            index = 32,
            sprite = "walls_garage_02_"
        }
    }
}
DEMI.DoorGarageGrayWindow = {
    name = "Garage con Finestra Grigia",
    data = {
        onBuild = DEMI.OnBuildGarageDoor,
        recipe = DEMI.GarageDoorRecipe,
        sprite = {
            index = 48,
            sprite = "walls_garage_02_"
        }
    }
}
DEMI.DoorFrameLow = {
    name = "Telaio della Porta Basso",
    data = {
        onBuild = DEMI.OnBuildWoodenDoorFrame,
        recipe = DEMI.LowWoodenDoorFrameRecipe,
        option = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_frames_01_10",
            northSprite = "fixtures_doors_frames_01_11",
            corner = ""
        }
    }
}
DEMI.DoorLowWooden = {
    name = "Porta di Legno Bassa",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_fences_01_4",
            northSprite = "fixtures_doors_fences_01_5",
            openSprite = "fixtures_doors_fences_01_6",
            openNorthSprite = "fixtures_doors_fences_01_7"
        }
    }
}
DEMI.DoorLowWhite = {
    name = "Bianca Bassa",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_fences_01_8",
            northSprite = "fixtures_doors_fences_01_9",
            openSprite = "fixtures_doors_fences_01_10",
            openNorthSprite = "fixtures_doors_fences_01_11"
        }
    }
}
DEMI.DoorLowMetal = {
    name = "Bassa di Metallo",
    data = {
        onBuild = DEMI.OnBuildWoodenDoor,
        recipe = DEMI.WoodenDoorRecipe,
        options = {
            modData = {
                wallType = "doorframe"
            }
        },
        sprite = {
            sprite = "fixtures_doors_fences_01_16",
            northSprite = "fixtures_doors_fences_01_17",
            openSprite = "fixtures_doors_fences_01_18",
            openNorthSprite = "fixtures_doors_fences_01_19"
        }
    }
}

----- Windows -----
DEMI.Window1 = {
    name = "Finestra 1",
    data = {
        onBuild = DEMI.OnBuildWindow,
        recipe = DEMI.WindowRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_windows_01_0",
            northSprite = "fixtures_windows_01_1"
        }
    }
}

DEMI.Window2 = {
    name = "Finestra 2",
    data = {
        onBuild = DEMI.OnBuildWindow,
        recipe = DEMI.WindowRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_windows_01_8",
            northSprite = "fixtures_windows_01_9"
        }
    }
}

DEMI.Window3 = {
    name = "Finestra 3",
    data = {
        onBuild = DEMI.OnBuildWindow,
        recipe = DEMI.WindowRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_windows_01_16",
            northSprite = "fixtures_windows_01_17"
        }
    }
}

DEMI.Window4 = {
    name = "Finestra 4",
    data = {
        onBuild = DEMI.OnBuildWindow,
        recipe = DEMI.WindowRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_windows_01_24",
            northSprite = "fixtures_windows_01_25"
        }
    }
}

DEMI.Window5 = {
    name = "Finestra 5",
    data = {
        onBuild = DEMI.OnBuildWindow,
        recipe = DEMI.WindowRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_windows_01_32",
            northSprite = "fixtures_windows_01_33"
        }
    }
}

DEMI.Window6 = {
    name = "Finestra 6",
    data = {
        onBuild = DEMI.OnBuildWindow,
        recipe = DEMI.WindowRecipe,
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "fixtures_windows_01_56",
            northSprite = "fixtures_windows_01_57"
        }
    }
}

----- Tents -----
DEMI.TentWallGreen = {
    name = "Muro Verde da Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_0",
            northSprite = "location_military_tent_01_1"
        }
    }
}

DEMI.TentWindowGreen = {
    name = "Finestra Verde da Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_8",
            northSprite = "location_military_tent_01_9"
        }
    }
}

DEMI.TentDoorGreen = {
    name = "Porta Verde da Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_10",
            northSprite = "location_military_tent_01_11"
        }
    }
}

DEMI.TentGreenPillar = {
    name = "Pilastro Verde da Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_3"
        }
    }
}

DEMI.TentGreenFlap = {
    name = "Lembo Verde da Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.FramelessDoorRecipe,
        options = {
            canBarricade = true,
            dontNeedFrame = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_56",
            northSprite = "location_military_tent_01_58",
            openSprite = "location_military_tent_01_60",
            northOpenSprite = "location_military_tent_01_62"
        }
    }
}

DEMI.TentGreenWallAngle1 = {
    name = "Angolo del Muro da Tende Verde 1",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_40",
            northSprite = "location_military_tent_01_53"
        }
    }
}

DEMI.TentGreenWallAngle2 = {
    name = "Angolo del Muro da Tende Verde 2",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_41",
            northSprite = "location_military_tent_01_52"
        }
    }
}

DEMI.TentGreenWallAngle3 = {
    name = "Angolo del Muro da Tende Verde 3",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_42",
            northSprite = "location_military_tent_01_51"
        }
    }
}

DEMI.TentGreenWallAngle4 = {
    name = "Angolo del Muro da Tende Verde 4",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_43",
            northSprite = "location_military_tent_01_50"
        }
    }
}

DEMI.TentGreenWallAngle5 = {
    name = "Angolo del Muro da Tende Verde 5",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_44",
            northSprite = "location_military_tent_01_49"
        }
    }
}

DEMI.TentGreenWallAngle6 = {
    name = "Angolo del Muro da Tende Verde 6",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_45",
            northSprite = "location_military_tent_01_48"
        }
    }
}

DEMI.TentWallTan = {
    name = "Muroda Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_64",
            northSprite = "location_military_tent_01_65"
        }
    }
}

DEMI.TentWindowTan = {
    name = "Finestrada Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWindowFrameRecipe,
        options = {
            hoppable = true,
            isThumpable = false
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_72",
            northSprite = "location_military_tent_01_73"
        }
    }
}

DEMI.TentDoorTan = {
    name = "Portada Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "doorframe"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_74",
            northSprite = "location_military_tent_01_75"
        }
    }
}

DEMI.TentDoorTan = {
    name = "Pilastroda Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenDoorFrameRecipe,
        options = {
            canPassThrough = true,
            canBarricade = false,
            isCorner = true,
            modData = {
                wallType = "pillar"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_67"
        }
    }
}

DEMI.TentTanFlap = {
    name = "Lemboda Tenda",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.FramelessDoorRecipe,
        options = {
            canBarricade = true,
            dontNeedFrame = true
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_120",
            northSprite = "location_military_tent_01_122",
            openSprite = "location_military_tent_01_124",
            northOpenSprite = "location_military_tent_01_126"
        }
    }
}

DEMI.TentTanWallAngle1 = {
    name = "Angolo del Muro da Tende1",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_104",
            northSprite = "location_military_tent_01_117"
        }
    }
}

DEMI.TentTanWallAngle2 = {
    name = "Angolo del Muro da Tende2",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_105",
            northSprite = "location_military_tent_01_116"
        }
    }
}

DEMI.TentTanWallAngle3 = {
    name = "Angolo del Muro da Tende3",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_106",
            northSprite = "location_military_tent_01_115"
        }
    }
}

DEMI.TentTanWallAngle4 = {
    name = "Angolo del Muro da Tende4",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_107",
            northSprite = "location_military_tent_01_114"
        }
    }
}

DEMI.TentTanWallAngle5 = {
    name = "Angolo del Muro da Tende5",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_108",
            northSprite = "location_military_tent_01_113"
        }
    }
}

DEMI.TentTanWallAngle6 = {
    name = "Angolo del Muro da Tende6",
    data = {
        onBuild = DEMI.OnBuildWoodenWall,
        recipe = DEMI.WoodenWallRecipe,
        options = {
            canBarricade = false,
            modData = {
                wallType = "wall"
            }
        },
        desc = "Non disassemblabile, non rimborsabile",
        sprite = {
            sprite = "location_military_tent_01_109",
            northSprite = "location_military_tent_01_112"
        }
    }
}
end
