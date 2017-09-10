.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserLab;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserLab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public getBasicChannelsCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x3

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 5
    .param p1, "data"    # [[[I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 33
    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v2, v4, 0xff

    .line 34
    .local v2, "cieL":I
    const/4 v4, 0x1

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v0, v4, 0xff

    .line 35
    .local v0, "cieA":I
    const/4 v4, 0x2

    aget-object v4, p1, v4

    aget-object v4, v4, p3

    aget v4, v4, p2

    and-int/lit16 v1, v4, 0xff

    .line 37
    .local v1, "cieB":I
    add-int/lit8 v0, v0, -0x80

    .line 38
    add-int/lit8 v1, v1, -0x80

    .line 40
    invoke-static {v2, v0, v1}, Lorg/apache/sanselan/color/ColorConversions;->convertCIELabtoARGBTest(III)I

    move-result v3

    .line 42
    .local v3, "rgb":I
    return v3
.end method
