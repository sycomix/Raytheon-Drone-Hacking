.class public Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;
.super Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
.source "TiffOutputItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field private final bytes:[B

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    .line 57
    return-void
.end method


# virtual methods
.method public getItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemLength()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public updateValue([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 72
    new-instance v0, Lorg/apache/sanselan/ImageWriteException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Updated data size mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public writeItem(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/sanselan/common/BinaryOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem$Value;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 81
    return-void
.end method
