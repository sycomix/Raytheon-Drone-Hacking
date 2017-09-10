.class public Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;
.super Ljava/io/InputStream;
.source "BitsToByteInputStream.java"


# instance fields
.field private final desiredDepth:I

.field private final is:Lorg/apache/sanselan/common/mylzw/MyBitInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;I)V
    .locals 0
    .param p1, "is"    # Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
    .param p2, "desiredDepth"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->is:Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    .line 30
    iput p2, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    .line 31
    return-void
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v0

    return v0
.end method

.method public readBits(I)I
    .locals 2
    .param p1, "bitCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->is:Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    invoke-virtual {v1, p1}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result v0

    .line 41
    .local v0, "i":I
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    if-ge p1, v1, :cond_1

    .line 42
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    sub-int/2addr v1, p1

    shl-int/2addr v0, v1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    if-le p1, v1, :cond_0

    .line 44
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->desiredDepth:I

    sub-int v1, p1, v1

    shr-int/2addr v0, v1

    goto :goto_0
.end method

.method public readBitsArray(II)[I
    .locals 3
    .param p1, "sampleBits"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    new-array v1, p2, [I

    .line 53
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/common/mylzw/BitsToByteInputStream;->readBits(I)I

    move-result v2

    aput v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-object v1
.end method
