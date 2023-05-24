if not getDEMIInstance then
    require("Demiurgo/DemiurgoMain")
end

local DEMI = getDEMIInstance()

function DEMIInitContextMenu()
    DEMI.contextMenu = {
        name = "Demiurgo",
        items =  {
            {
                name = "Strutture",
                items = {
                    {
                        name = "Muri",
                        items = {
                            {
                                name = "Commerciale",
                                items = {
                                    {
                                        name = "Garage",
                                        items = {
                                            DEMI.CommercialGarageWall,
                                            DEMI.CommercialGarageWindowFrame,
                                            DEMI.CommercialGarageDoorFrame,
                                            DEMI.PillarCommercialGarage
                                        }
                                    },
                                    {
                                        name = "Banca",
                                        items = {
                                            DEMI.BankWall,
                                            DEMI.BankWindowFrame,
                                            DEMI.BankDoorFrame,
                                            DEMI.PillarBank
                                        }
                                    },
                                    {
                                        name = "Scuola",
                                        items = {
                                            DEMI.SchoolWall,
                                            DEMI.SchoolWindowFrame,
                                            DEMI.SchoolDoorFrame,
                                            DEMI.PillarSchool
                                        }
                                    },
                                    {
                                        name = "Ristorante",
                                        items = {
                                            DEMI.DinerWall,
                                            DEMI.DinerWindowFrame,
                                            DEMI.DinerDoorFrame,
                                            DEMI.PillarDiner
                                        }
                                    },
                                    {
                                        name = "Fossoil",
                                        items = {
                                            DEMI.FossoilWall,
                                            DEMI.FossoilWindowFrame,
                                            DEMI.FossoilDoorFrame,
                                            DEMI.PillarFossoil
                                        }
                                    },
                                    {
                                        name = "Gas2Go",
                                        items = {
                                            DEMI.Gas2GoWall,
                                            DEMI.Gas2GoWindowFrame,
                                            DEMI.Gas2GoDoorFrame,
                                            DEMI.PillarGas2Go
                                        }
                                    },
                                    {
                                        name = "Sicurezza",
                                        items = {
                                            DEMI.SecurityGratingWall
                                        }
                                    }
                                }
                            },
                            {
                                name = "Residenziale",
                                items = {
                                    {
                                        name = "Bagno Bianco",
                                        items = {
                                            DEMI.WallWhiteBathroom,
                                            DEMI.WindowFrameWhiteBathroom,
                                            DEMI.DoorFrameWhiteBathroom,
                                            DEMI.PillarWhiteBathroom,
                                        }
                                    },
                                    {
                                        name = "Bagno Beige",
                                        items = {
                                            DEMI.WallTanBathroom,
                                            DEMI.WindowFrameTanBathroom,
                                            DEMI.DoorFrameTanBathroom,
                                            DEMI.PillarTanBathroom,
                                        }
                                    },
                                    {
                                        name = "Strisce Grigie",
                                        items = {
                                            DEMI.WallGrayStripes,
                                            DEMI.WindowFrameGrayStripes,
                                            DEMI.DoorFrameGrayStripes,
                                            DEMI.PillarGrayStripes,
                                        }
                                    },
                                    {
                                        name = "Strisce Beige",
                                        items = {
                                            DEMI.WallTanStripes,
                                            DEMI.WindowFrameTanStripes,
                                            DEMI.DoorFrameTanStripes,
                                            DEMI.PillarTanStripes,
                                        }
                                    },
                                    {
                                        name = "Strisce Blu",
                                        items = {
                                            DEMI.WallBlueStripes,
                                            DEMI.WindowFrameBlueStripes,
                                            DEMI.DoorFrameBlueStripes,
                                            DEMI.PillarBlueStripes,
                                        }
                                    },
                                    {
                                        name = "Rombi Grigi",
                                        items = {
                                            DEMI.WallGrayDiamonds,
                                            DEMI.WindowFrameGrayDiamonds,
                                            DEMI.DoorFrameGrayDiamonds,
                                            DEMI.PillarGrayDiamonds,
                                        }
                                    },
                                    {
                                        name = "Fiori Grigi",
                                        items = {
                                            DEMI.WallGrayFlowers,
                                            DEMI.WindowFrameGrayFlowers,
                                            DEMI.DoorFrameGrayFlowers,
                                            DEMI.PillarGrayFlowers,
                                        }
                                    },
                                    {
                                        name = "Fiori Rosa",
                                        items = {
                                            DEMI.WallPinkFlowers,
                                            DEMI.WindowFramePinkFlowers,
                                            DEMI.DoorFramePinkFlowers,
                                            DEMI.PillarPinkFlowers,
                                        }
                                    },
                                },
                            },
                            {
                                name = "Pitturato",
                                items = {
                                    {
                                        name = "Fragola",
                                        items = {
                                            DEMI.WallStrawberry,
                                            DEMI.DoorFrameStrawberry,
                                            DEMI.WindowFrameStrawberry,
                                            DEMI.PillarStrawberry
                                        }
                                    },
                                    {
                                        name = "Blu Grigio",
                                        items = {
                                            DEMI.WallBlueGray,
                                            DEMI.DoorFrameBlueGray,
                                            DEMI.WindowFrameBlueGray,
                                            DEMI.PillarBlueGray
                                        }
                                    },
                                    {
                                        name = "Verde Foglia",
                                        items = {
                                            DEMI.WallLeafGreen,
                                            DEMI.DoorFrameLeafGreen,
                                            DEMI.WindowFrameLeafGreen,
                                            DEMI.PillarLeafGreen
                                        }
                                    },
                                    {
                                        name = "Profondo Rosso",
                                        items = {
                                            DEMI.WallDeepRed,
                                            DEMI.DoorFrameDeepRed,
                                            DEMI.WindowFrameDeepRed,
                                            DEMI.PillarDeepRed
                                        }
                                    },
                                    {
                                        name = "Verde",
                                        items = {
                                            DEMI.WallGreen,
                                            DEMI.DoorFrameGreen,
                                            DEMI.WindowFrameGreen,
                                            DEMI.PillarGreen
                                        }
                                    },
                                    {
                                        name = "Beige",
                                        items = {
                                            DEMI.WallTan,
                                            DEMI.DoorFrameTan,
                                            DEMI.WindowFrameTan,
                                            DEMI.PillarTan
                                        }
                                    },
                                    {
                                        name = "Verde Menta",
                                        items = {
                                            DEMI.WallMintGreen,
                                            DEMI.DoorFrameMintGreen,
                                            DEMI.WindowFrameMintGreen,
                                            DEMI.PillarMintGreen
                                        }
                                    },
                                    {
                                        name = "Azzurro",
                                        items = {
                                            DEMI.WallLightBlue,
                                            DEMI.DoorFrameLightBlue,
                                            DEMI.WindowFrameLightBlue,
                                            DEMI.PillarLightBlue
                                        }
                                    },
                                    {
                                        name = "Arancione",
                                        items = {
                                            DEMI.WallOrange,
                                            DEMI.DoorFrameOrange,
                                            DEMI.WindowFrameOrange,
                                            DEMI.PillarOrange
                                        }
                                    },
                                    {
                                        name = "Marrone",
                                        items = {
                                            DEMI.WallBrown,
                                            DEMI.DoorFrameBrown,
                                            DEMI.WindowFrameBrown,
                                            DEMI.PillarBrown
                                        }
                                    },
                                    {
                                        name = "Blu",
                                        items = {
                                            DEMI.WallBlue,
                                            DEMI.DoorFrameBlue,
                                            DEMI.WindowFrameBlue,
                                            DEMI.PillarBlue
                                        }
                                    },
                                    {
                                        name = "Beige Chiaro",
                                        items = {
                                            DEMI.WallOffTan,
                                            DEMI.DoorFrameOffTan,
                                            DEMI.WindowFrameOffTan,
                                            DEMI.PillarOffTan
                                        }
                                    },
                                    {
                                        name = "Crema",
                                        items = {
                                            DEMI.WallCream,
                                            DEMI.DoorFrameCream,
                                            DEMI.WindowFrameCream,
                                            DEMI.PillarCream
                                        }
                                    },
                                    {
                                        name = "Blu Pallido",
                                        items = {
                                            DEMI.WallPaleBlue,
                                            DEMI.DoorFramePaleBlue,
                                            DEMI.WindowFramePaleBlue,
                                            DEMI.PillarPaleBlue
                                        }
                                    },
                                    {
                                        name = "Viola",
                                        items = {
                                            DEMI.WallPurple,
                                            DEMI.DoorFramePurple,
                                            DEMI.WindowFramePurple,
                                            DEMI.PillarPurple
                                        }
                                    },
                                    {
                                        name = "Bianco",
                                        items = {
                                            DEMI.WallWhite,
                                            DEMI.DoorFrameWhite,
                                            DEMI.WindowFrameWhite,
                                            DEMI.PillarWhite
                                        }
                                    },
                                    {
                                        name = "Nero",
                                        items = {
                                            DEMI.WallBlack,
                                            DEMI.DoorFrameBlack,
                                            DEMI.WindowFrameBlack,
                                            DEMI.PillarBlack
                                        }
                                    },
                                    {
                                        name = "Magenta",
                                        items = {
                                            DEMI.WallLightPurple,
                                            DEMI.DoorFrameLightPurple,
                                            DEMI.WindowFrameLightPurple,
                                            DEMI.PillarLightPurple
                                        }
                                    },
                                    {
                                        name = "Rosa",
                                        items = {
                                            DEMI.WallPink,
                                            DEMI.DoorFramePink,
                                            DEMI.WindowFramePink,
                                            DEMI.PillarPink
                                        }
                                    },
                                    {
                                        name = "Ceruleo",
                                        items = {
                                            DEMI.WallCerulean,
                                            DEMI.DoorFrameCerulean,
                                            DEMI.WindowFrameCerulean,
                                            DEMI.PillarCerulean
                                        }
                                    }
                                }
                            },
                            {
                                name = "Mattone",
                                items = {
                                    {
                                        name = "Blu",
                                        items = {
                                            DEMI.WallBrickBlue,
                                            DEMI.WindowFrameBrickBlue,
                                            DEMI.DoorFrameBrickBlue,
                                            DEMI.PillarBrickBlue
                                        }
                                    },
                                    {
                                        name = "Rosso",
                                        items = {
                                            DEMI.WallBrickRed,
                                            DEMI.WindowFrameBrickRed,
                                            DEMI.DoorFrameBrickRed,
                                            DEMI.PillarBrickRed,
                                            DEMI.FenceBrickRed,
                                            DEMI.FencePostBrickRed
                                        }
                                    },
                                    {
                                        name = "Beige",
                                        items = {
                                            DEMI.WallBrickTan,
                                            DEMI.WindowFrameBrickTan,
                                            DEMI.DoorFrameBrickTan,
                                            DEMI.PillarBrickTan
                                        }
                                    },
                                    {
                                        name = "Vecchio",
                                        items = {
                                            DEMI.WallBrickOld,
                                            DEMI.WindowFrameBrickOld,
                                            DEMI.DoorFrameBrickOld,
                                            DEMI.PillarBrickOld
                                        }
                                    },
                                    {
                                        name = "Grigio",
                                        items = {
                                            DEMI.WallBrickGray,
                                            DEMI.WindowFrameBrickGray,
                                            DEMI.DoorFrameBrickGray,
                                            DEMI.PillarBrickGray
                                        }
                                    },
                                    {
                                        name = "Beige2",
                                        items = {
                                            DEMI.WallBrickBeige,
                                            DEMI.WindowFrameBrickBeige,
                                            DEMI.DoorFrameBrickBeige,
                                            DEMI.PillarBrickBeige
                                        }
                                    },
                                    {
                                        name = "Chiaro",
                                        items = {
                                            DEMI.WallBrickLight,
                                            DEMI.WindowFrameBrickLight,
                                            DEMI.DoorFrameBrickLight,
                                            DEMI.PillarBrickLight
                                        }
                                    },
                                    {
                                        name = "Verde",
                                        items = {
                                            DEMI.WallBrickGreen,
                                            DEMI.WindowFrameBrickGreen,
                                            DEMI.DoorFrameBrickGreen,
                                            DEMI.PillarBrickGreen
                                        }
                                    }
                                }
                            },
                            {
                                name = "Cemento",
                                items = {
                                    {
                                        name = "Beige",
                                        items = {
                                            DEMI.WallBlockTan,
                                            DEMI.DoorFrameBlockTan,
                                            DEMI.WindowFrameBlockTan,
                                            DEMI.PillarBlockTan
                                        }
                                    },
                                    {
                                        name = "Grigio Scuro",
                                        items = {
                                            DEMI.WallBlockDarkGray,
                                            DEMI.DoorFrameBlockDarkGray,
                                            DEMI.WindowFrameBlockDarkGray,
                                            DEMI.PillarBlockDarkGray,
                                            DEMI.FenceBlockGray,
                                            DEMI.FencePostBlockGray
                                        }
                                    },
                                    {
                                        name = "Grigio Chiaro",
                                        items = {
                                            DEMI.WallBlockLightGray,
                                            DEMI.DoorFrameBlockLightGray,
                                            DEMI.WindowFrameBlockLightGray,
                                            DEMI.PillarBlockLightGray
                                        }
                                    },
                                    {
                                        name = "Bianco",
                                        items = {
                                            DEMI.WallBlockWhite,
                                            DEMI.DoorFrameBlockWhite,
                                            DEMI.WindowFrameBlockWhite,
                                            DEMI.PillarBlockWhite,
                                            DEMI.FenceBlockWhite,
                                            DEMI.FencePostBlockWhite
                                        }
                                    },
                                    {
                                        name = "Marrone",
                                        items = {
                                            DEMI.WallBlockBrown,
                                            DEMI.DoorFrameBlockBrown,
                                            DEMI.WindowFrameBlockBrown,
                                            DEMI.PillarBlockBrown,
                                            DEMI.FenceBlockBrown,
                                            DEMI.FencePostBlockBrown
                                        }
                                    }
                                }
                            },
                            {
                                name = "Legno",
                                items = {
                                    {
                                        name = "Bianco",
                                        items = {
                                            DEMI.WallWoodenWhiteClapboard,
                                            DEMI.DoorFrameWoodenWhiteClapboard,
                                            DEMI.WindowFrameWoodenWhiteClapboard,
                                            DEMI.PillarWoodenWhiteClapboard
                                        }
                                    },
                                    {
                                        name = "Marrone",
                                        items = {
                                            DEMI.WallWoodenBrownClapboard,
                                            DEMI.DoorFrameWoodenBrownClapboard,
                                            DEMI.WindowFrameWoodenBrownClapboard,
                                            DEMI.PillarWoodenBrownClapboard
                                        }
                                    },
                                    {
                                        name = "Blu",
                                        items = {
                                            DEMI.WallWoodenBlueClapboard,
                                            DEMI.DoorFrameWoodenBlueClapboard,
                                            DEMI.WindowFrameWoodenBlueClapboard,
                                            DEMI.PillarWoodenBlueClapboard
                                        }
                                    },
                                    {
                                        name = "Beige",
                                        items = {
                                            DEMI.WallWoodenTanClapboard,
                                            DEMI.DoorFrameWoodenTanClapboard,
                                            DEMI.WindowFrameWoodenTanClapboard,
                                            DEMI.PillarWoodenTanClapboard
                                        }
                                    },
                                    {
                                        name = "Rosa",
                                        items = {
                                            DEMI.WallWoodenPinkClapboard,
                                            DEMI.DoorFrameWoodenPinkClapboard,
                                            DEMI.WindowFrameWoodenPinkClapboard,
                                            DEMI.PillarWoodenPinkClapboard
                                        }
                                    },
                                    {
                                        name = "Verde",
                                        items = {
                                            DEMI.WallWoodenGreenClapboard,
                                            DEMI.DoorFrameWoodenGreenClapboard,
                                            DEMI.WindowFrameWoodenGreenClapboard,
                                            DEMI.PillarWoodenGreenClapboard
                                        }
                                    },
                                    {
                                        name = "Pannello Marrone Chiaro",
                                        items = {
                                            DEMI.WallWoodenLightBrownPanel,
                                            DEMI.DoorFrameWoodenLightBrownPanel,
                                            DEMI.WindowFrameWoodenLightBrownPanel,
                                            DEMI.PillarWoodenLightBrownPanel
                                        }
                                    },
                                    {
                                        name = "Pannello Marrone",
                                        items = {
                                            DEMI.WallWoodenBrownPanel,
                                            DEMI.DoorFrameWoodenBrownPanel,
                                            DEMI.WindowFrameWoodenBrownPanel,
                                            DEMI.PillarWoodenBrownPanel
                                        }
                                    },
                                    {
                                        name = "Pannello Grigio",
                                        items = {
                                            DEMI.WallWoodenGrayPanel,
                                            DEMI.DoorFrameWoodenGrayPanel,
                                            DEMI.WindowFrameWoodenGrayPanel,
                                            DEMI.PillarWoodenGrayPanel
                                        }
                                    },
                                    {
                                        name = "Pannello Bianco",
                                        items = {
                                            DEMI.WallWoodenWhitePanel,
                                            DEMI.DoorFrameWoodenWhitePanel,
                                            DEMI.WindowFrameWoodenWhitePanel,
                                            DEMI.PillarWoodenWhitePanel
                                        }
                                    },
                                    {
                                        name = "Fianile Rosso",
                                        items = {
                                            DEMI.WallWoodenRedBarn,
                                            DEMI.DoorFrameWoodenRedBarn,
                                            DEMI.WindowFrameWoodenRedBarn,
                                            DEMI.PillarWoodenRedBarn
                                        }
                                    }
                                }
                            },
                            {
                                name = "Pietra",
                                items = {
                                    {
                                        name = "Grigio",
                                        items = {
                                            DEMI.WallStoneGray,
                                            DEMI.DoorFrameStoneGray,
                                            DEMI.WindowFrameStoneGray,
                                            DEMI.PillarStoneGray
                                        }
                                    },
                                    {
                                        name = "Beige",
                                        items = {
                                            DEMI.WallStoneTan,
                                            DEMI.DoorFrameStoneTan,
                                            DEMI.WindowFrameStoneTan,
                                            DEMI.PillarStoneTan
                                        }
                                    },
                                    {
                                        name = "Rosso",
                                        items = {
                                            DEMI.WallStoneRed,
                                            DEMI.DoorFrameStoneRed,
                                            DEMI.WindowFrameStoneRed,
                                            DEMI.PillarStoneRed
                                        }
                                    },
                                    {
                                        name = "Verde",
                                        items = {
                                            DEMI.WallStoneGreen,
                                            DEMI.DoorFrameStoneGreen,
                                            DEMI.WindowFrameStoneGreen,
                                            DEMI.PillarStoneGreen
                                        }
                                    },
                                    {
                                        name = "Marrone",
                                        items = {
                                            DEMI.WallStoneBrown,
                                            DEMI.DoorFrameStoneBrown,
                                            DEMI.WindowFrameStoneBrown,
                                            DEMI.PillarStoneBrown
                                        }
                                    }
                                }
                            },
                            {
                                name = "Vetro",
                                items = {
                                    DEMI.WallGlass,
                                    {
                                        name = "Grigio Chiaro",
                                        items = {
                                            DEMI.WallGlassLightGray1
                                        }
                                    },
                                    {
                                        name = "Grigio Scuro",
                                        items = {
                                            DEMI.WallGlassDarkGray1,
                                            DEMI.WallGlassDarkGray2,
                                            DEMI.WallGlassDarkGray3
                                        }
                                    },
                                    {
                                        name = "Marrone",
                                        items = {
                                            DEMI.WallGlassBrown1,
                                            DEMI.WallGlassBrown2,
                                            DEMI.WallGlassBrown3
                                        }
                                    }
                                }
                            },
                            {
                                name = "Altro",
                                items = {
                                    DEMI.PillarRopeLogWall
                                }
                            }
                        }
                    },
                    {
                        name = "Pavimentazione",
                        items = {
                            {
                                name = "Legno",
                                items = {
                                    DEMI.FloorHardwood,
                                    DEMI.FloorOakwood,
                                    DEMI.FloorBirchwood,
                                    DEMI.FloorCinnamonWest,
                                    DEMI.FloorCinnamonNorth,
                                    DEMI.FloorFinewood,
                                    DEMI.FloorChestnutWest,
                                    DEMI.FloorChestnutNorth,
                                    DEMI.FloorHardwoodTiles,
                                    DEMI.FloorBirchwoodTiles,
                                    DEMI.FloorCinnamonTiles,
                                    DEMI.FloorAcaiaTiles,
                                    DEMI.FloorPinewoodTiles
                                }
                            },
                            {
                                name = "Tappeti",
                                items = {
                                    DEMI.FloorCarpetBlue,
                                    DEMI.FloorCarpetPurple,
                                    DEMI.FloorCarpetDarkGray,
                                    DEMI.FloorCarpetBrown,
                                    DEMI.FloorCarpetRed,
                                    DEMI.FloorCarpetGreen,
                                    DEMI.FloorCarpetViolet,
                                    DEMI.FloorCarpetGrayCurly,
                                    DEMI.FloorCarpetBordeaux,
                                    DEMI.FloorCarpetRed,
                                    DEMI.FloorCarpetYellow,
                                    DEMI.FloorCarpetWhite,
                                    DEMI.FloorCarpetBeige,
                                    DEMI.FloorCarpetBlack,
                                    DEMI.FloorCarpetGray,
                                    DEMI.FloorCarpetLightGreen
                                }
                            },
                            {
                                name = "Piastrelle",
                                items = {
                                    DEMI.FloorTilesYellow,
                                    DEMI.FloorTilesBlack,
                                    DEMI.FloorTilesWhite,
                                    DEMI.FloorTilesBrown,
                                    DEMI.FloorTilesSmoothWhite,
                                    DEMI.FloorTilesSmoothGray,
                                    DEMI.FloorTilesSmoothBeige,
                                    DEMI.FloorTilesDarkGray,
                                    DEMI.FloorTilesGreen,
                                    DEMI.FloorTilesPurple,
                                    DEMI.FloorTilesBeige,
                                    DEMI.FloorTilesSmoothDarkGray,
                                    DEMI.FloorTilesSquaresGray,
                                    DEMI.FloorTilesSquaresDarkGray,
                                    DEMI.FloorTilesGray,
                                    DEMI.FloorTilesBrown
                                }
                            },
                            {
                                name = "Piastrelle Diagonali",
                                items = {
                                    DEMI.FloorTilesDiagonalGray,
                                    DEMI.FloorTilesDiagonalBlack,
                                    DEMI.FloorTilesDiagonalGreen,
                                    DEMI.FloorTilesDiagonalYellow,
                                    DEMI.FloorTilesDiagonalWhite,
                                    DEMI.FloorTilesDiagonalBeige
                                }
                            },
                            {
                                name = "Piastrelle a Scacchi",
                                items = {
                                    DEMI.FloorTilesCheckeredBlue,
                                    DEMI.FloorTilesCheckeredYellow,
                                    DEMI.FloorTilesCheckeredGray,
                                    DEMI.FloorTilesCheckeredWhite,
                                    DEMI.FloorTilesCheckeredBeige
                                }
                            },
                            {
                                name = "Industriale",
                                items = {
                                    DEMI.FloorConcrete,
                                    DEMI.FloorAsphaltLight,
                                    DEMI.FloorAsphaltDark,
                                    DEMI.FloorCatwalk
                                }
                            }
                        }
                    },
                    {
                        name = "Scale",
                        items = {
                            DEMI.StairsWhiteIndustrial,
                            DEMI.StairsMetal,
                            DEMI.StairsLightBrown,
                            DEMI.StairsBrown,
                            DEMI.StairsDarkBrown,
                            DEMI.StairsWhiteMotel,
                        }
                    },
                    {
                        name = "Recinti",
                        items = {
                            {
                                name = "Alti",
                                items = {
                                    DEMI.FenceChainAndRazor,
                                    DEMI.FenceChain,
                                    DEMI.FenceWroughtIron,
                                    DEMI.FenceWired,
                                    DEMI.FenceWiredRazor,
                                    DEMI.FenceTallDecorativeWood,
                                    DEMI.FencePostDecorativeWood
                                }
                            },
                            {
                                name = "Bassi",
                                items = {
                                    DEMI.FenceWoodGray,
                                    DEMI.FencePostGrayWood,
                                    DEMI.FenceWoodLightBrown,
                                    DEMI.FencePostLightBrownWood,
                                    DEMI.FencePicketWhite,
                                    DEMI.FencePostPicketWhite,
                                    DEMI.FencePlainWood,
                                    DEMI.FencePostPlainWood
                                }
                            },
                            {
                                name = "Ringhiere",
                                items = {
                                    DEMI.RailingWood,
                                    DEMI.RailingPostWood,
                                    DEMI.RailingWhiteWood,
                                    DEMI.RailingPostWhiteWood,
                                    DEMI.RailingWoodMetal,
                                    DEMI.RailingMetalBars,
                                    DEMI.RailingMotel,
                                    DEMI.RailingPostMotel,
                                    DEMI.FenceBeigeRail,
                                    DEMI.FencePostBeigeRail,
                                    DEMI.FenceGrayRail,
                                    DEMI.FencePostGrayRail,

                                }
                            },
                            {
                                name = "Altro",
                                items = {
                                    DEMI.FenceHBarrier,
                                    DEMI.FencePostWooden,
									DEMI.FencePostGreenMetal,
									DEMI.FenceBrickRough,
                                    DEMI.FencePostRoughBrick,
                                }
                            }
                        }
                    },
                    {
                        name = "Tetto",
                        items = {
                            {
                                name = "Tegole Nere",
                                items = {
                                    DEMI.RoofShingleBlackFlat,
                                    DEMI.RoofShingleBlackPitched1,
                                    DEMI.RoofShingleBlackPitched2,
                                    DEMI.RoofShingleBlackPitched3,
                                    DEMI.RoofShingleBlackInner1,
                                    DEMI.RoofShingleBlackInner2,
                                    DEMI.RoofShingleBlackInner3,
                                    DEMI.RoofShingleBlackOuter1,
                                    DEMI.RoofShingleBlackOuter2,
                                    DEMI.RoofShingleBlackOuter3,
                                    DEMI.RoofShingleBlackValley1,
                                    DEMI.RoofShingleBlackValley2,
                                    DEMI.RoofShingleBlackValley3,
                                }
                            },
                            {
                                name = "Tegole Marroni",
                                items = {
                                    DEMI.RoofShingleBrownFlat,
                                    DEMI.RoofShingleBrownPitched1,
                                    DEMI.RoofShingleBrownPitched2,
                                    DEMI.RoofShingleBrownPitched3,
                                    DEMI.RoofShingleBrownInner1,
                                    DEMI.RoofShingleBrownInner2,
                                    DEMI.RoofShingleBrownInner3,
                                    DEMI.RoofShingleBrownOuter1,
                                    DEMI.RoofShingleBrownOuter2,
                                    DEMI.RoofShingleBrownOuter3,
                                    DEMI.RoofShingleBrownValley1,
                                    DEMI.RoofShingleBrownValley2,
                                    DEMI.RoofShingleBrownValley3,
                                }
                            },
                            {
                                name = "Vetro",
                                items = {
                                    DEMI.RoofShingleGlassFlat,
                                    DEMI.RoofShingleGlassPitched1,
                                    DEMI.RoofShingleGlassPitched2,
                                    DEMI.RoofShingleGlassPitched3,
                                    DEMI.RoofShingleGlassInner1,
                                    DEMI.RoofShingleGlassInner2,
                                    DEMI.RoofShingleGlassInner3,
                                    DEMI.RoofShingleGlassOuter1,
                                    DEMI.RoofShingleGlassOuter2,
                                    DEMI.RoofShingleGlassOuter3,
                                    DEMI.RoofShingleGlassValley1,
                                    DEMI.RoofShingleGlassValley2,
                                    DEMI.RoofShingleGlassValley3,
                                }
                            },
                            {
                                name = "Tenda Verde",
                                items = {
                                    DEMI.RoofGreenTentFront1,
                                    DEMI.RoofGreenTentFront2,
                                    DEMI.RoofGreenTentFront3,
                                    DEMI.RoofGreenTentRear1,
                                    DEMI.RoofGreenTentRear2,
                                    DEMI.RoofGreenTentRear3,
                                    DEMI.RoofGreenTentOverhang1,
                                    DEMI.RoofGreenTentOverhang2,
                                }
                            },
                            {
                                name = "Tenda Beige",
                                items = {
                                    DEMI.RoofTanTentFront1,
                                    DEMI.RoofTanTentFront2,
                                    DEMI.RoofTanTentFront3,
                                    DEMI.RoofTanTentRear1,
                                    DEMI.RoofTanTentRear2,
                                    DEMI.RoofTanTentRear3,
                                    DEMI.RoofTanTentOverhang1,
                                    DEMI.RoofTanTentOverhang2,
                                }
                            },
                            {
                                name = "Altro",
                                items = {
                                    DEMI.BrownWood,
                                    DEMI.LightBrownWood,
                                    DEMI.GreenWood,
                                    DEMI.RedWood,
                                    DEMI.White,
                                }
                            }
                        }
                    },
                    {
                        name = "Porte",
                        items = {
                            {
                                name = "Garage",
                                items = {
                                    DEMI.DoorGarageWhite,
                                    DEMI.DoorGarageGreen,
                                    DEMI.DoorGarageGray,
                                    DEMI.DoorGarageRolling,
                                    DEMI.DoorGarageRedWindow,
                                    DEMI.DoorGarageGrayWindow
                                }
                            },
                            {
                                name = "Solide",
                                items = {
                                    DEMI.DoorWhite,
                                    DEMI.DoorBrown,
                                    DEMI.DoorBlue,
                                    DEMI.DoorCherry,
                                    DEMI.DoorSolidBlue,
                                    DEMI.DoorSolidGray,
                                    DEMI.DoorSolidBeige,
                                    DEMI.DoorSolidTan,
                                    DEMI.DoorSolidRedKickplate,
                                    DEMI.DoorSolidBlackKickplate,
                                    DEMI.DoorSolidPileOCrepeOrange,
                                    DEMI.DoorSolidPizzaWhirledGreen,
                                    DEMI.DoorSolidSpiffosRed
                                }
                            },
                            {
                                name = "Pannello Singolo",
                                items = {
                                    DEMI.DoorSinglePaneBlack,
                                    DEMI.DoorSinglePaneChestnut,
                                    DEMI.DoorTan,
                                    DEMI.DoorBlack,
                                    DEMI.DoorWhiteKitchen,
                                    DEMI.DoorPileOCrepeBlue
                                }
                            },
                            {
                                name = "Pannello Doppio",
                                items = {
                                    DEMI.DoorSecurity,
                                    DEMI.Door2PanelBlack,
                                    DEMI.DoorPizzaWhirledBrown,
                                    DEMI.DoorSeahorseBrown,
                                    DEMI.DoorSpiffosBrown,
                                    DEMI.DoorFossoilBlue,
                                    DEMI.DoorGas2GoRed
                                }
                            },
                            {
                                name = "4 Pannelli",
                                items = {
                                    DEMI.Door4PanelBrown,
                                    DEMI.Door4PanelWhite
                                }
                            },
                            {
                                name = "Doppia",
                                items = {
                                    DEMI.DoorDoubleBlackGlassR,
                                    DEMI.DoorDoubleBlackGlassL,
                                    DEMI.DoorDoubleGraySolidR,
                                    DEMI.DoorDoubleGraySolidL,
                                    DEMI.DoorDoubleOrangeKitchenR,
                                    DEMI.DoorDoubleOrangeKitchenL,
                                    DEMI.DoorDoubleBluePanelR,
                                    DEMI.DoorDoubleBluePanelL,
                                    DEMI.DoorDoubleBrownPanelR,
                                    DEMI.DoorDoubleBrownPanelL
                                }
                            },
                            {
                                name = "Bassa",
                                items = {
                                    DEMI.DoorLowWooden,
                                    DEMI.DoorLowWhite,
                                    DEMI.DoorLowMetal
                                }
                            },
                            {
                                name = "Altro",
                                items = {
                                    DEMI.DoorPrisonCell,
                                    DEMI.DoorMallSecurityGrate,
                                    DEMI.DoorCurtainOrange,
                                    DEMI.DoorCurtainWhite,
                                    DEMI.DoorCurtainGray
                                }
                            }
                        }
                    },
                    {
                        name = "Telai delle Porte",
                        items = {
                            DEMI.DoorTrimWhite,
                            DEMI.DoorTrimChestnut,
                            DEMI.DoorTrimBlack,
                            DEMI.DoorTrimWalnut,
                            DEMI.DoorTrimEspresso,
                            DEMI.AwningBlueWhite,
                            DEMI.DoorFrameBlackL,
                            DEMI.DoorFrameBlackR,
                            DEMI.DoorFrameWhiteL,
                            DEMI.DoorFrameWhiteR,
                            DEMI.DoorFrameBrownL,
                            DEMI.DoorFrameBrownR,
                            DEMI.DoorFrameGrayL,
                            DEMI.DoorFrameGrayR,
                            DEMI.DoorFrameWhiteDecoL,
                            DEMI.DoorFrameWhiteDecoR,
                            DEMI.DoorFrameMetalGrate
                        }
                    },
                    {
                        name = "Finestre",
                        items = {
                            DEMI.Window1,
                            DEMI.Window2,
                            DEMI.Window3,
                            DEMI.Window4,
                            DEMI.Window5,
                            DEMI.Window6,
                        }
                    },
                    {
                        name = "Tende",
                        items = {
                            {
                                name = "Verde",
                                items = {
                                    DEMI.TentWallGreen,
                                    DEMI.TentWindowGreen,
                                    DEMI.TentDoorGreen,
                                    DEMI.TentGreenPillar,
                                    DEMI.TentGreenFlap,
                                    DEMI.TentGreenWallAngle1,
                                    DEMI.TentGreenWallAngle2,
                                    DEMI.TentGreenWallAngle3,
                                    DEMI.TentGreenWallAngle4,
                                    DEMI.TentGreenWallAngle5,
                                    DEMI.TentGreenWallAngle6,
                                }
                            },
                            {
                                name = "Beige",
                                items = {
                                    DEMI.TentWallTan,
                                    DEMI.TentWindowTan,
                                    DEMI.TentDoorTan,
                                    DEMI.TentTanPillar,
                                    DEMI.TentTanFlap,
                                    DEMI.TentTanWallAngle1,
                                    DEMI.TentTanWallAngle2,
                                    DEMI.TentTanWallAngle3,
                                    DEMI.TentTanWallAngle4,
                                    DEMI.TentTanWallAngle5,
                                    DEMI.TentTanWallAngle6,
                                }
                            }
                        }
                    }
                }
            },
            {
                name = "Mobilio",
                items = {
                    {
                        name = "Tavoli",
                        items = {
                            {
                                name = "Piccoli",
                                items = {
                                    DEMI.HighRedBrown,
                                    DEMI.RoundBrown,
                                    DEMI.RoundBeige,
                                    DEMI.HighBeige,
                                    DEMI.Square,
                                    DEMI.SquareGray,
                                    DEMI.HighBrown,
                                    DEMI.RedBrownEnd,
                                    DEMI.BeigeEnd,
                                    DEMI.WhiteEnd,
                                    DEMI.SquareBeige
                                }
                            },
                            {
                                name = "Grandi",
                                items = {
                                    DEMI.TableLargePileocrepe,
                                    DEMI.TableLargeHigh1,
                                    DEMI.TableLargeHigh2,
                                    DEMI.TableLargeHigh3,
                                    DEMI.TableLargeHigh4,
                                    DEMI.TableLargeOfficeBrown,
                                    DEMI.TableLargeHigh5,
                                    DEMI.TableLargeHigh6,
                                    DEMI.TableLargeWorkWhite,
                                    DEMI.TableLargeFoldingBeige1,
                                    DEMI.TableLargeFoldingBeige2,
                                    DEMI.TableLargeFoldingBeige3,
                                    DEMI.TableLargeCoffee,
                                }
                            }
                        }
                    },
                    {
                        name = "Letti",
                        items = {
                            DEMI.BedGray,
                            DEMI.BedBlue,
                            DEMI.BedBrown,
                            DEMI.BedBeige,
                            DEMI.BedBunkRed,
                            DEMI.BedFolding,
                            DEMI.BedBunkGray
                        }
                    },
                    {
                        name = "Librerie",
                        items = {
                            DEMI.BookshelfBrown,
                            DEMI.BookshelfWhite
                        }
                    },
                    {
                        name = "Panche",
                        items = {
                            DEMI.BenchMall,
                            DEMI.BenchTrailer,
                            DEMI.BenchPadded
                        }
                    },
                    {
                        name = "Sedie di Legno",
                        items = {
                            DEMI.ChairWoodenBeige,
                            DEMI.ChairWoodenBrown,
                            DEMI.ChairWoodenDarkBrown,
                            DEMI.ChairWoodenRed,
                            DEMI.ChairWoodenWhite,
                            DEMI.ChairWoodenYellow
                        }
                    },
                    {
                        name = "Sedie Semplici",
                        items = {
                            DEMI.ChairOfficeBlack,
                            DEMI.ChairSchoolBlue,
                            DEMI.ChairMetalGray
                        }
                    },
                    {
                        name = "Sedie Imbottite",
                        items = {
                            DEMI.ChairPaddedBlack,
                            DEMI.ChairPaddedGreen,
                            DEMI.ChairPaddedRed,
                            DEMI.ChairPaddedBeige,
                            DEMI.ChairPaddedBlue,
                            DEMI.ChairPaddedBlackLeather
                        }
                    },
                    {
                        name = "Divani",
                        items = {
                            DEMI.ChairArmBlue,
                            DEMI.ChairArmPowderBlue,
                            DEMI.ChairArmBrown,
                            DEMI.ChairArmGray,
                            DEMI.ChairArmBeige,
                            DEMI.ChairArmGreen,
                            DEMI.ChairArmOrange,
                            DEMI.ChairArmPurple,
                            DEMI.ChairArmYellow
                        }
                    },
                    {
                        name = "Sgabelli",
                        items = {
                            DEMI.FootstoolOrange,
                            DEMI.StoolDiner,
                            DEMI.StoolBlack,
                            DEMI.StoolBarBlack,
                            DEMI.StoolBarBrown,
                            DEMI.StoolSpiffos,
                            DEMI.StoolBrown
                        }
                    },
                    {
                        name = "Cassettiere",
                        items = {
                            DEMI.DresserBeige,
                            DEMI.DresserBeigeNightstand,
                            DEMI.DresserDarkBrown,
                            DEMI.DresserGray,
                            DEMI.DresserWhite
                        }
                    }
                }
            },
            {
                name = "Decorazioni",
                items = {
                    {
                        name = "Da Parete",
                        items = {
                            {
                                name = "Ristorante",
                                items = {
                                    DEMI.SignTodaySpecial,
                                    DEMI.SignPurplePie,
                                    DEMI.SignBluePie,
                                    DEMI.SignGreenPie,
                                    DEMI.SignPinkPie,
                                    DEMI.SignJuice
                                }
                            },
                            {
                                name = "Medico",
                                items = {
                                    DEMI.DecoHeartDiagram,
                                    DEMI.DecoDiploma1,
                                    DEMI.DecoDiploma2,
                                    DEMI.DecoEyeChart
                                }
                            },
                            {
                                name = "Film",
                                items = {
                                    DEMI.PosterHorror,
                                    DEMI.PosterRomance,
                                    DEMI.PosterAction
                                }
                            },
                            {
                                name = "Poster",
                                items = {
                                    DEMI.PosterWanted,
                                    DEMI.PosterPolice,
                                    DEMI.PosterColorful1,
                                    DEMI.PosterColorful2,
                                    DEMI.PosterColorful3
                                }
                            },
                            {
                                name = "Dipinti",
                                items = {
                                    DEMI.PosterPacMan,
                                    DEMI.PosterLandscape,
                                    DEMI.PosterElegantLady,
                                    DEMI.PosterWomanPortrait,
                                    DEMI.PosterNoClue,
                                    DEMI.PosterPossibleShop
                                }
                            },
                            {
                                name = "Altro",
                                items = {
                                    DEMI.DecoAmericanFlag,
                                    DEMI.DecoStateFlag,
                                    DEMI.DecoForLease,
                                    DEMI.DecoWallClock,
                                    DEMI.DecoMensRoom,
                                    DEMI.DecoLadyRoom
                                }
                            }
                        }
                    },
                    {
                        name = "Aiuole",
                        items = {
                            {
                                name = "Solo Fiori",
                                items = {
                                    DEMI.FlowerBedBlue,
                                    DEMI.FlowerBedYellow,
                                    DEMI.FlowerBedPurple,
                                    DEMI.FlowerBedPink,
                                    DEMI.FlowerBedGray,
                                    DEMI.FlowerBedWhite
                                }
                            },
                            {
                                name = "Bordo di Pietra",
                                items = {
                                    DEMI.FlowerBedPurpleAndPinkSide,
                                    DEMI.FlowerBedPurpleAndPinkCorner,
                                    DEMI.FlowerBedPurpleAndPinkPost,
                                    DEMI.FlowerBedGrayAndWhiteSide,
                                    DEMI.FlowerBedGrayAndWhiteCorner,
                                    DEMI.FlowerBedGrayAndWhitePost
                                }
                            }
                        }
                    },
					{
						name = "Spazzatura di Dylan",
						items = {
							{
								name = "Scatole",
								items = {
									DEMI.DJunkBoxes1,
									DEMI.DJunkBoxes2,
									DEMI.DJunkBoxes3,
									DEMI.DJunkBoxes4,
									DEMI.DJunkBoxes5,
									DEMI.DJunkBoxes6
								}
							},
							{
								name = "Elettrodomestici",
								items = {
									DEMI.OvenDJunk1,
									DEMI.OvenDJunk2,
									DEMI.FridgeDJunk1,
									DEMI.FridgeDJunk2,
									DEMI.FridgeDJunk3,
									DEMI.WasherDJunk1,
									DEMI.WasherDJunk2,
									DEMI.WasherDJunk3
								}
							},
							{
								name = "Pile",
								items = {
									DEMI.DJunkPile1,
									DEMI.DJunkPile2,
									DEMI.DJunkPile3,
									DEMI.DJunkPile4,
									DEMI.DJunkPile5,
									DEMI.DJunkPile6
								}
							},
							{
								name = "Altro",
								items = {
									DEMI.DJunkRustySafe,
									DEMI.DJunkMechanicsToolchest,
									DEMI.DJunkMechanicsRollingCart
								}
							}
						}
					},
                    {
                        name = "Camino",
                        items = {
                            DEMI.Fireplace
                        }
                    },
                    {
                        name = "Altro",
                        items = {
                            DEMI.BrickPallet,
                            DEMI.ClothingRackLarge,
                            DEMI.BarrelMetal,
                            DEMI.RecyclingBin2
                        }
                    },
                    {
                        name = "Stradali",
                        items = {
                            DEMI.ParkingMeter,
                            DEMI.Mailbox,
                            DEMI.FireHydrant,
                            DEMI.TrafficCone1,
                            DEMI.TrafficCone2,
                            DEMI.ConstructionHorse
                        }
                    },
                    {
                        name = "Cartelli Stradali",
                        items = {
                            DEMI.RoadsignDriveThroughArrow,
                            DEMI.RoadsignStopCar,
                            DEMI.RoadsignSale
                        }
                    }
                }
            },
            {
                name = "Contenitori",
                items = {
                    {
                        name = "Casse",
                        items = {
                            DEMI.CrateHalf,
                            DEMI.BoxCardboard,
                            DEMI.BoxCardboardSmall,
                            DEMI.BoxCardboardBig,
                            DEMI.BoxCardboardBroken,
                            DEMI.SafelockSmall,
                            DEMI.SafelockMedium,
                            DEMI.SafelockLarge
                        }
                    },
                    {
                        name = "Armadietti",
                        items = {
                            DEMI.LockerGun,
                            DEMI.LockerMilitary,
                            DEMI.LockerMetal,
                            DEMI.LockerBoxes,
                            DEMI.LockerBlue,
                            DEMI.LockerYellow
                        }
                    },
                    {
                        name = "Schedari",
                        items = {
                            DEMI.FilingCabinetGray,
                            DEMI.FilingCabinetYellow
                        }
                    },
                    {
                        name = "Bidoni",
                        items = {
                            {
                                name = "Metallo",
                                items = {
                                    DEMI.BinSteel,
                                    DEMI.BinRecyclingBin
                                }
                            },
                            {
                                name = "Pietra",
                                items = {
                                    DEMI.BinMall
                                }
                            },
                            {
                                name = "Legno",
                                items = {
                                    DEMI.BinPizzaWhirled,
                                    DEMI.BinSpiffos,
                                    DEMI.BinFossoil,
                                    DEMI.BinFactory,
                                    DEMI.BinSmall
                                }
                            }
                        }
                    },
                    {
                        name = "Banchi",
                        items = {
                            {
                                name = "Residenziale",
                                items = {
                                    DEMI.CounterModern,
                                    DEMI.CounterModernCorner,
                                    DEMI.CounterWooden,
                                    DEMI.CounterWoodenCorner,
                                    DEMI.CounterBirchwood,
                                    DEMI.CounterBirchwoodCorner,
                                    DEMI.CounterOak,
                                    DEMI.CounterOakCorner,
                                    DEMI.CounterDark,
                                    DEMI.CounterDarkCorner,
                                    DEMI.CounterGreen,
                                    DEMI.CounterGreenCorner,
                                    DEMI.CounterWhite,
                                    DEMI.CounterWhiteCorner,
                                    DEMI.CounterTrailer,
                                    DEMI.CounterMiniFridge
                                }
                            },
                            {
                                name = "Business",
                                items = {
                                    DEMI.CounterBar,
                                    DEMI.CounterBarCorner,
                                    DEMI.CounterRestaurant,
                                    DEMI.CounterRestaurantCorner,
                                    DEMI.CounterTheater,
                                    DEMI.CounterTheaterCorner,
                                    DEMI.CounterFossoil,
                                    DEMI.CounterFossoilCorner,
                                    DEMI.CounterGas2Go,
                                    DEMI.CounterGas2GoCorner,
                                    DEMI.CounterPizzaWhirled,
                                    DEMI.CounterPizzaWhirledCorner,
                                    DEMI.CounterSeahorseCoffee,
                                    DEMI.CounterSeahorseCoffeeCorner,
                                    DEMI.CounterSpiffo,
                                    DEMI.CounterSpiffoCorner,
                                    DEMI.CounterDiner,
                                    DEMI.CounterDinerCorner,
                                    DEMI.CounterZippee,
                                    DEMI.CounterZippeeCorner,
                                    DEMI.CounterGlassDisplay,
                                    DEMI.CounterGlassDisplayCorner
                                }
                            },
                            {
                                name = "Alto",
                                items = {
                                    DEMI.CounterTrailerUpper,
                                    DEMI.CounterBirchwoodUpper
                                }
                            }
                        }
                    },
                    {
                        name = "Altro",
                        items = {
                            DEMI.CrateGroceryBox,
                            DEMI.CrateOuthouseBox,
                            DEMI.CrateTheatreStorage,
                            DEMI.CrateDogHouse,
                            DEMI.DrawerMedical,
                            DEMI.EndTableDrawer,
                            DEMI.DeskSchoolBrown,
                            DEMI.DeskSchoolGreen,
                            DEMI.TableCoffee
                        }
                    }
                }
            },
            {
                name = "Illuminazione",
                items = {
                    {
                        name = "Esterno",
                        items = {
                            DEMI.LightPole1,
                            DEMI.LightPole2,
                            DEMI.LightPole3,
                            DEMI.LampEmergency,
                            DEMI.LightPoleUV
                        }
                    }
                }
            },
		{
                        name = "LRM",
                        items = {
                            DEMI.LRMMailbox,
                            DEMI.LRMMarket,
                            DEMI.LRMExpress,
                            DEMI.LRMMarketMedical,
                            DEMI.LRMMarketMoney,
                            DEMI.LRMMarketAmmo,
                            DEMI.LRMMarketSurvival,
                            DEMI.LRMMarketWeapon,
                            DEMI.LRMMarketFood,
                            DEMI.LRMMarketClothing,
                            DEMI.LRMMarketBook,
                            DEMI.LRMMarketCar
                        }
                    }
        }
    }
end
