.class Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory$1;
.super Ljava/lang/Object;
.source "TiffOutputDirectory.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final this$0:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory$1;->this$0:Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 102
    move-object v0, p1

    check-cast v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .local v0, "e1":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    move-object v1, p2

    .line 103
    check-cast v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 105
    .local v1, "e2":Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;
    iget v2, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    iget v3, v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    if-eq v2, v3, :cond_0

    .line 106
    iget v2, v0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    iget v3, v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    sub-int/2addr v2, v3

    .line 107
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->getSortHint()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->getSortHint()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method
