.class public Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;
.super Lorg/apache/sanselan/formats/jpeg/segments/Segment;
.source "JFIFSegment.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# instance fields
.field public final densityUnits:I

.field public final jfifMajorVersion:I

.field public final jfifMinorVersion:I

.field public final thumbnailSize:I

.field public final xDensity:I

.field public final xThumbnail:I

.field public final yDensity:I

.field public final yThumbnail:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 3
    .param p1, "marker"    # I
    .param p2, "marker_length"    # I
    .param p3, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;-><init>(II)V

    .line 54
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->JFIF0_SIGNATURE:[B

    array-length v1, v1

    invoke-virtual {p0, p3, v1}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 55
    .local v0, "signature":[B
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->JFIF0_SIGNATURE:[B

    invoke-virtual {p0, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->compareByteArrays([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->JFIF0_SIGNATURE_ALTERNATIVE:[B

    invoke-virtual {p0, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->compareByteArrays([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "Not a Valid JPEG File: missing JFIF string"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    const-string v1, "JFIF_major_version"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->jfifMajorVersion:I

    .line 62
    const-string v1, "JFIF_minor_version"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->jfifMinorVersion:I

    .line 64
    const-string v1, "density_units"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->densityUnits:I

    .line 65
    const-string v1, "x_density"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->xDensity:I

    .line 66
    const-string v1, "y_density"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->yDensity:I

    .line 68
    const-string v1, "x_thumbnail"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->xThumbnail:I

    .line 69
    const-string v1, "y_thumbnail"

    const-string v2, "Not a Valid JPEG File"

    invoke-virtual {p0, v1, p3, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->yThumbnail:I

    .line 70
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->xThumbnail:I

    iget v2, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->yThumbnail:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->thumbnailSize:I

    .line 71
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->thumbnailSize:I

    if-lez v1, :cond_1

    .line 73
    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->thumbnailSize:I

    const-string v2, "Not a Valid JPEG File: missing thumbnail"

    invoke-virtual {p0, p3, v1, v2}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_2
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "marker"    # I
    .param p2, "segmentData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;-><init>(IILjava/io/InputStream;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "JFIF ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/JFIFSegment;->getSegmentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
