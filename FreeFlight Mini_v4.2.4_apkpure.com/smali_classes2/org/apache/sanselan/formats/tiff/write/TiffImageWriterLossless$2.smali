.class final Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$2;
.super Ljava/lang/Object;
.source "TiffImageWriterLossless.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 264
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .local v0, "e1":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    move-object v1, p2

    .line 265
    check-cast v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;

    .line 266
    .local v1, "e2":Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;->getItemLength()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method
