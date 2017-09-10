.class public Lorg/apache/sanselan/formats/tiff/JpegImageData;
.super Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
.source "JpegImageData.java"


# direct methods
.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "data"    # [B

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;-><init>(II[B)V

    .line 25
    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Jpeg image data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/JpegImageData;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
