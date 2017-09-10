.class public abstract Lorg/apache/sanselan/ImageParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "ImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    return-void
.end method

.method public static final getAllImageParsers()[Lorg/apache/sanselan/ImageParser;
    .locals 3

    .prologue
    .line 52
    const/16 v1, 0x8

    new-array v0, v1, [Lorg/apache/sanselan/ImageParser;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/JpegImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/sanselan/formats/tiff/TiffImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/sanselan/formats/png/PngImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/png/PngImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/sanselan/formats/bmp/BmpImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/bmp/BmpImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/sanselan/formats/gif/GifImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/gif/GifImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/sanselan/formats/psd/PsdImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/psd/PsdImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/sanselan/formats/pnm/PNMImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/pnm/PNMImageParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/sanselan/formats/ico/IcoImageParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/ico/IcoImageParser;-><init>()V

    aput-object v2, v0, v1

    .line 60
    .local v0, "result":[Lorg/apache/sanselan/ImageParser;
    return-object v0
.end method

.method public static final isStrict(Ljava/util/Map;)Z
    .locals 1
    .param p0, "params"    # Ljava/util/Map;

    .prologue
    .line 414
    if-eqz p0, :cond_0

    const-string v0, "STRICT"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0

    :cond_1
    const-string v0, "STRICT"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected final canAcceptExtension(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 376
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final canAcceptExtension(Ljava/lang/String;)Z
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 381
    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "exts":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v4

    .line 385
    :cond_1
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 386
    .local v3, "index":I
    if-ltz v3, :cond_2

    .line 388
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_2

    .line 392
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "ext":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public canAcceptType(Lorg/apache/sanselan/ImageFormat;)Z
    .locals 3
    .param p1, "type"    # Lorg/apache/sanselan/ImageFormat;

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;

    move-result-object v1

    .line 368
    .local v1, "types":[Lorg/apache/sanselan/ImageFormat;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 369
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lorg/apache/sanselan/ImageFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const/4 v2, 0x1

    .line 371
    :goto_1
    return v2

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    .line 329
    :cond_0
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageParser;->debug:Z

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    :cond_1
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 339
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 341
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0, p1}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z

    .line 343
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 345
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpImageFile(Ljava/io/PrintWriter;Lorg/apache/sanselan/common/byteSources/ByteSource;)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public abstract embedICCProfile(Ljava/io/File;Ljava/io/File;[B)Z
.end method

.method protected abstract getAcceptedExtensions()[Ljava/lang/String;
.end method

.method protected abstract getAcceptedTypes()[Lorg/apache/sanselan/ImageFormat;
.end method

.method public final getAllBufferedImages(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    .line 153
    .local v0, "bi":Ljava/awt/image/BufferedImage;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v1, "result":Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v1
.end method

.method public final getAllBufferedImages([B)Ljava/util/ArrayList;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method protected getBufferedImageFactory(Ljava/util/Map;)Lorg/apache/sanselan/common/IBufferedImageFactory;
    .locals 2
    .param p1, "params"    # Ljava/util/Map;

    .prologue
    .line 400
    if-nez p1, :cond_1

    .line 401
    new-instance v0, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;

    invoke-direct {v0}, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;-><init>()V

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 403
    :cond_1
    const-string v1, "BUFFERED_IMAGE_FACTORY"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/common/IBufferedImageFactory;

    .line 406
    .local v0, "result":Lorg/apache/sanselan/common/IBufferedImageFactory;
    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;

    .end local v0    # "result":Lorg/apache/sanselan/common/IBufferedImageFactory;
    invoke-direct {v0}, Lorg/apache/sanselan/common/SimpleBufferedImageFactory;-><init>()V

    goto :goto_0
.end method

.method public abstract getDefaultExtension()Ljava/lang/String;
.end method

.method public final getFormatCompliance(Ljava/io/File;)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    goto :goto_0
.end method

.method public getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFormatCompliance([B)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/ImageParser;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    return-object v0
.end method

.method public final getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageParser;->debug:Z

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    :cond_1
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getICCProfileBytes([B)[B
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getICCProfileBytes([BLjava/util/Map;)[B
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public final getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getImageInfo([BLjava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public final getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public final getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata(Ljava/io/File;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/sanselan/ImageParser;->debug:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".getMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method public final getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getMetadata([B)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/ImageParser;->getMetadata([B)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 4
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
    .line 239
    :try_start_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "This image format ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/sanselan/ImageParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") cannot be written."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
