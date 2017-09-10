.class Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
.super Ljava/lang/Object;
.source "TiffOutputSummary.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;
    }
.end annotation


# instance fields
.field public final byteOrder:I

.field public final directoryTypeMap:Ljava/util/Map;

.field private imageDataItems:Ljava/util/List;

.field private offsetItems:Ljava/util/List;

.field public final rootDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;


# direct methods
.method public constructor <init>(ILorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V
    .locals 1
    .param p1, "byteOrder"    # I
    .param p2, "rootDirectory"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;
    .param p3, "directoryTypeMap"    # Ljava/util/Map;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    .line 35
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->byteOrder:I

    .line 36
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->rootDirectory:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 37
    iput-object p3, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->directoryTypeMap:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V
    .locals 2
    .param p1, "item"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    .param p2, "itemOffsetField"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    new-instance v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;

    invoke-direct {v1, p1, p2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;-><init>(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public addTiffImageData(Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;)V
    .locals 1
    .param p1, "imageDataInfo"    # Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public updateOffsets(I)V
    .locals 10
    .param p1, "byteOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 66
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->offsetItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;

    .line 68
    .local v4, "offset":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;
    sget-object v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget-object v9, v4, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;->item:Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    invoke-virtual {v9}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getOffset()I

    move-result v9

    aput v9, v7, v8

    invoke-virtual {v6, v7, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v5

    .line 71
    .local v5, "value":[B
    iget-object v6, v4, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;->itemOffsetField:Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    invoke-virtual {v6, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->setData([B)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v4    # "offset":Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary$OffsetItem;
    .end local v5    # "value":[B
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 76
    iget-object v6, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->imageDataItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;

    .line 79
    .local v1, "imageDataInfo":Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v6, v1, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 81
    iget-object v6, v1, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    aget-object v2, v6, v3

    .line 82
    .local v2, "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    iget-object v6, v1, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    invoke-virtual {v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getOffset()I

    move-result v7

    aput v7, v6, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 85
    .end local v2    # "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    :cond_1
    iget-object v6, v1, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->imageDataOffsetsField:Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v7, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    iget-object v8, v1, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    invoke-virtual {v7, v8, p1}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->setData([B)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v1    # "imageDataInfo":Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;
    .end local v3    # "j":I
    :cond_2
    return-void
.end method
