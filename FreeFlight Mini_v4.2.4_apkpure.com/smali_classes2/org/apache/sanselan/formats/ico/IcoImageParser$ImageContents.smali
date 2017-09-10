.class Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;
.super Ljava/lang/Object;
.source "IcoImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/ico/IcoImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageContents"
.end annotation


# instance fields
.field public final fileHeader:Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

.field public final iconDatas:[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;)V
    .locals 0
    .param p1, "fileHeader"    # Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;
    .param p2, "iconDatas"    # [Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;->fileHeader:Lorg/apache/sanselan/formats/ico/IcoImageParser$FileHeader;

    .line 373
    iput-object p2, p0, Lorg/apache/sanselan/formats/ico/IcoImageParser$ImageContents;->iconDatas:[Lorg/apache/sanselan/formats/ico/IcoImageParser$IconData;

    .line 374
    return-void
.end method
