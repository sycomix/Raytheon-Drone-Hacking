.class public Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;
.super Lorg/apache/sanselan/common/ImageMetadata;
.source "TiffImageMetadata.java"

# interfaces
.implements Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directory"
.end annotation


# instance fields
.field private final directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)V
    .locals 1
    .param p1, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/sanselan/common/ImageMetadata;-><init>()V

    .line 59
    iget v0, p1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->type:I

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->type:I

    .line 60
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 61
    return-void
.end method

.method static access$000(Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;)Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/sanselan/formats/tiff/TiffField;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    .line 65
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;-><init>(Lorg/apache/sanselan/formats/tiff/TiffField;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->add(Lorg/apache/sanselan/common/IImageMetadata$IImageMetadataItem;)V

    .line 66
    return-void
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 1
    .param p1, "tagInfo"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getDirectoryEntrys()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-result-object v0

    return-object v0
.end method

.method public getOutputDirectory(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .locals 14
    .param p1, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->type:I

    invoke-direct {v6, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;-><init>(I)V

    .line 110
    .local v6, "dstDir":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 111
    .local v8, "entries":Ljava/util/ArrayList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 113
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;

    .line 115
    .local v10, "item":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;
    invoke-virtual {v10}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;->getTiffField()Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v11

    .line 117
    .local v11, "srcField":Lorg/apache/sanselan/formats/tiff/TiffField;
    iget v1, v11, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-virtual {v6, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, v11, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    instance-of v1, v1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo$Offset;

    if-nez v1, :cond_0

    .line 128
    iget-object v2, v11, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    .line 129
    .local v2, "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    iget-object v3, v11, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    .line 130
    .local v3, "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    iget v4, v11, Lorg/apache/sanselan/formats/tiff/TiffField;->length:I

    .line 135
    .local v4, "count":I
    invoke-virtual {v11}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 139
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual {v2, v3, v12, p1}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->encodeValue(Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;Ljava/lang/Object;I)[B

    move-result-object v5

    .line 148
    .local v5, "bytes":[B
    new-instance v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    iget v1, v11, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-direct/range {v0 .. v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 150
    .local v0, "dstField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    invoke-virtual {v11}, Lorg/apache/sanselan/formats/tiff/TiffField;->getSortHint()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->setSortHint(I)V

    .line 151
    invoke-virtual {v6, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V
    :try_end_0
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    .end local v0    # "dstField":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    .end local v2    # "tagInfo":Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .end local v3    # "fieldType":Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;
    .end local v4    # "count":I
    .end local v5    # "bytes":[B
    .end local v6    # "dstDir":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .end local v8    # "entries":Ljava/util/ArrayList;
    .end local v9    # "i":I
    .end local v10    # "item":Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;
    .end local v11    # "srcField":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 161
    .local v7, "e":Lorg/apache/sanselan/ImageReadException;
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    invoke-virtual {v7}, Lorg/apache/sanselan/ImageReadException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13, v7}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 154
    .end local v7    # "e":Lorg/apache/sanselan/ImageReadException;
    .restart local v6    # "dstDir":Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .restart local v8    # "entries":Ljava/util/ArrayList;
    .restart local v9    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/sanselan/formats/tiff/TiffImageData;)V

    .line 155
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->setJpegImageData(Lorg/apache/sanselan/formats/tiff/JpegImageData;)V
    :try_end_1
    .catch Lorg/apache/sanselan/ImageReadException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    return-object v6
.end method

.method public getThumbnail()Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImage()Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->directory:Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, " (tiffImageData)"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Directory;->getJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, " (jpegImageData)"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/apache/sanselan/common/ImageMetadata;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method
