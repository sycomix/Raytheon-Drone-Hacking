.class public Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;
.super Lorg/apache/sanselan/common/ImageMetadata$Item;
.source "TiffImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final entry:Lorg/apache/sanselan/formats/tiff/TiffField;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/tiff/TiffField;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    .line 193
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sanselan/formats/tiff/TiffField;->getValueDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/sanselan/common/ImageMetadata$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;->entry:Lorg/apache/sanselan/formats/tiff/TiffField;

    .line 195
    return-void
.end method


# virtual methods
.method public getTiffField()Lorg/apache/sanselan/formats/tiff/TiffField;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageMetadata$Item;->entry:Lorg/apache/sanselan/formats/tiff/TiffField;

    return-object v0
.end method
