.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserIndexed.java"


# instance fields
.field private final ColorTable:[I


# direct methods
.method public constructor <init>([B)V
    .locals 9
    .param p1, "ColorModeData"    # [B

    .prologue
    const/16 v8, 0x100

    .line 26
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    .line 27
    new-array v6, v8, [I

    iput-object v6, p0, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;->ColorTable:[I

    .line 28
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 30
    add-int/lit8 v6, v3, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v4, v6, 0xff

    .line 31
    .local v4, "red":I
    add-int/lit16 v6, v3, 0x100

    aget-byte v6, p1, v6

    and-int/lit16 v2, v6, 0xff

    .line 32
    .local v2, "green":I
    add-int/lit16 v6, v3, 0x200

    aget-byte v6, p1, v6

    and-int/lit16 v1, v6, 0xff

    .line 33
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 35
    .local v0, "alpha":I
    const/high16 v6, -0x1000000

    and-int/lit16 v7, v4, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    and-int/lit16 v7, v2, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    and-int/lit16 v7, v1, 0xff

    shl-int/lit8 v7, v7, 0x0

    or-int v5, v6, v7

    .line 38
    .local v5, "rgb":I
    iget-object v6, p0, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;->ColorTable:[I

    aput v5, v6, v3

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v4    # "red":I
    .end local v5    # "rgb":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 3
    .param p1, "data"    # [[[I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 45
    const/4 v2, 0x0

    aget-object v2, p1, v2

    aget-object v2, v2, p3

    aget v2, v2, p2

    and-int/lit16 v1, v2, 0xff

    .line 46
    .local v1, "sample":I
    iget-object v2, p0, Lorg/apache/sanselan/formats/psd/dataparsers/DataParserIndexed;->ColorTable:[I

    aget v0, v2, v1

    .line 48
    .local v0, "rgb":I
    return v0
.end method
