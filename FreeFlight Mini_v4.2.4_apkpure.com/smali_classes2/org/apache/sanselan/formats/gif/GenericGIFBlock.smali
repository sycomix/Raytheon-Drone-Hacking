.class Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
.super Lorg/apache/sanselan/formats/gif/GIFBlock;
.source "GenericGIFBlock.java"


# instance fields
.field public final subblocks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "blockCode"    # I
    .param p2, "subblocks"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GIFBlock;-><init>(I)V

    .line 31
    iput-object p2, p0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->subblocks:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public appendSubBlocks()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public appendSubBlocks(Z)[B
    .locals 4
    .param p1, "includeLengths"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->subblocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 46
    iget-object v3, p0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->subblocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 47
    .local v2, "subblock":[B
    if-eqz p1, :cond_0

    if-lez v0, :cond_0

    .line 48
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "subblock":[B
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
