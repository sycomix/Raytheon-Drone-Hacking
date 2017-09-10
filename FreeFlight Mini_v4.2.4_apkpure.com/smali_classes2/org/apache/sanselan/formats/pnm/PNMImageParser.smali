.class public Lorg/apache/sanselan/formats/pnm/PNMImageParser;
.super Lorg/apache/sanselan/ImageParser;
.source "PNMImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/pnm/PNMConstants;


# static fields
.field private static final ACCEPTED_EXTENSIONS:[Ljava/lang/String;

.field private static final DEFAULT_EXTENSION:Ljava/lang/String; = ".pnm"

.field public static final PARAM_KEY_PNM_RAWBITS:Ljava/lang/String; = "PNM_RAWBITS"

.field public static final PARAM_VALUE_PNM_RAWBITS_NO:Ljava/lang/String; = "NO"

.field public static final PARAM_VALUE_PNM_RAWBITS_YES:Ljava/lang/String; = "YES"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".pbm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".pgm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".ppm"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".pnm"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/sanselan/ImageParser;-><init>()V

    .line 44
    const/16 v0, 0x49

    invoke-super {p0, v0}, Lorg/apache/sanselan/ImageParser;->setByteOrder(I)V

    .line 46
    return-void
.end method

.method private getColorTable([B)[I
    .locals 11
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    array-length v8, p1

    rem-int/lit8 v8, v8, 0x3

    if-eqz v8, :cond_0

    .line 240
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Bad Color Table Length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 242
    :cond_0
    array-length v8, p1

    div-int/lit8 v4, v8, 0x3

    .line 244
    .local v4, "length":I
    new-array v6, v4, [I

    .line 246
    .local v6, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 248
    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x0

    aget-byte v8, p1, v8

    and-int/lit16 v5, v8, 0xff

    .line 249
    .local v5, "red":I
    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v2, v8, 0xff

    .line 250
    .local v2, "green":I
    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v1, v8, 0xff

    .line 252
    .local v1, "blue":I
    const/16 v0, 0xff

    .line 254
    .local v0, "alpha":I
    const/high16 v8, -0x1000000

    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v2, 0x8

    or-int/2addr v8, v9

    shl-int/lit8 v9, v1, 0x0

    or-int v7, v8, v9

    .line 255
    .local v7, "rgb":I
    aput v7, v6, v3

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "alpha":I
    .end local v1    # "blue":I
    .end local v2    # "green":I
    .end local v5    # "red":I
    .end local v7    # "rgb":I
    :cond_1
    return-object v6
.end method

.method private readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/pnm/FileInfo;
    .locals 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    const-string v7, "Identifier1"

    const-string v8, "Not a Valid PNM File"

    invoke-virtual {p0, v7, p1, v8}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v1

    .line 80
    .local v1, "identifier1":B
    const-string v7, "Identifier2"

    const-string v8, "Not a Valid PNM File"

    invoke-virtual {p0, v7, p1, v8}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result v2

    .line 82
    .local v2, "identifier2":B
    new-instance v6, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;

    invoke-direct {v6, p1}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v6, "wsr":Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 85
    .local v5, "width":I
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "height":I
    const/16 v7, 0x50

    if-eq v1, v7, :cond_0

    .line 95
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "PNM file has invalid header."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_0
    const/16 v7, 0x31

    if-ne v2, v7, :cond_1

    .line 98
    new-instance v7, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;

    invoke-direct {v7, v5, v0, v9}, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;-><init>(IIZ)V

    .line 117
    :goto_0
    return-object v7

    .line 99
    :cond_1
    const/16 v7, 0x34

    if-ne v2, v7, :cond_2

    .line 100
    new-instance v7, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;

    invoke-direct {v7, v5, v0, v10}, Lorg/apache/sanselan/formats/pnm/PBMFileInfo;-><init>(IIZ)V

    goto :goto_0

    .line 101
    :cond_2
    const/16 v7, 0x32

    if-ne v2, v7, :cond_3

    .line 103
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 104
    .local v4, "maxgray":I
    new-instance v7, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;

    invoke-direct {v7, v5, v0, v9, v4}, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;-><init>(IIZI)V

    goto :goto_0

    .line 105
    .end local v4    # "maxgray":I
    :cond_3
    const/16 v7, 0x35

    if-ne v2, v7, :cond_4

    .line 107
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 108
    .restart local v4    # "maxgray":I
    new-instance v7, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;

    invoke-direct {v7, v5, v0, v10, v4}, Lorg/apache/sanselan/formats/pnm/PGMFileInfo;-><init>(IIZI)V

    goto :goto_0

    .line 109
    .end local v4    # "maxgray":I
    :cond_4
    const/16 v7, 0x33

    if-ne v2, v7, :cond_5

    .line 111
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    .local v3, "max":I
    new-instance v7, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;

    invoke-direct {v7, v5, v0, v9, v3}, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;-><init>(IIZI)V

    goto :goto_0

    .line 113
    .end local v3    # "max":I
    :cond_5
    const/16 v7, 0x36

    if-ne v2, v7, :cond_6

    .line 115
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/pnm/WhiteSpaceReader;->readtoWhiteSpace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 117
    .restart local v3    # "max":I
    new-instance v7, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;

    invoke-direct {v7, v5, v0, v10, v3}, Lorg/apache/sanselan/formats/pnm/PPMFileInfo;-><init>(IIZI)V

    goto :goto_0

    .line 119
    .end local v3    # "max":I
    :cond_6
    new-instance v7, Lorg/apache/sanselan/ImageReadException;

    const-string v8, "PNM file has invalid header."

    invoke-direct {v7, v8}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/pnm/FileInfo;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 129
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 131
    invoke-direct {p0, v1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/pnm/FileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 136
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_0
    return-object v2

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 136
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 140
    :goto_1
    throw v2

    .line 137
    :catch_1
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v1, "pnm.dumpImageFile"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    .line 225
    .local v0, "imageData":Lorg/apache/sanselan/ImageInfo;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 233
    :goto_0
    return v1

    .line 228
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/apache/sanselan/ImageInfo;->toString(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 231
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "profile"    # [B

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public embedICCProfile([B[B)[B
    .locals 1
    .param p1, "image"    # [B
    .param p2, "profile"    # [B

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAcceptedExtensions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->ACCEPTED_EXTENSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/sanselan/ImageFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNM:Lorg/apache/sanselan/ImageFormat;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const/4 v4, 0x0

    .line 268
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 270
    invoke-direct {p0, v4}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Ljava/io/InputStream;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object v3

    .line 272
    .local v3, "info":Lorg/apache/sanselan/formats/pnm/FileInfo;
    iget v6, v3, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    .line 273
    .local v6, "width":I
    iget v2, v3, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    .line 275
    .local v2, "height":I
    const/4 v1, 0x0

    .line 276
    .local v1, "hasAlpha":Z
    invoke-virtual {p0, p2}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;

    move-result-object v7

    invoke-interface {v7, v6, v2, v1}, Lorg/apache/sanselan/common/IBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object v5

    .line 279
    .local v5, "result":Ljava/awt/image/BufferedImage;
    invoke-virtual {v3, v5, v4}, Lorg/apache/sanselan/formats/pnm/FileInfo;->readImage(Ljava/awt/image/BufferedImage;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :goto_0
    return-object v5

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hasAlpha":Z
    .end local v2    # "height":I
    .end local v3    # "info":Lorg/apache/sanselan/formats/pnm/FileInfo;
    .end local v5    # "result":Ljava/awt/image/BufferedImage;
    .end local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 286
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    :goto_1
    throw v7

    .line 287
    :catch_1
    move-exception v0

    .line 289
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getDefaultExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, ".pnm"

    return-object v0
.end method

.method public getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 26
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct/range {p0 .. p1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object v21

    .line 182
    .local v21, "info":Lorg/apache/sanselan/formats/pnm/FileInfo;
    if-nez v21, :cond_0

    .line 183
    new-instance v8, Lorg/apache/sanselan/ImageReadException;

    const-string v15, "PNM: Couldn\'t read Header"

    invoke-direct {v8, v15}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 185
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v5, "Comments":Ljava/util/ArrayList;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getBitDepth()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getNumComponents()I

    move-result v15

    mul-int v4, v8, v15

    .line 188
    .local v4, "BitsPerPixel":I
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getImageType()Lorg/apache/sanselan/ImageFormat;

    move-result-object v6

    .line 189
    .local v6, "Format":Lorg/apache/sanselan/ImageFormat;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "FormatName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getMIMEType()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "MimeType":Ljava/lang/String;
    const/4 v10, 0x1

    .line 192
    .local v10, "NumberOfImages":I
    const/16 v16, 0x0

    .line 196
    .local v16, "isProgressive":Z
    const/16 v13, 0x48

    .line 197
    .local v13, "PhysicalWidthDpi":I
    move-object/from16 v0, v21

    iget v8, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    int-to-double v0, v8

    move-wide/from16 v22, v0

    int-to-double v0, v13

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v14, v0

    .line 198
    .local v14, "PhysicalWidthInch":F
    const/16 v11, 0x48

    .line 199
    .local v11, "PhysicalHeightDpi":I
    move-object/from16 v0, v21

    iget v8, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    int-to-double v0, v8

    move-wide/from16 v22, v0

    int-to-double v0, v11

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v12, v0

    .line 201
    .local v12, "PhysicalHeightInch":F
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getImageTypeDescription()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "FormatDetails":Ljava/lang/String;
    const/16 v17, 0x0

    .line 204
    .local v17, "isTransparent":Z
    const/16 v18, 0x0

    .line 206
    .local v18, "usesPalette":Z
    invoke-virtual/range {v21 .. v21}, Lorg/apache/sanselan/formats/pnm/FileInfo;->getColorType()I

    move-result v19

    .line 207
    .local v19, "ColorType":I
    const-string v20, "None"

    .line 209
    .local v20, "compressionAlgorithm":Ljava/lang/String;
    new-instance v2, Lorg/apache/sanselan/ImageInfo;

    move-object/from16 v0, v21

    iget v8, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    move-object/from16 v0, v21

    iget v15, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    invoke-direct/range {v2 .. v20}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    .line 215
    .local v2, "result":Lorg/apache/sanselan/ImageInfo;
    return-object v2
.end method

.method public getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 4
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;->readHeader(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/pnm/FileInfo;

    move-result-object v0

    .line 155
    .local v0, "info":Lorg/apache/sanselan/formats/pnm/FileInfo;
    if-nez v0, :cond_0

    .line 156
    new-instance v1, Lorg/apache/sanselan/ImageReadException;

    const-string v2, "PNM: Couldn\'t read Header"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    new-instance v1, Ljava/awt/Dimension;

    iget v2, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->width:I

    iget v3, v0, Lorg/apache/sanselan/formats/pnm/FileInfo;->height:I

    invoke-direct {v1, v2, v3}, Ljava/awt/Dimension;-><init>(II)V

    return-object v1
.end method

.method public getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "Pbm-Custom"

    return-object v0
.end method

.method public getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 9
    .param p1, "src"    # Ljava/awt/image/BufferedImage;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v5, 0x0

    .line 302
    .local v5, "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    const/4 v3, 0x1

    .line 304
    .local v3, "useRawbits":Z
    if-eqz p3, :cond_1

    .line 306
    const-string v6, "PNM_RAWBITS"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 307
    .local v4, "useRawbitsParam":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 309
    const-string v6, "NO"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 310
    const/4 v3, 0x0

    .line 313
    :cond_0
    const-string v6, "FORMAT"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 314
    .local v2, "subtype":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 316
    sget-object v6, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 317
    new-instance v5, Lorg/apache/sanselan/formats/pnm/PBMWriter;

    .end local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    invoke-direct {v5, v3}, Lorg/apache/sanselan/formats/pnm/PBMWriter;-><init>(Z)V

    .line 325
    .end local v2    # "subtype":Ljava/lang/Object;
    .end local v4    # "useRawbitsParam":Ljava/lang/Object;
    .restart local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 326
    new-instance v5, Lorg/apache/sanselan/formats/pnm/PPMWriter;

    .end local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    invoke-direct {v5, v3}, Lorg/apache/sanselan/formats/pnm/PPMWriter;-><init>(Z)V

    .line 329
    .restart local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 332
    .end local p3    # "params":Ljava/util/Map;
    .local v1, "params":Ljava/util/Map;
    const-string v6, "FORMAT"

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    const-string v6, "FORMAT"

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 337
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 338
    .local v0, "firstKey":Ljava/lang/Object;
    new-instance v6, Lorg/apache/sanselan/ImageWriteException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unknown parameter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 318
    .end local v0    # "firstKey":Ljava/lang/Object;
    .end local v1    # "params":Ljava/util/Map;
    .restart local v2    # "subtype":Ljava/lang/Object;
    .restart local v4    # "useRawbitsParam":Ljava/lang/Object;
    .restart local p3    # "params":Ljava/util/Map;
    :cond_4
    sget-object v6, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 319
    new-instance v5, Lorg/apache/sanselan/formats/pnm/PGMWriter;

    .end local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    invoke-direct {v5, v3}, Lorg/apache/sanselan/formats/pnm/PGMWriter;-><init>(Z)V

    .restart local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    goto :goto_0

    .line 320
    :cond_5
    sget-object v6, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    new-instance v5, Lorg/apache/sanselan/formats/pnm/PPMWriter;

    .end local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    invoke-direct {v5, v3}, Lorg/apache/sanselan/formats/pnm/PPMWriter;-><init>(Z)V

    .restart local v5    # "writer":Lorg/apache/sanselan/formats/pnm/PNMWriter;
    goto :goto_0

    .line 341
    .end local v2    # "subtype":Ljava/lang/Object;
    .end local v4    # "useRawbitsParam":Ljava/lang/Object;
    .end local p3    # "params":Ljava/util/Map;
    .restart local v1    # "params":Ljava/util/Map;
    :cond_6
    invoke-virtual {v5, p1, p2, v1}, Lorg/apache/sanselan/formats/pnm/PNMWriter;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 342
    return-void
.end method
