.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "JpegXmpParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 31
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->setByteOrder(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public isXmpJpegSegment([B)Z
    .locals 4
    .param p1, "segmentData"    # [B

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "index":I
    array-length v2, p1

    sget-object v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 45
    :goto_0
    return v1

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    sget-object v2, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 42
    aget-byte v2, p1, v0

    sget-object v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    aget-byte v3, v3, v0

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public parseXmpJpegSegment([B)Ljava/lang/String;
    .locals 5
    .param p1, "segmentData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "index":I
    array-length v3, p1

    sget-object v4, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 54
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "Invalid JPEG XMP Segment."

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 56
    aget-byte v3, p1, v1

    sget-object v4, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->XMP_IDENTIFIER:[B

    aget-byte v4, v4, v1

    if-ge v3, v4, :cond_0

    .line 57
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "Invalid JPEG XMP Segment."

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p1

    sub-int/2addr v3, v1

    const-string v4, "utf-8"

    invoke-direct {v2, p1, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v2, "xml":Ljava/lang/String;
    return-object v2

    .line 65
    .end local v2    # "xml":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/sanselan/ImageReadException;

    const-string v4, "Invalid JPEG XMP Segment."

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
