.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserStub;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserStub.java"


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
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 1
    .param p1, "data"    # [[[I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method
