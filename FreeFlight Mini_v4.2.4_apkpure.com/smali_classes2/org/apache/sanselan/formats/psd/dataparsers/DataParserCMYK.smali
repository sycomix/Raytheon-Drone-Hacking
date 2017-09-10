.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserCMYK;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserCMYK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x4

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 6
    .param p1, "data"    # [[[I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 27
    const/4 v5, 0x0

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v1, v5, 0xff

    .line 28
    .local v1, "sc":I
    const/4 v5, 0x1

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v3, v5, 0xff

    .line 29
    .local v3, "sm":I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v4, v5, 0xff

    .line 30
    .local v4, "sy":I
    const/4 v5, 0x3

    aget-object v5, p1, v5

    aget-object v5, v5, p3

    aget v5, v5, p2

    and-int/lit16 v2, v5, 0xff

    .line 33
    .local v2, "sk":I
    rsub-int v1, v1, 0xff

    .line 34
    rsub-int v3, v3, 0xff

    .line 35
    rsub-int v4, v4, 0xff

    .line 36
    rsub-int v2, v2, 0xff

    .line 38
    invoke-static {v1, v3, v4, v2}, Lorg/apache/sanselan/color/ColorConversions;->convertCMYKtoRGB(IIII)I

    move-result v0

    .line 40
    .local v0, "rgb":I
    return v0
.end method
