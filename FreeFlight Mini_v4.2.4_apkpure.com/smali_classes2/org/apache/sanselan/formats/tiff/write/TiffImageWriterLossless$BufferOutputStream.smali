.class Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;
.super Ljava/io/OutputStream;
.source "TiffImageWriterLossless.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferOutputStream"
.end annotation


# instance fields
.field private final buffer:[B

.field private index:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "index"    # I

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 380
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->buffer:[B

    .line 381
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    .line 382
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 387
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer overflow."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->buffer:[B

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 390
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 395
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer overflow."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->buffer:[B

    iget v1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterLossless$BufferOutputStream;->index:I

    .line 398
    return-void
.end method
