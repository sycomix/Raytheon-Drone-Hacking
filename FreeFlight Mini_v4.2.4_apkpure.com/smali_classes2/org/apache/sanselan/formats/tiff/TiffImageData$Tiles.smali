.class public Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;
.super Lorg/apache/sanselan/formats/tiff/TiffImageData;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tiles"
.end annotation


# instance fields
.field private final tileLength:I

.field private final tileWidth:I

.field public final tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;


# direct methods
.method public constructor <init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;II)V
    .locals 0
    .param p1, "tiles"    # [Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .param p2, "tileWidth"    # I
    .param p3, "tileLength"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageData;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    .line 42
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tileWidth:I

    .line 43
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tileLength:I

    .line 44
    return-void
.end method


# virtual methods
.method public getDataReader(Ljava/util/ArrayList;Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIII)Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
    .locals 12
    .param p1, "entries"    # Ljava/util/ArrayList;
    .param p2, "photometricInterpreter"    # Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .param p3, "bitsPerPixel"    # I
    .param p4, "bitsPerSample"    # [I
    .param p5, "predictor"    # I
    .param p6, "samplesPerPixel"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "compression"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;

    iget v2, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tileWidth:I

    iget v3, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tileLength:I

    move-object v1, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderTiled;-><init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;III[IIIIIILorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;)V

    return-object v0
.end method

.method public getImageData()[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;->tiles:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    return-object v0
.end method

.method public stripsNotTiles()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
