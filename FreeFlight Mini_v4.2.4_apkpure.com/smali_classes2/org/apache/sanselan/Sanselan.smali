.class public abstract Lorg/apache/sanselan/Sanselan;
.super Ljava/lang/Object;
.source "Sanselan.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpImageFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1008
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1015
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/ImageParser;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static dumpImageFile([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->dumpImageFile(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllBufferedImages(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1082
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllBufferedImages(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1050
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1089
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/ImageParser;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static getAllBufferedImages([B)Ljava/util/ArrayList;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getAllBufferedImages(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/File;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1231
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/File;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage(Ljava/io/InputStream;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, "filename":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "FILENAME"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    const-string v1, "FILENAME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "filename":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1163
    .restart local v0    # "filename":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v1, p0, v0}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method private static getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1260
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1261
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    if-nez p1, :cond_0

    .line 1262
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/util/Map;
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1264
    .restart local p1    # "params":Ljava/util/Map;
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public static getBufferedImage([B)Ljava/awt/image/BufferedImage;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1185
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getBufferedImage([BLjava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1209
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getBufferedImage(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatCompliance(Ljava/io/File;)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    return-object v0
.end method

.method private static getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 1032
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0}, Lorg/apache/sanselan/ImageParser;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object v1

    return-object v1
.end method

.method public static getFormatCompliance([B)Lorg/apache/sanselan/FormatCompliance;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->getFormatCompliance(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/FormatCompliance;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/File;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/File;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method protected static getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 5
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-static {p0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    .line 318
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v1

    .line 321
    :cond_1
    new-instance v3, Lorg/apache/sanselan/icc/IccProfileParser;

    invoke-direct {v3}, Lorg/apache/sanselan/icc/IccProfileParser;-><init>()V

    .line 322
    .local v3, "parser":Lorg/apache/sanselan/icc/IccProfileParser;
    invoke-virtual {v3, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v2

    .line 323
    .local v2, "info":Lorg/apache/sanselan/icc/IccProfileInfo;
    invoke-virtual {v2}, Lorg/apache/sanselan/icc/IccProfileInfo;->issRGB()Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    invoke-static {v0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v1

    .line 327
    .local v1, "icc":Ljava/awt/color/ICC_Profile;
    goto :goto_0
.end method

.method public static getICCProfile([B)Ljava/awt/color/ICC_Profile;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfile([BLjava/util/Map;)Ljava/awt/color/ICC_Profile;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfile(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfileBytes(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfileBytes(Ljava/io/File;Ljava/util/Map;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 414
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getICCProfileBytes([B)[B
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes([BLjava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getICCProfileBytes([BLjava/util/Map;)[B
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getICCProfileBytes(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/File;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/sanselan/ImageInfo;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/lang/String;[B)Lorg/apache/sanselan/ImageInfo;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo(Ljava/lang/String;[BLjava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>(Ljava/lang/String;[B)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v1

    .line 589
    .local v1, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v1, p0, p1}, Lorg/apache/sanselan/ImageParser;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    .line 591
    .local v0, "imageInfo":Lorg/apache/sanselan/ImageInfo;
    return-object v0
.end method

.method public static getImageInfo([B)Lorg/apache/sanselan/ImageInfo;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getImageInfo([BLjava/util/Map;)Lorg/apache/sanselan/ImageInfo;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/ImageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static final getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;
    .locals 7
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;

    move-result-object v1

    .line 597
    .local v1, "format":Lorg/apache/sanselan/ImageFormat;
    sget-object v5, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/ImageFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 599
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v4

    .line 601
    .local v4, "imageParsers":[Lorg/apache/sanselan/ImageParser;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 602
    aget-object v3, v4, v2

    .line 604
    .local v3, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v3, v1}, Lorg/apache/sanselan/ImageParser;->canAcceptType(Lorg/apache/sanselan/ImageFormat;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 617
    :cond_0
    return-object v3

    .line 601
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v2    # "i":I
    .end local v3    # "imageParser":Lorg/apache/sanselan/ImageParser;
    .end local v4    # "imageParsers":[Lorg/apache/sanselan/ImageParser;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 611
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v4

    .line 613
    .restart local v4    # "imageParsers":[Lorg/apache/sanselan/ImageParser;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 614
    aget-object v3, v4, v2

    .line 616
    .restart local v3    # "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v3, v0}, Lorg/apache/sanselan/ImageParser;->canAcceptExtension(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 621
    .end local v2    # "i":I
    .end local v3    # "imageParser":Lorg/apache/sanselan/ImageParser;
    .end local v4    # "imageParsers":[Lorg/apache/sanselan/ImageParser;
    :cond_3
    new-instance v5, Lorg/apache/sanselan/ImageReadException;

    const-string v6, "Can\'t parse this format."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getImageSize(Ljava/io/File;)Ljava/awt/Dimension;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/io/File;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;)Ljava/awt/Dimension;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 717
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v1

    return-object v1
.end method

.method public static getImageSize([B)Ljava/awt/Dimension;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize([BLjava/util/Map;)Ljava/awt/Dimension;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getImageSize(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/File;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/File;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 978
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v1

    return-object v1
.end method

.method public static getMetadata([B)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadata([BLjava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getMetadata(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Lorg/apache/sanselan/common/IImageMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/File;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {p0}, Lorg/apache/sanselan/Sanselan;->getImageParser(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageParser;

    move-result-object v0

    .line 823
    .local v0, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/ImageParser;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getXmpXml([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sanselan/Sanselan;->getXmpXml([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getXmpXml([BLjava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0, p1}, Lorg/apache/sanselan/Sanselan;->getXmpXml(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessFormat(Ljava/io/File;)Lorg/apache/sanselan/ImageFormat;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public static guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;
    .locals 12
    .param p0, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v9, 0x0

    .line 142
    .local v9, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 145
    .local v5, "i1":I
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 146
    .local v6, "i2":I
    if-ltz v5, :cond_0

    if-gez v6, :cond_2

    .line 147
    :cond_0
    new-instance v10, Lorg/apache/sanselan/ImageReadException;

    const-string v11, "Couldn\'t read magic numbers to guess format."

    invoke-direct {v10, v11}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_1

    .line 205
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    .line 210
    :cond_1
    :goto_0
    throw v10

    .line 150
    .restart local v5    # "i1":I
    .restart local v6    # "i2":I
    :cond_2
    and-int/lit16 v0, v5, 0xff

    .line 151
    .local v0, "b1":I
    and-int/lit16 v1, v6, 0xff

    .line 153
    .local v1, "b2":I
    const/16 v10, 0x47

    if-ne v0, v10, :cond_4

    const/16 v10, 0x49

    if-ne v1, v10, :cond_4

    .line 154
    :try_start_2
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_GIF:Lorg/apache/sanselan/ImageFormat;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 210
    :cond_3
    :goto_1
    return-object v10

    .line 207
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 160
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const/16 v10, 0x89

    if-ne v0, v10, :cond_5

    const/16 v10, 0x50

    if-ne v1, v10, :cond_5

    .line 161
    :try_start_4
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PNG:Lorg/apache/sanselan/ImageFormat;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 207
    :catch_1
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 162
    .end local v4    # "e":Ljava/io/IOException;
    :cond_5
    const/16 v10, 0xff

    if-ne v0, v10, :cond_6

    const/16 v10, 0xd8

    if-ne v1, v10, :cond_6

    .line 163
    :try_start_6
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JPEG:Lorg/apache/sanselan/ImageFormat;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 207
    :catch_2
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 164
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    const/16 v10, 0x42

    if-ne v0, v10, :cond_7

    const/16 v10, 0x4d

    if-ne v1, v10, :cond_7

    .line 165
    :try_start_8
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_BMP:Lorg/apache/sanselan/ImageFormat;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 207
    :catch_3
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 166
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    const/16 v10, 0x4d

    if-ne v0, v10, :cond_8

    const/16 v10, 0x4d

    if-ne v1, v10, :cond_8

    .line 168
    :try_start_a
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_1

    .line 207
    :catch_4
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 169
    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    const/16 v10, 0x49

    if-ne v0, v10, :cond_9

    const/16 v10, 0x49

    if-ne v1, v10, :cond_9

    .line 171
    :try_start_c
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_TIFF:Lorg/apache/sanselan/ImageFormat;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_1

    .line 207
    :catch_5
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 172
    .end local v4    # "e":Ljava/io/IOException;
    :cond_9
    const/16 v10, 0x38

    if-ne v0, v10, :cond_a

    const/16 v10, 0x42

    if-ne v1, v10, :cond_a

    .line 173
    :try_start_e
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PSD:Lorg/apache/sanselan/ImageFormat;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_1

    .line 207
    :catch_6
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 174
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a
    const/16 v10, 0x50

    if-ne v0, v10, :cond_b

    const/16 v10, 0x31

    if-ne v1, v10, :cond_b

    .line 175
    :try_start_10
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_1

    .line 207
    :catch_7
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 176
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b
    const/16 v10, 0x50

    if-ne v0, v10, :cond_c

    const/16 v10, 0x34

    if-ne v1, v10, :cond_c

    .line 177
    :try_start_12
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PBM:Lorg/apache/sanselan/ImageFormat;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_1

    .line 207
    :catch_8
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 178
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c
    const/16 v10, 0x50

    if-ne v0, v10, :cond_d

    const/16 v10, 0x32

    if-ne v1, v10, :cond_d

    .line 179
    :try_start_14
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_15
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_1

    .line 207
    :catch_9
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 180
    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    const/16 v10, 0x50

    if-ne v0, v10, :cond_e

    const/16 v10, 0x35

    if-ne v1, v10, :cond_e

    .line 181
    :try_start_16
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PGM:Lorg/apache/sanselan/ImageFormat;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_17
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_1

    .line 207
    :catch_a
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 182
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e
    const/16 v10, 0x50

    if-ne v0, v10, :cond_f

    const/16 v10, 0x33

    if-ne v1, v10, :cond_f

    .line 183
    :try_start_18
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_19
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b

    goto/16 :goto_1

    .line 207
    :catch_b
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 184
    .end local v4    # "e":Ljava/io/IOException;
    :cond_f
    const/16 v10, 0x50

    if-ne v0, v10, :cond_10

    const/16 v10, 0x36

    if-ne v1, v10, :cond_10

    .line 185
    :try_start_1a
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_PPM:Lorg/apache/sanselan/ImageFormat;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    goto/16 :goto_1

    .line 207
    :catch_c
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 186
    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    const/16 v10, 0x97

    if-ne v0, v10, :cond_13

    const/16 v10, 0x4a

    if-ne v1, v10, :cond_13

    .line 188
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 189
    .local v7, "i3":I
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 190
    .local v8, "i4":I
    if-ltz v7, :cond_11

    if-gez v8, :cond_12

    .line 191
    :cond_11
    new-instance v10, Lorg/apache/sanselan/ImageReadException;

    const-string v11, "Couldn\'t read magic numbers to guess format."

    invoke-direct {v10, v11}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 194
    :cond_12
    and-int/lit16 v2, v7, 0xff

    .line 195
    .local v2, "b3":I
    and-int/lit16 v3, v8, 0xff

    .line 197
    .local v3, "b4":I
    const/16 v10, 0x42

    if-ne v2, v10, :cond_13

    const/16 v10, 0x32

    if-ne v3, v10, :cond_13

    .line 198
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_JBIG2:Lorg/apache/sanselan/ImageFormat;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_d

    goto/16 :goto_1

    .line 207
    :catch_d
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 201
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "i3":I
    .end local v8    # "i4":I
    :cond_13
    :try_start_1e
    sget-object v10, Lorg/apache/sanselan/ImageFormat;->IMAGE_FORMAT_UNKNOWN:Lorg/apache/sanselan/ImageFormat;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 203
    if-eqz v9, :cond_3

    .line 205
    :try_start_1f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e

    goto/16 :goto_1

    .line 207
    :catch_e
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 207
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    :catch_f
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static guessFormat([B)Lorg/apache/sanselan/ImageFormat;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p0}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->guessFormat(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/ImageFormat;

    move-result-object v0

    return-object v0
.end method

.method public static hasImageFileExtension(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sanselan/Sanselan;->hasImageFileExtension(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasImageFileExtension(Ljava/lang/String;)Z
    .locals 7
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v4

    .line 91
    .local v4, "imageParsers":[Lorg/apache/sanselan/ImageParser;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 92
    aget-object v3, v4, v2

    .line 93
    .local v3, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v3}, Lorg/apache/sanselan/ImageParser;->getAcceptedExtensions()[Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "exts":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 96
    aget-object v0, v1, v5

    .line 97
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    const/4 v6, 0x1

    .line 102
    .end local v0    # "ext":Ljava/lang/String;
    .end local v1    # "exts":[Ljava/lang/String;
    .end local v3    # "imageParser":Lorg/apache/sanselan/ImageParser;
    .end local v5    # "j":I
    :goto_2
    return v6

    .line 95
    .restart local v0    # "ext":Ljava/lang/String;
    .restart local v1    # "exts":[Ljava/lang/String;
    .restart local v3    # "imageParser":Lorg/apache/sanselan/ImageParser;
    .restart local v5    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "ext":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "exts":[Ljava/lang/String;
    .end local v3    # "imageParser":Lorg/apache/sanselan/ImageParser;
    .end local v5    # "j":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/File;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V
    .locals 4
    .param p0, "src"    # Ljava/awt/image/BufferedImage;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Lorg/apache/sanselan/ImageFormat;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1292
    const/4 v1, 0x0

    .line 1295
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1298
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {p0, v1, p2, p3}, Lorg/apache/sanselan/Sanselan;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1301
    if-eqz v1, :cond_0

    .line 1302
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1307
    :cond_0
    :goto_0
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1300
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1301
    :goto_1
    if-eqz v1, :cond_1

    .line 1302
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1305
    :cond_1
    :goto_2
    throw v3

    .line 1303
    :catch_1
    move-exception v0

    .line 1304
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1300
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V
    .locals 6
    .param p0, "src"    # Ljava/awt/image/BufferedImage;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "format"    # Lorg/apache/sanselan/ImageFormat;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-static {}, Lorg/apache/sanselan/ImageParser;->getAllImageParsers()[Lorg/apache/sanselan/ImageParser;

    move-result-object v2

    .line 1368
    .local v2, "imageParsers":[Lorg/apache/sanselan/ImageParser;
    if-nez p3, :cond_0

    .line 1369
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "params":Ljava/util/Map;
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1371
    .restart local p3    # "params":Ljava/util/Map;
    :cond_0
    const-string v3, "FORMAT"

    invoke-interface {p3, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1374
    aget-object v1, v2, v0

    .line 1376
    .local v1, "imageParser":Lorg/apache/sanselan/ImageParser;
    invoke-virtual {v1, p2}, Lorg/apache/sanselan/ImageParser;->canAcceptType(Lorg/apache/sanselan/ImageFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1379
    :cond_1
    invoke-virtual {v1, p0, p1, p3}, Lorg/apache/sanselan/ImageParser;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 1380
    return-void

    .line 1383
    .end local v1    # "imageParser":Lorg/apache/sanselan/ImageParser;
    :cond_2
    new-instance v3, Lorg/apache/sanselan/ImageWriteException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown Format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static writeImageToBytes(Ljava/awt/image/BufferedImage;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)[B
    .locals 2
    .param p0, "src"    # Ljava/awt/image/BufferedImage;
    .param p1, "format"    # Lorg/apache/sanselan/ImageFormat;
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1333
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1335
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0, p1, p2}, Lorg/apache/sanselan/Sanselan;->writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Lorg/apache/sanselan/ImageFormat;Ljava/util/Map;)V

    .line 1337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
