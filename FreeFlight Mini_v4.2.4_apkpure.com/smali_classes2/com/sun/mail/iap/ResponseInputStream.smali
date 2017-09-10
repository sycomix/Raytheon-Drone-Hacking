.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;

.field private buffer:[B

.field private idx:I

.field private sz:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    .line 48
    iput v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    .line 49
    iput v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    .line 56
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 57
    return-void
.end method

.method private growBuffer(I)V
    .locals 4
    .param p1, "incr"    # I

    .prologue
    const/4 v3, 0x0

    .line 151
    iget v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    add-int/2addr v1, p1

    new-array v0, v1, [B

    .line 152
    .local v0, "nbuf":[B
    iget-object v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    .line 155
    iget v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    .line 156
    return-void
.end method

.method private read0()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v12, 0x40000

    const/16 v7, 0x100

    const/4 v11, -0x1

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "b":I
    const/4 v5, 0x0

    .line 81
    .local v5, "gotCRLF":Z
    :goto_0
    if-nez v5, :cond_3

    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    if-eq v2, v11, :cond_3

    .line 83
    packed-switch v2, :pswitch_data_0

    .line 88
    :cond_0
    :goto_1
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    iget v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    if-lt v8, v9, :cond_1

    .line 89
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    if-ge v8, v12, :cond_2

    .line 90
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    invoke-direct {p0, v8}, Lcom/sun/mail/iap/ResponseInputStream;->growBuffer(I)V

    .line 94
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    int-to-byte v10, v2

    aput-byte v10, v8, v9

    goto :goto_0

    .line 85
    :pswitch_0
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    add-int/lit8 v9, v9, -0x1

    aget-byte v8, v8, v9

    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    .line 86
    const/4 v5, 0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-direct {p0, v12}, Lcom/sun/mail/iap/ResponseInputStream;->growBuffer(I)V

    goto :goto_2

    .line 98
    :cond_3
    if-ne v2, v11, :cond_4

    .line 99
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 103
    :cond_4
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    const/4 v9, 0x5

    if-lt v8, v9, :cond_6

    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    add-int/lit8 v9, v9, -0x3

    aget-byte v8, v8, v9

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_6

    .line 106
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    add-int/lit8 v6, v8, -0x4

    .local v6, "i":I
    :goto_3
    if-ltz v6, :cond_5

    .line 107
    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    aget-byte v8, v8, v6

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_7

    .line 110
    :cond_5
    if-gez v6, :cond_8

    .line 146
    .end local v6    # "i":I
    :cond_6
    :goto_4
    return-void

    .line 106
    .restart local v6    # "i":I
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 113
    :cond_8
    const/4 v3, 0x0

    .line 116
    .local v3, "count":I
    :try_start_0
    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    add-int/lit8 v9, v6, 0x1

    iget v10, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    add-int/lit8 v10, v10, -0x3

    invoke-static {v8, v9, v10}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 122
    if-lez v3, :cond_b

    .line 123
    iget v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    iget v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    sub-int v1, v8, v9

    .line 124
    .local v1, "avail":I
    if-le v3, v1, :cond_9

    .line 126
    sub-int v8, v3, v1

    if-le v7, v8, :cond_a

    :goto_5
    invoke-direct {p0, v7}, Lcom/sun/mail/iap/ResponseInputStream;->growBuffer(I)V

    .line 133
    :cond_9
    :goto_6
    if-lez v3, :cond_b

    .line 134
    iget-object v7, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    iget-object v8, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    iget v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    invoke-virtual {v7, v8, v9, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 135
    .local v0, "actual":I
    sub-int/2addr v3, v0

    .line 136
    iget v7, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    goto :goto_6

    .line 117
    .end local v0    # "actual":I
    .end local v1    # "avail":I
    :catch_0
    move-exception v4

    .line 118
    .local v4, "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 126
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "avail":I
    :cond_a
    sub-int v7, v3, v1

    goto :goto_5

    .line 144
    .end local v1    # "avail":I
    :cond_b
    invoke-direct {p0}, Lcom/sun/mail/iap/ResponseInputStream;->read0()V

    goto :goto_4

    .line 83
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x80

    const/4 v3, 0x0

    .line 64
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    .line 65
    iput v3, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    .line 66
    iput v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->sz:I

    .line 67
    invoke-direct {p0}, Lcom/sun/mail/iap/ResponseInputStream;->read0()V

    .line 68
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/ResponseInputStream;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/ResponseInputStream;->idx:I

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object v0
.end method
