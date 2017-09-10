.class public Lorg/apache/sanselan/formats/tiff/TiffHeader;
.super Lorg/apache/sanselan/formats/tiff/TiffElement;
.source "TiffHeader.java"


# instance fields
.field public final byteOrder:I

.field public final offsetToFirstIFD:I

.field public final tiffVersion:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "byteOrder"    # I
    .param p2, "tiffVersion"    # I
    .param p3, "offsetToFirstIFD"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/formats/tiff/TiffElement;-><init>(II)V

    .line 31
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->byteOrder:I

    .line 32
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->tiffVersion:I

    .line 33
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/TiffHeader;->offsetToFirstIFD:I

    .line 34
    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 1
    .param p1, "verbose"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TIFF Header"

    goto :goto_0
.end method
