.class public Lorg/apache/sanselan/formats/tiff/TiffContents;
.super Ljava/lang/Object;
.source "TiffContents.java"


# instance fields
.field public final directories:Ljava/util/ArrayList;

.field public final header:Lorg/apache/sanselan/formats/tiff/TiffHeader;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/TiffHeader;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "tiffHeader"    # Lorg/apache/sanselan/formats/tiff/TiffHeader;
    .param p2, "directories"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    .line 34
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public dissect(Z)V
    .locals 8
    .param p1, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/tiff/TiffContents;->getElements()Ljava/util/ArrayList;

    move-result-object v1

    .line 85
    .local v1, "elements":Ljava/util/ArrayList;
    sget-object v5, Lorg/apache/sanselan/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    const/4 v3, 0x0

    .line 88
    .local v3, "lastEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 92
    .local v0, "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v5, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    if-le v5, v3, :cond_0

    .line 93
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\tgap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget v5, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    if-ge v5, v3, :cond_1

    .line 95
    const-string v5, "\toverlap"

    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 97
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "element, start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    iget v7, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/apache/sanselan/formats/tiff/TiffElement;->getElementDescription(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_2

    .line 103
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lorg/apache/sanselan/formats/tiff/TiffElement;->getElementDescription(Z)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "verbosity":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 105
    invoke-static {v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 108
    .end local v4    # "verbosity":Ljava/lang/String;
    :cond_2
    iget v5, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->offset:I

    iget v6, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    add-int v3, v5, v6

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v0    # "element":Lorg/apache/sanselan/formats/tiff/TiffElement;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 112
    return-void
.end method

.method public findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 4
    .param p1, "tag"    # Lorg/apache/sanselan/formats/tiff/constants/TagInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 71
    iget-object v3, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 73
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    invoke-virtual {v0, p1}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->findField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)Lorg/apache/sanselan/formats/tiff/TiffField;

    move-result-object v1

    .line 74
    .local v1, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    if-eqz v1, :cond_0

    .line 78
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v1    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :goto_1
    return-object v1

    .line 69
    .restart local v0    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .restart local v1    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v1    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v6, "result":Ljava/util/ArrayList;
    iget-object v7, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->header:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 45
    iget-object v7, p0, Lorg/apache/sanselan/formats/tiff/TiffContents;->directories:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .line 47
    .local v0, "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, v0, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->entries:Ljava/util/ArrayList;

    .line 50
    .local v2, "fields":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 52
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 53
    .local v1, "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getOversizeValueElement()Lorg/apache/sanselan/formats/tiff/TiffElement;

    move-result-object v5

    .line 54
    .local v5, "oversizeValue":Lorg/apache/sanselan/formats/tiff/TiffElement;
    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "field":Lorg/apache/sanselan/formats/tiff/TiffField;
    .end local v5    # "oversizeValue":Lorg/apache/sanselan/formats/tiff/TiffElement;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->hasTiffImageData()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 59
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getTiffRawImageDataElements()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_2
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->hasJpegImageData()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/TiffDirectory;->getJpegRawImageDataElement()Lorg/apache/sanselan/formats/tiff/TiffDirectory$ImageDataElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "directory":Lorg/apache/sanselan/formats/tiff/TiffDirectory;
    .end local v2    # "fields":Ljava/util/ArrayList;
    .end local v4    # "j":I
    :cond_4
    return-object v6
.end method
