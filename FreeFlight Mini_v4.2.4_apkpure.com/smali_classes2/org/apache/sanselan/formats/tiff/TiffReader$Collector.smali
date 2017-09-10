.class Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;
.super Ljava/lang/Object;
.source "TiffReader.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/TiffReader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Collector"
.end annotation


# instance fields
.field private directories:Ljava/util/ArrayList;

.field private fields:Ljava/util/ArrayList;

.field private final readThumbnails:Z

.field private tiffHeader:Lorg/apache/sanselan/formats/tiff/TiffHeader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;-><init>(Ljava/util/Map;)V

    .line 319
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .param p1, "params"    # Ljava/util/Map;

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->tiffHeader:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->directories:Ljava/util/ArrayList;

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->fields:Ljava/util/ArrayList;

    .line 323
    const/4 v0, 0x1

    .line 324
    .local v0, "readThumbnails":Z
    if-eqz p1, :cond_0

    const-string v1, "READ_THUMBNAILS"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "READ_THUMBNAILS"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 327
    :cond_0
    iput-boolean v0, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->readThumbnails:Z

    .line 328
    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z
    .locals 1
    .param p1, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->directories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public addField(Lorg/apache/sanselan/formats/tiff/TiffField;)Z
    .locals 1
    .param p1, "field"    # Lorg/apache/sanselan/formats/tiff/TiffField;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public getContents()Lorg/apache/sanselan/formats/tiff/TiffContents;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Lorg/apache/sanselan/formats/tiff/TiffContents;

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->tiffHeader:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->directories:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/formats/tiff/TiffContents;-><init>(Lorg/apache/sanselan/formats/tiff/TiffHeader;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public readImageData()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->readThumbnails:Z

    return v0
.end method

.method public readOffsetDirectories()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public setTiffHeader(Lorg/apache/sanselan/formats/tiff/TiffHeader;)Z
    .locals 1
    .param p1, "tiffHeader"    # Lorg/apache/sanselan/formats/tiff/TiffHeader;

    .prologue
    .line 332
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->tiffHeader:Lorg/apache/sanselan/formats/tiff/TiffHeader;

    .line 333
    const/4 v0, 0x1

    return v0
.end method
