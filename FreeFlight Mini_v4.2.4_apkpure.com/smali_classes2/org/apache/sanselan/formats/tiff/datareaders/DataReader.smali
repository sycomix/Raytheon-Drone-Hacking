.class public abstract Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field protected final bitsPerSample:[I

.field private count:I

.field protected final last:[I

.field protected final photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

.field protected final predictor:I

.field protected final samplesPerPixel:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;[III)V
    .locals 1
    .param p1, "photometricInterpreter"    # Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;
    .param p2, "bitsPerSample"    # [I
    .param p3, "predictor"    # I
    .param p4, "samplesPerPixel"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->count:I

    .line 44
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->photometricInterpreter:Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;

    .line 45
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    .line 46
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->samplesPerPixel:I

    .line 47
    iput p3, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->predictor:I

    .line 48
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->last:[I

    .line 49
    return-void
.end method


# virtual methods
.method protected applyPredictor([II)[I
    .locals 3
    .param p1, "samples"    # [I
    .param p2, "x"    # I

    .prologue
    .line 82
    iget v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->predictor:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 86
    if-lez p2, :cond_0

    .line 88
    aget v1, p1, v0

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->last:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    .line 90
    :cond_0
    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->last:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_1
    return-object p1
.end method

.method protected decompress([BII)[B
    .locals 8
    .param p1, "compressed"    # [B
    .param p2, "compression"    # I
    .param p3, "expected_size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    sparse-switch p2, :sswitch_data_0

    .line 135
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Tiff: unknown compression: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :sswitch_0
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Tiff: unknown compression: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :sswitch_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    .local v1, "is":Ljava/io/InputStream;
    const/16 v0, 0x8

    .line 115
    .local v0, "LZWMinimumCodeSize":I
    new-instance v2, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;

    const/16 v5, 0x4d

    invoke-direct {v2, v0, v5}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;-><init>(II)V

    .line 118
    .local v2, "myLzwDecompressor":Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;
    invoke-virtual {v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->setTiffLZWMode()V

    .line 120
    invoke-virtual {v2, v1, p3}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->decompress(Ljava/io/InputStream;I)[B

    move-result-object v3

    .local v3, "result":[B
    move-object p1, v3

    .line 131
    .end local v0    # "LZWMinimumCodeSize":I
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "myLzwDecompressor":Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;
    .end local v3    # "result":[B
    .end local p1    # "compressed":[B
    :goto_0
    :sswitch_2
    return-object p1

    .line 127
    .restart local p1    # "compressed":[B
    :sswitch_3
    new-instance v5, Lorg/apache/sanselan/common/PackBits;

    invoke-direct {v5}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    invoke-virtual {v5, p1, p3}, Lorg/apache/sanselan/common/PackBits;->decompress([BI)[B

    move-result-object v4

    .line 129
    .local v4, "unpacked":[B
    iget v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->count:I

    move-object p1, v4

    .line 131
    goto :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8005 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getSamplesAsBytes(Lorg/apache/sanselan/common/BitInputStream;)[I
    .locals 8
    .param p1, "bis"    # Lorg/apache/sanselan/common/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 58
    iget-object v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v5, v5

    new-array v2, v5, [I

    .line 59
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 61
    iget-object v5, p0, Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;->bitsPerSample:[I

    aget v0, v5, v1

    .line 62
    .local v0, "bits":I
    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BitInputStream;->readBits(I)I

    move-result v3

    .line 63
    .local v3, "sample":I
    if-ge v0, v7, :cond_1

    .line 65
    and-int/lit8 v4, v3, 0x1

    .line 66
    .local v4, "sign":I
    rsub-int/lit8 v5, v0, 0x8

    shl-int/2addr v3, v5

    .line 67
    if-lez v4, :cond_0

    .line 68
    const/4 v5, 0x1

    rsub-int/lit8 v6, v0, 0x8

    shl-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    or-int/2addr v3, v5

    .line 74
    .end local v4    # "sign":I
    :cond_0
    :goto_1
    aput v3, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    if-le v0, v7, :cond_0

    .line 72
    add-int/lit8 v5, v0, -0x8

    shr-int/2addr v3, v5

    goto :goto_1

    .line 77
    .end local v0    # "bits":I
    .end local v3    # "sample":I
    :cond_2
    return-object v2
.end method

.method public abstract readImageData(Ljava/awt/image/BufferedImage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
