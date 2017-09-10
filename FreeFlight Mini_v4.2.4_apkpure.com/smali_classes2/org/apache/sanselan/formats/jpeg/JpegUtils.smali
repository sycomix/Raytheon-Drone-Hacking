.class public Lorg/apache/sanselan/formats/jpeg/JpegUtils;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "JpegUtils.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 32
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->setByteOrder(I)V

    .line 33
    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1
    .param p0, "marker"    # I

    .prologue
    .line 119
    packed-switch p0, :pswitch_data_0

    .line 172
    :pswitch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 122
    :pswitch_1
    const-string v0, "SOS_Marker"

    goto :goto_0

    .line 128
    :pswitch_2
    const-string v0, "JPEG_APP1_Marker"

    goto :goto_0

    .line 130
    :pswitch_3
    const-string v0, "JPEG_APP2_Marker"

    goto :goto_0

    .line 132
    :pswitch_4
    const-string v0, "JPEG_APP13_Marker"

    goto :goto_0

    .line 134
    :pswitch_5
    const-string v0, "JPEG_APP14_Marker"

    goto :goto_0

    .line 136
    :pswitch_6
    const-string v0, "JPEG_APP15_Marker"

    goto :goto_0

    .line 138
    :pswitch_7
    const-string v0, "JFIFMarker"

    goto :goto_0

    .line 140
    :pswitch_8
    const-string v0, "SOF0Marker"

    goto :goto_0

    .line 142
    :pswitch_9
    const-string v0, "SOF1Marker"

    goto :goto_0

    .line 144
    :pswitch_a
    const-string v0, "SOF2Marker"

    goto :goto_0

    .line 146
    :pswitch_b
    const-string v0, "SOF3Marker"

    goto :goto_0

    .line 148
    :pswitch_c
    const-string v0, "SOF4Marker"

    goto :goto_0

    .line 150
    :pswitch_d
    const-string v0, "SOF5Marker"

    goto :goto_0

    .line 152
    :pswitch_e
    const-string v0, "SOF6Marker"

    goto :goto_0

    .line 154
    :pswitch_f
    const-string v0, "SOF7Marker"

    goto :goto_0

    .line 156
    :pswitch_10
    const-string v0, "SOF8Marker"

    goto :goto_0

    .line 158
    :pswitch_11
    const-string v0, "SOF9Marker"

    goto :goto_0

    .line 160
    :pswitch_12
    const-string v0, "SOF10Marker"

    goto :goto_0

    .line 162
    :pswitch_13
    const-string v0, "SOF11Marker"

    goto :goto_0

    .line 164
    :pswitch_14
    const-string v0, "SOF12Marker"

    goto :goto_0

    .line 166
    :pswitch_15
    const-string v0, "SOF13Marker"

    goto :goto_0

    .line 168
    :pswitch_16
    const-string v0, "SOF14Marker"

    goto :goto_0

    .line 170
    :pswitch_17
    const-string v0, "SOF15Marker"

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public dumpJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)V
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/JpegUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/formats/jpeg/JpegUtils$1;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegUtils;)V

    .line 206
    .local v0, "visitor":Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V

    .line 207
    return-void
.end method

.method public traverseJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;)V
    .locals 13
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "visitor"    # Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v9, 0x0

    .line 59
    .local v9, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 61
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->SOI:[B

    const-string v11, "Not a Valid JPEG File: doesn\'t begin with 0xffd8"

    invoke-virtual {p0, v9, v0, v11}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->readAndVerifyBytes(Ljava/io/InputStream;[BLjava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->getByteOrder()I

    move-result v6

    .line 66
    .local v6, "byteOrder":I
    const/4 v10, 0x0

    .line 68
    .local v10, "markerCount":I
    :goto_0
    const-string v0, "markerBytes"

    const/4 v11, 0x2

    const-string v12, "markerBytes"

    invoke-virtual {p0, v0, v11, v9, v12}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v2

    .line 70
    .local v2, "markerBytes":[B
    const-string v0, "marker"

    invoke-virtual {p0, v0, v2, v6}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->convertByteArrayToShort(Ljava/lang/String;[BI)I

    move-result v1

    .line 76
    .local v1, "marker":I
    const v0, 0xffd9

    if-eq v1, v0, :cond_0

    const v0, 0xffda

    if-ne v1, v0, :cond_2

    .line 78
    :cond_0
    invoke-interface {p2}, Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;->beginSOS()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v7

    .line 112
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p0, v9}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->getStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 82
    .local v8, "imageData":[B
    invoke-interface {p2, v1, v2, v8}, Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;->visitSOS(I[B[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 110
    :catch_1
    move-exception v7

    .line 112
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "imageData":[B
    :cond_2
    :try_start_4
    const-string v0, "segmentLengthBytes"

    const/4 v11, 0x2

    const-string v12, "segmentLengthBytes"

    invoke-virtual {p0, v0, v11, v9, v12}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v4

    .line 88
    .local v4, "segmentLengthBytes":[B
    const-string v0, "segmentLength"

    invoke-virtual {p0, v0, v4, v6}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->convertByteArrayToShort(Ljava/lang/String;[BI)I

    move-result v3

    .line 94
    .local v3, "segmentLength":I
    const-string v0, "Segment Data"

    add-int/lit8 v11, v3, -0x2

    const-string v12, "Invalid Segment: insufficient data"

    invoke-virtual {p0, v0, v11, v9, v12}, Lorg/apache/sanselan/formats/jpeg/JpegUtils;->readByteArray(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v5

    .local v5, "segmentData":[B
    move-object v0, p2

    .line 100
    invoke-interface/range {v0 .. v5}, Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;->visitSegment(I[BI[B[B)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 109
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 110
    :catch_2
    move-exception v7

    .line 112
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "marker":I
    .end local v2    # "markerBytes":[B
    .end local v3    # "segmentLength":I
    .end local v4    # "segmentLengthBytes":[B
    .end local v5    # "segmentData":[B
    .end local v6    # "byteOrder":I
    .end local v10    # "markerCount":I
    :catchall_0
    move-exception v0

    .line 109
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 113
    :goto_2
    throw v0

    .line 110
    :catch_3
    move-exception v7

    .line 112
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
