.class final Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$1;
.super Ljava/lang/Object;
.source "TiffImageWriterLossless.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 254
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .local v0, "e1":Lorg/apache/sanselan/formats/tiff/TiffElement;
    move-object v1, p2

    .line 255
    check-cast v1, Lorg/apache/sanselan/formats/tiff/TiffElement;

    .line 256
    .local v1, "e2":Lorg/apache/sanselan/formats/tiff/TiffElement;
    iget v2, v0, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    iget v3, v1, Lorg/apache/sanselan/formats/tiff/TiffElement;->length:I

    sub-int/2addr v2, v3

    return v2
.end method
