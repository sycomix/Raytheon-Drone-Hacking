.class public Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;
.super Ljava/lang/Object;
.source "MyLZWCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;,
        Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;
    }
.end annotation


# instance fields
.field private final byteOrder:I

.field private final clearCode:I

.field private codeSize:I

.field private codes:I

.field private final earlyLimit:Z

.field private final eoiCode:I

.field private final initialCodeSize:I

.field private final listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "initialCodeSize"    # I
    .param p2, "byteOrder"    # I
    .param p3, "earlyLimit"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;-><init>(IIZLorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;)V

    .line 43
    return-void
.end method

.method public constructor <init>(IIZLorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;)V
    .locals 2
    .param p1, "initialCodeSize"    # I
    .param p2, "byteOrder"    # I
    .param p3, "earlyLimit"    # Z
    .param p4, "listener"    # Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->map:Ljava/util/Map;

    .line 48
    iput-object p4, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    .line 49
    iput p2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->byteOrder:I

    .line 50
    iput-boolean p3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->earlyLimit:Z

    .line 52
    iput p1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->initialCodeSize:I

    .line 54
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearCode:I

    .line 55
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->eoiCode:I

    .line 57
    if-eqz p4, :cond_0

    .line 58
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearCode:I

    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->eoiCode:I

    invoke-interface {p4, v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;->init(II)V

    .line 60
    :cond_0
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->InitializeStringTable()V

    .line 61
    return-void
.end method

.method private final InitializeStringTable()V
    .locals 5

    .prologue
    .line 67
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->initialCodeSize:I

    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    .line 69
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    shl-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x2

    .line 71
    .local v0, "intial_entries_count":I
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 72
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    :goto_0
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    if-ge v2, v0, :cond_1

    .line 74
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearCode:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->eoiCode:I

    if-eq v2, v3, :cond_0

    .line 76
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    int-to-byte v2, v2

    invoke-direct {p0, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->arrayToKey(B)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method private final addTableEntry(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "bos"    # Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 216
    .local v0, "cleared":Z
    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    shl-int v1, v2, v3

    .line 217
    .local v1, "limit":I
    iget-boolean v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->earlyLimit:Z

    if-eqz v2, :cond_0

    .line 218
    add-int/lit8 v1, v1, -0x1

    .line 220
    :cond_0
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    if-ne v2, v1, :cond_1

    .line 222
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    .line 223
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->incrementCodeSize()V

    .line 233
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 235
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codes:I

    .line 239
    :cond_2
    return v0

    .line 226
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeClearCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;)V

    .line 227
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearTable()V

    .line 228
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final addTableEntry(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;[BII)Z
    .locals 2
    .param p1, "bos"    # Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    .param p2, "bytes"    # [B
    .param p3, "start"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->arrayToKey([BII)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "key":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->addTableEntry(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private final arrayToKey(B)Ljava/lang/Object;
    .locals 3
    .param p1, "b"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->arrayToKey([BII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final arrayToKey([BII)Ljava/lang/Object;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 154
    new-instance v0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$ByteArray;-><init>([BII)V

    return-object v0
.end method

.method private final clearTable()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->InitializeStringTable()V

    .line 86
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->incrementCodeSize()V

    .line 87
    return-void
.end method

.method private final codeFromString([BII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->arrayToKey([BII)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "key":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 199
    new-instance v2, Ljava/io/IOException;

    const-string v3, "CodeFromString"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private final incrementCodeSize()V
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 92
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    .line 93
    :cond_0
    return-void
.end method

.method private final isInTable([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->arrayToKey([BII)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private final writeClearCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;)V
    .locals 2
    .param p1, "bos"    # Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearCode:I

    invoke-interface {v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;->dataCode(I)V

    .line 170
    :cond_0
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearCode:I

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V

    .line 171
    return-void
.end method

.method private final writeCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeSize:I

    invoke-virtual {p1, p2, v0}, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->writeBits(II)V

    .line 184
    return-void
.end method

.method private final writeDataCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    invoke-interface {v0, p2}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;->dataCode(I)V

    .line 162
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V

    .line 163
    return-void
.end method

.method private final writeEoiCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;)V
    .locals 2
    .param p1, "bos"    # Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;

    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->eoiCode:I

    invoke-interface {v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor$Listener;->eoiCode(I)V

    .line 177
    :cond_0
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->eoiCode:I

    invoke-direct {p0, p1, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V

    .line 178
    return-void
.end method


# virtual methods
.method public compress([B)[B
    .locals 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v7, p1

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 256
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;

    iget v7, p0, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->byteOrder:I

    invoke-direct {v1, v0, v7}, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 258
    .local v1, "bos":Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->InitializeStringTable()V

    .line 259
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->clearTable()V

    .line 260
    invoke-direct {p0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeClearCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;)V

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "cleared":Z
    const/4 v6, 0x0

    .line 264
    .local v6, "w_start":I
    const/4 v5, 0x0

    .line 266
    .local v5, "w_length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 268
    add-int/lit8 v7, v5, 0x1

    invoke-direct {p0, p1, v6, v7}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->isInTable([BII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 270
    add-int/lit8 v5, v5, 0x1

    .line 272
    const/4 v2, 0x0

    .line 266
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, p1, v6, v5}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeFromString([BII)I

    move-result v3

    .line 276
    .local v3, "code":I
    invoke-direct {p0, v1, v3}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeDataCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V

    .line 277
    add-int/lit8 v7, v5, 0x1

    invoke-direct {p0, v1, p1, v6, v7}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->addTableEntry(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;[BII)Z

    move-result v2

    .line 279
    move v6, v4

    .line 280
    const/4 v5, 0x1

    goto :goto_1

    .line 284
    .end local v3    # "code":I
    :cond_1
    invoke-direct {p0, p1, v6, v5}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->codeFromString([BII)I

    move-result v3

    .line 285
    .restart local v3    # "code":I
    invoke-direct {p0, v1, v3}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeDataCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;I)V

    .line 287
    invoke-direct {p0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->writeEoiCode(Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;)V

    .line 289
    invoke-virtual {v1}, Lorg/apache/sanselan/common/mylzw/MyBitOutputStream;->flushCache()V

    .line 291
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method
