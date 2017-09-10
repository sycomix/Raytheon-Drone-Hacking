.class Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;
.super Ljava/lang/Object;
.source "ImageDataOffsets.java"


# instance fields
.field public final imageDataOffsets:[I

.field public final imageDataOffsetsField:Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

.field public final outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;


# direct methods
.method public constructor <init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;[ILorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V
    .locals 4
    .param p1, "imageData"    # [Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .param p2, "imageDataOffsets"    # [I
    .param p3, "imageDataOffsetsField"    # Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->imageDataOffsets:[I

    .line 32
    iput-object p3, p0, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->imageDataOffsetsField:Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 34
    array-length v2, p1

    new-array v2, v2, [Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    iput-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 37
    new-instance v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;

    const-string v2, "TIFF image data"

    aget-object v3, p1, v0

    iget-object v3, v3, Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;->data:[B

    invoke-direct {v1, v2, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    .line 39
    .local v1, "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/ImageDataOffsets;->outputItems:[Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    aput-object v1, v2, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "item":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    :cond_0
    return-void
.end method
