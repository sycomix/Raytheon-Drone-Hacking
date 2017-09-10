.class public Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;
.super Ljava/lang/Object;
.source "JpegImageMetadata.java"

# interfaces
.implements Lorg/apache/sanselan/common/IImageMetadata;


# static fields
.field private static final newline:Ljava/lang/String;


# instance fields
.field private final exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

.field private final photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->newline:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;)V
    .locals 0
    .param p1, "photoshop"    # Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
    .param p2, "exif"    # Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    .line 38
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    .line 39
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public findEXIFValue(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 7
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 51
    .local v3, "items":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 52
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 53
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;

    if-nez v5, :cond_1

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 56
    check-cast v2, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;

    .line 57
    .local v2, "item":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;->getTiffField()Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    .line 58
    .local v0, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    iget v5, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    iget v6, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v5, v6, :cond_0

    .line 62
    .end local v0    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v2    # "item":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;
    .end local v4    # "o":Ljava/lang/Object;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEXIFThumbnail()Ljava/awt/image/BufferedImage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v4, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    invoke-virtual {v4}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, "dirs":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 72
    .local v0, "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getThumbnail()Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 73
    .local v3, "image":Ljava/awt/image/BufferedImage;
    if-eqz v3, :cond_0

    .line 77
    .end local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .end local v3    # "image":Ljava/awt/image/BufferedImage;
    :goto_1
    return-object v3

    .line 68
    .restart local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .restart local v3    # "image":Ljava/awt/image/BufferedImage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .end local v3    # "image":Ljava/awt/image/BufferedImage;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getExif()Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v0, "result":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_1
    return-object v0
.end method

.method public getPhotoshop()Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    return-object v0
.end method

.method public getRawImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;
    .locals 5

    .prologue
    .line 81
    iget-object v4, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    invoke-virtual {v4}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->getDirectories()Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, "dirs":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .line 86
    .local v0, "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v3

    .line 87
    .local v3, "rawImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    if-eqz v3, :cond_0

    .line 91
    .end local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .end local v3    # "rawImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    :goto_1
    return-object v3

    .line 82
    .restart local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .restart local v3    # "rawImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "dir":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
    .end local v3    # "rawImageData":Lorg/apache/sanselan/formats/tiff/TiffImageData;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string p1, ""

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    if-nez v1, :cond_1

    .line 120
    const-string v1, "No Exif metadata."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    if-nez v1, :cond_2

    .line 132
    const-string v1, "No Photoshop (IPTC) metadata."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 122
    :cond_1
    const-string v1, "Exif metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->exif:Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 134
    :cond_2
    const-string v1, "Photoshop (IPTC) metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageMetadata;->photoshop:Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
