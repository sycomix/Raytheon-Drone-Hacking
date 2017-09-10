.class final Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;
.super Ljava/lang/Object;
.source "MyLZWCompressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteArray"
.end annotation


# instance fields
.field private final bytes:[B

.field private final hash:I

.field private final length:I

.field private final start:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;-><init>([BII)V

    .line 110
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->bytes:[B

    .line 115
    iput p2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->start:I

    .line 116
    iput p3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->length:I

    .line 118
    move v2, p3

    .line 120
    .local v2, "tempHash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 122
    add-int v3, v1, p2

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 123
    .local v0, "b":I
    shl-int/lit8 v3, v2, 0x8

    add-int/2addr v3, v2

    xor-int/2addr v3, v0

    xor-int v2, v3, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "b":I
    :cond_0
    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->hash:I

    .line 127
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 136
    move-object v1, p1

    check-cast v1, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;

    .line 137
    .local v1, "other":Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;
    iget v3, v1, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->hash:I

    iget v4, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->hash:I

    if-eq v3, v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    iget v3, v1, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->length:I

    iget v4, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->length:I

    if-ne v3, v4, :cond_0

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->length:I

    if-ge v0, v3, :cond_2

    .line 144
    iget-object v3, v1, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->bytes:[B

    iget v4, v1, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->start:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->bytes:[B

    iget v5, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->start:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;->hash:I

    return v0
.end method
