.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "PNGChunk.java"


# instance fields
.field public final ancillary:Z

.field public final bytes:[B

.field public final chunkType:I

.field public final crc:I

.field public final isPrivate:Z

.field public final length:I

.field public final propertyBits:[Z

.field public final reserved:Z

.field public final safeToCopy:Z


# direct methods
.method public constructor <init>(III[B)V
    .locals 9
    .param p1, "Length"    # I
    .param p2, "ChunkType"    # I
    .param p3, "CRC"    # I
    .param p4, "bytes"    # [B

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 35
    iput p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->length:I

    .line 36
    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->chunkType:I

    .line 37
    iput p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->crc:I

    .line 38
    iput-object p4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    .line 40
    new-array v4, v8, [Z

    iput-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    .line 41
    const/16 v1, 0x18

    .line 42
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 44
    shr-int v4, p2, v1

    and-int/lit16 v2, v4, 0xff

    .line 45
    .local v2, "theByte":I
    add-int/lit8 v1, v1, -0x8

    .line 46
    const/16 v3, 0x20

    .line 47
    .local v3, "theMask":I
    iget-object v7, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    and-int v4, v2, v3

    if-lez v4, :cond_0

    move v4, v5

    :goto_1
    aput-boolean v4, v7, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 47
    goto :goto_1

    .line 50
    .end local v2    # "theByte":I
    .end local v3    # "theMask":I
    :cond_1
    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    aget-boolean v4, v4, v6

    iput-boolean v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->ancillary:Z

    .line 51
    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    aget-boolean v4, v4, v5

    iput-boolean v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->isPrivate:Z

    .line 52
    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    iput-boolean v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->reserved:Z

    .line 53
    iget-object v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    iput-boolean v4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->safeToCopy:Z

    .line 54
    return-void
.end method


# virtual methods
.method protected getDataStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    return-object v0
.end method
