.class public Lorg/apache/sanselan/formats/tiff/TiffDirectory;
.super Lorg/apache/sanselan/formats/tiff/TiffElement;
.source "TiffDirectory.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    }
.end annotation


# instance fields
.field public final entries:Ljava/util/ArrayList;

.field private jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

.field public final nextDirectoryOffset:I

.field private tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

.field public final type:I


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "entries"    # Ljava/util/ArrayList;
    .param p3, "offset"    # I
    .param p4, "nextDirectoryOffset"    # I

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, p3, v0}, Lorg/apache/sanselan/formats/tiff/TiffElement;-><init>(II)V

    .line 279
    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    .line 291
    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    .line 101
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->type:I

    .line 102
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    .line 103
    iput p4, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->nextDirectoryOffset:I

    .line 104
    return-void
.end method

.method public static final description(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 86
    const-string v0, "Bad Type"

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "Root"

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "Sub"

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "Thumbnail"

    goto :goto_0

    .line 80
    :pswitch_4
    const-string v0, "Exif"

    goto :goto_0

    .line 82
    :pswitch_5
    const-string v0, "Gps"

    goto :goto_0

    .line 84
    :pswitch_6
    const-string v0, "Interoperability"

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRawImageDataElements(Lorg/apache/sanselan/formats/tiff/TiffField;Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "offsetsField"    # Lorg/apache/sanselan/formats/tiff/TiffField;
    .param p2, "byteCountsField"    # Lorg/apache/sanselan/formats/tiff/TiffField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v2

    .line 211
    .local v2, "offsets":[I
    invoke-virtual {p2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v0

    .line 213
    .local v0, "byteCounts":[I
    array-length v4, v2

    array-length v5, v0

    if-eq v4, v5, :cond_0

    .line 214
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "offsets.length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ") != byteCounts.length("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v3, "result":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 220
    new-instance v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    aget v5, v2, v1

    aget v6, v0, v1

    invoke-direct {v4, p0, v5, v6}, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;-><init>(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_1
    return-object v3
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->type:I

    invoke-static {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->description(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 127
    .local v0, "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->dump()V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_0
    return-void
.end method

.method protected fillInValues(Lorg/apache/sanselan/common/byteSources/ByteSource;)V
    .locals 3
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 116
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 118
    .local v0, "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->fillInValue(Lorg/apache/sanselan/common/byteSources/ByteSource;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_0
    return-void
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 2
    .param p1, "tag"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "failIfMissing":Z
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    return-object v1
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Z)Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 5
    .param p1, "tag"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .param p2, "failIfMissing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 180
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 181
    .local v0, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    iget v3, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    iget v4, p1, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-eq v3, v4, :cond_0

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_2
    if-eqz p2, :cond_3

    .line 186
    new-instance v2, Lorg/apache/sanselan/ImageReadException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Missing expected field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v0, v2

    .line 189
    goto :goto_0
.end method

.method public getDirectoryEntrys()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getElementDescription(Z)Ljava/lang/String;
    .locals 6
    .param p1, "verbose"    # Z

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "TIFF Directory ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->description()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    :goto_0
    return-object v4

    .line 43
    :cond_0
    iget v4, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->offset:I

    add-int/lit8 v1, v4, 0x2

    .line 45
    .local v1, "entryOffset":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 48
    iget-object v4, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 50
    .local v0, "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    iget-object v4, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget-object v4, v4, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->tag:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    iget-object v5, v5, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/sanselan/formats/tiff/TiffField;->fieldType:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v5, v0}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;->getRawBytes(Lorg/apache/sanselan/formats/tiff/TiffField;)[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValueDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v1, v1, 0xc

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 64
    .end local v0    # "entry":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getJpegImageData()Lorg/apache/sanselan/formats/tiff/JpegImageData;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    return-object v0
.end method

.method public getJpegRawImageDataElement()Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 264
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    .line 265
    .local v1, "jpegInterchangeFormat":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    .line 267
    .local v2, "jpegInterchangeFormatLength":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v4

    aget v3, v4, v5

    .line 271
    .local v3, "offset":I
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/TiffField;->getIntArrayValue()[I

    move-result-object v4

    aget v0, v4, v5

    .line 273
    .local v0, "byteCount":I
    new-instance v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    invoke-direct {v4, p0, v3, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;-><init>(Lorg/apache/sanselan/formats/tiff/TiffDirectory;II)V

    return-object v4

    .line 276
    .end local v0    # "byteCount":I
    .end local v3    # "offset":I
    :cond_0
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Couldn\'t find image data."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getTiffImage()Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "params":Ljava/util/Map;
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffImage(Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    return-object v1
.end method

.method public getTiffImage(Ljava/util/Map;)Ljava/awt/image/BufferedImage;
    .locals 1
    .param p1, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffImageParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/sanselan/formats/tiff/TiffImageParser;->getBufferedImage(Lorg/apache/sanselan/formats/tiff/TiffDirectory;Ljava/util/Map;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getTiffImageData()Lorg/apache/sanselan/formats/tiff/TiffImageData;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    return-object v0
.end method

.method public getTiffRawImageDataElements()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v3

    .line 228
    .local v3, "tileOffsets":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    .line 229
    .local v2, "tileByteCounts":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    .line 230
    .local v1, "stripOffsets":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v4, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v4}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    .line 232
    .local v0, "stripByteCounts":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 234
    invoke-direct {p0, v3, v2}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getRawImageDataElements(Lorg/apache/sanselan/formats/tiff/TiffField;Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/util/ArrayList;

    move-result-object v4

    .line 238
    :goto_0
    return-object v4

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0, v1, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getRawImageDataElements(Lorg/apache/sanselan/formats/tiff/TiffField;Lorg/apache/sanselan/formats/tiff/TiffField;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 241
    :cond_1
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Couldn\'t find image data."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public hasJpegImageData()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_JPEG_INTERCHANGE_FORMAT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTiffImageData()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 142
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    sget-object v1, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    if-nez v1, :cond_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public imageDataInStrips()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 246
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_TILE_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v3

    .line 247
    .local v3, "tileOffsets":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_TILE_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v2

    .line 248
    .local v2, "tileByteCounts":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_STRIP_OFFSETS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    .line 249
    .local v1, "stripOffsets":Lorg/apache/sanselan/formats/tiff/TiffField;
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->TIFF_TAG_STRIP_BYTE_COUNTS:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {p0, v5}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v0

    .line 251
    .local v0, "stripByteCounts":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 252
    const/4 v4, 0x0

    .line 256
    :cond_0
    return v4

    .line 253
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 255
    :cond_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    .line 258
    :cond_3
    new-instance v4, Lorg/apache/sanselan/ImageReadException;

    const-string v5, "Couldn\'t find image data."

    invoke-direct {v4, v5}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setJpegImageData(Lorg/apache/sanselan/formats/tiff/JpegImageData;)V
    .locals 0
    .param p1, "value"    # Lorg/apache/sanselan/formats/tiff/JpegImageData;

    .prologue
    .line 295
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->jpegImageData:Lorg/apache/sanselan/formats/tiff/JpegImageData;

    .line 296
    return-void
.end method

.method public setTiffImageData(Lorg/apache/sanselan/formats/tiff/TiffImageData;)V
    .locals 0
    .param p1, "rawImageData"    # Lorg/apache/sanselan/formats/tiff/TiffImageData;

    .prologue
    .line 283
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->tiffImageData:Lorg/apache/sanselan/formats/tiff/TiffImageData;

    .line 284
    return-void
.end method
