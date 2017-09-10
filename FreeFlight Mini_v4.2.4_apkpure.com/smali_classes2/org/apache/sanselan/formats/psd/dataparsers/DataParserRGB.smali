.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserRGB;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserRGB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 7
    .param p1, "data"    # [[[I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 26
    const/4 v5, 0x0

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v3, v5, 0xff

    .line 27
    .local v3, "red":I
    const/4 v5, 0x1

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v2, v5, 0xff

    .line 28
    .local v2, "green":I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v1, v5, 0xff

    .line 29
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 31
    .local v0, "alpha":I
    const/high16 v5, -0x1000000

    and-int/lit16 v6, v3, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x0

    or-int v4, v5, v6

    .line 34
    .local v4, "rgb":I
    return v4
.end method
