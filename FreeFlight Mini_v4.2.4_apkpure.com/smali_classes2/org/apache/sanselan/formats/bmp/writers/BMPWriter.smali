.class public abstract Lorg/apache/sanselan/formats/bmp/writers/BMPWriter;
.super Ljava/lang/Object;
.source "BMPWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBitsPerPixel()I
.end method

.method public abstract getImageData(Ljava/awt/image/BufferedImage;)[B
.end method

.method public abstract getPaletteSize()I
.end method

.method public abstract writePalette(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
