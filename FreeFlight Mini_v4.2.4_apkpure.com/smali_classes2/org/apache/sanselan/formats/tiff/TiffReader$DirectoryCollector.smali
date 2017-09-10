.class Lorg/apache/sanselan/formats/tiff/TiffReader$DirectoryCollector;
.super Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryCollector"
.end annotation


# instance fields
.field private final readImageData:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "readImageData"    # Z

    .prologue
    .line 390
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;-><init>()V

    .line 391
    iput-boolean p1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$DirectoryCollector;->readImageData:Z

    .line 392
    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z
    .locals 1
    .param p1, "directory"    # Lorg/apache/sanselan/formats/tiff/TiffDirectory;

    .prologue
    .line 396
    invoke-super {p0, p1}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public readImageData()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$DirectoryCollector;->readImageData:Z

    return v0
.end method
