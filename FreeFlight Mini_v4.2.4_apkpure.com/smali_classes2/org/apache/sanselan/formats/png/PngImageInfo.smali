.class public Lorg/apache/sanselan/formats/png/PngImageInfo;
.super Lorg/apache/sanselan/ImageInfo;
.source "PngImageInfo.java"


# instance fields
.field private final textChunks:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "formatDetails"    # Ljava/lang/String;
    .param p2, "bitsPerPixel"    # I
    .param p3, "comments"    # Ljava/util/ArrayList;
    .param p4, "format"    # Lorg/apache/sanselan/ImageFormat;
    .param p5, "formatName"    # Ljava/lang/String;
    .param p6, "height"    # I
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "numberOfImages"    # I
    .param p9, "physicalHeightDpi"    # I
    .param p10, "physicalHeightInch"    # F
    .param p11, "physicalWidthDpi"    # I
    .param p12, "physicalWidthInch"    # F
    .param p13, "width"    # I
    .param p14, "isProgressive"    # Z
    .param p15, "isTransparent"    # Z
    .param p16, "usesPalette"    # Z
    .param p17, "colorType"    # I
    .param p18, "compressionAlgorithm"    # Ljava/lang/String;
    .param p19, "textChunks"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p18}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 43
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/apache/sanselan/formats/png/PngImageInfo;->textChunks:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getTextChunks()Ljava/util/List;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/PngImageInfo;->textChunks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
