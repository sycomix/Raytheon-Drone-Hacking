.class public final Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;
.super Ljava/lang/Object;
.source "MyLZWDecompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;
    }
.end annotation


# static fields
.field private static final MAX_TABLE_SIZE:I = 0x1000


# instance fields
.field private final byteOrder:I

.field private final clearCode:I

.field private codeSize:I

.field private codes:I

.field private final eoiCode:I

.field private final initialCodeSize:I

.field private final listener:Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;

.field private final table:[[B

.field private tiffLZWMode:Z

.field private written:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "initialCodeSize"    # I
    .param p2, "byteOrder"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;-><init>(IILorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;)V

    .line 47
    return-void
.end method

.method public constructor <init>(IILorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;)V
    .locals 2
    .param p1, "initialCodeSize"    # I
    .param p2, "byteOrder"    # I
    .param p3, "listener"    # Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    .line 137
    iput v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->written:I

    .line 146
    iput-boolean v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->tiffLZWMode:Z

    .line 52
    iput-object p3, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;

    .line 53
    iput p2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->byteOrder:I

    .line 55
    iput p1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->initialCodeSize:I

    .line 57
    const/16 v0, 0x1000

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->table:[[B

    .line 58
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->clearCode:I

    .line 59
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->clearCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->eoiCode:I

    .line 61
    if-eqz p3, :cond_0

    .line 62
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->clearCode:I

    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->eoiCode:I

    invoke-interface {p3, v0, v1}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;->init(II)V

    .line 64
    :cond_0
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->InitializeTable()V

    .line 65
    return-void
.end method

.method private final InitializeTable()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 69
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->initialCodeSize:I

    iput v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    .line 71
    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    add-int/lit8 v2, v2, 0x2

    shl-int v1, v6, v2

    .line 73
    .local v1, "intial_entries_count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 74
    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->table:[[B

    new-array v3, v6, [B

    const/4 v4, 0x0

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    aput-object v3, v2, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private final addStringToTable([B)V
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    shl-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->table:[[B

    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    aput-object p1, v0, v1

    .line 120
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    .line 125
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->checkCodeSize()V

    .line 126
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "AddStringToTable: codes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " code_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final appendBytes([BB)[B
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "b"    # B

    .prologue
    const/4 v2, 0x0

    .line 130
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 132
    .local v0, "result":[B
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p2, v0, v1

    .line 134
    return-object v0
.end method

.method private final checkCodeSize()V
    .locals 3

    .prologue
    .line 213
    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    shl-int v0, v1, v2

    .line 214
    .local v0, "limit":I
    iget-boolean v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->tiffLZWMode:Z

    if-eqz v1, :cond_0

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 217
    :cond_0
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    if-ne v1, v0, :cond_1

    .line 218
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->incrementCodeSize()V

    .line 219
    :cond_1
    return-void
.end method

.method private final clearTable()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->initialCodeSize:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    .line 80
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->initialCodeSize:I

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    .line 81
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->incrementCodeSize()V

    .line 82
    return-void
.end method

.method private final firstChar([B)B
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 112
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    return v0
.end method

.method private final getNextCode(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;)I
    .locals 2
    .param p1, "is"    # Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    invoke-virtual {p1, v1}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->readBits(I)I

    move-result v0

    .line 91
    .local v0, "code":I
    iget-object v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->listener:Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;

    invoke-interface {v1, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor$Listener;->code(I)V

    .line 93
    :cond_0
    return v0
.end method

.method private final incrementCodeSize()V
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 224
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    .line 225
    :cond_0
    return-void
.end method

.method private final isInTable(I)Z
    .locals 1
    .param p1, "Code"    # I

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final stringFromCode(I)[B
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " codes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " code_size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->codeSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->table:[[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iget-object v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->table:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method private final writeToResult(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 143
    iget v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->written:I

    array-length v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->written:I

    .line 144
    return-void
.end method


# virtual methods
.method public decompress(Ljava/io/InputStream;I)[B
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "expectedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v4, -0x1

    .line 157
    .local v4, "oldCode":I
    new-instance v3, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;

    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->byteOrder:I

    invoke-direct {v3, p1, v6}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 158
    .local v3, "mbis":Lorg/apache/sanselan/common/mylzw/MyBitInputStream;
    iget-boolean v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->tiffLZWMode:Z

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {v3}, Lorg/apache/sanselan/common/mylzw/MyBitInputStream;->setTiffLZWMode()V

    .line 161
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 163
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->clearTable()V

    .line 165
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->getNextCode(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;)I

    move-result v2

    .local v2, "code":I
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->eoiCode:I

    if-eq v2, v6, :cond_2

    .line 167
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->clearCode:I

    if-ne v2, v6, :cond_4

    .line 169
    invoke-direct {p0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->clearTable()V

    .line 171
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->written:I

    if-lt v6, p2, :cond_3

    .line 206
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 208
    .local v5, "result":[B
    return-object v5

    .line 173
    .end local v5    # "result":[B
    :cond_3
    invoke-direct {p0, v3}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->getNextCode(Lorg/apache/sanselan/common/mylzw/MyBitInputStream;)I

    move-result v2

    .line 175
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->eoiCode:I

    if-eq v2, v6, :cond_2

    .line 179
    invoke-direct {p0, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->stringFromCode(I)[B

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->writeToResult(Ljava/io/OutputStream;[B)V

    .line 181
    move v4, v2

    .line 202
    :goto_1
    iget v6, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->written:I

    if-lt v6, p2, :cond_1

    goto :goto_0

    .line 185
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->isInTable(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    invoke-direct {p0, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->stringFromCode(I)[B

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->writeToResult(Ljava/io/OutputStream;[B)V

    .line 189
    invoke-direct {p0, v4}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->stringFromCode(I)[B

    move-result-object v6

    invoke-direct {p0, v2}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->stringFromCode(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->firstChar([B)B

    move-result v7

    invoke-direct {p0, v6, v7}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->appendBytes([BB)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->addStringToTable([B)V

    .line 191
    move v4, v2

    goto :goto_1

    .line 194
    :cond_5
    invoke-direct {p0, v4}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->stringFromCode(I)[B

    move-result-object v6

    invoke-direct {p0, v4}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->stringFromCode(I)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->firstChar([B)B

    move-result v7

    invoke-direct {p0, v6, v7}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->appendBytes([BB)[B

    move-result-object v0

    .line 196
    .local v0, "OutString":[B
    invoke-direct {p0, v1, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->writeToResult(Ljava/io/OutputStream;[B)V

    .line 197
    invoke-direct {p0, v0}, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->addStringToTable([B)V

    .line 198
    move v4, v2

    goto :goto_1
.end method

.method public setTiffLZWMode()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sanselan/common/mylzw/MyLZWDecompressor;->tiffLZWMode:Z

    .line 151
    return-void
.end method
