.class public Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;
.super Lorg/apache/sanselan/formats/jpeg/segments/Segment;
.source "SOFNSegment.java"


# instance fields
.field public final height:I

.field public final numberOfComponents:I

.field public final precision:I

.field public final width:I


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
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/formats/jpeg/segments/Segment;-><init>(II)V

    .line 43
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SOF0Segment marker_length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    :cond_0
    const-string v0, "Data_precision"

    const-string v1, "Not a Valid JPEG File"

    invoke-virtual {p0, v0, p3, v1}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    iput v0, p0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->precision:I

    .line 48
    const-string v0, "Image_height"

    const-string v1, "Not a Valid JPEG File"

    invoke-virtual {p0, v0, p3, v1}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->height:I

    .line 49
    const-string v0, "Image_Width"

    const-string v1, "Not a Valid JPEG File"

    invoke-virtual {p0, v0, p3, v1}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->read2Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->width:I

    .line 50
    const-string v0, "Number_of_components"

    const-string v1, "Not a Valid JPEG File"

    invoke-virtual {p0, v0, p3, v1}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v0

    iput v0, p0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->numberOfComponents:I

    .line 54
    add-int/lit8 v0, p2, -0x6

    const-string v1, "Not a Valid JPEG File: SOF0 Segment"

    invoke-virtual {p0, p3, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    :cond_1
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
    .line 35
    array-length v0, p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;-><init>(IILjava/io/InputStream;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SOFN (SOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->marker:I

    const v2, 0xffc0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/segments/SOFNSegment;->getSegmentType()Ljava/lang/String;

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
