.class public abstract Lorg/apache/sanselan/formats/tiff/TiffImageData;
.super Ljava/lang/Object;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;,
        Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;,
        Lorg/apache/sanselan/formats/tiff/TiffImageData$Tiles;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public abstract getDataReader(Ljava/util/ArrayList;Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIII)Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation
.end method

.method public abstract getImageData()[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
.end method

.method public abstract stripsNotTiles()Z
.end method
