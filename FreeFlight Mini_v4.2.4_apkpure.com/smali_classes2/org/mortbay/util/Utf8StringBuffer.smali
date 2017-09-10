.class public Lorg/mortbay/util/Utf8StringBuffer;
.super Ljava/lang/Object;
.source "Utf8StringBuffer.java"


# instance fields
.field _bits:I

.field _buffer:Ljava/lang/StringBuffer;

.field _errors:Z

.field _more:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    .line 45
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 5
    .param p1, "b"    # B

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xc0

    const/16 v2, 0x3f

    const/4 v1, 0x0

    .line 56
    if-ltz p1, :cond_2

    .line 58
    iget v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    if-lez v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 62
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x7f

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 67
    :cond_2
    iget v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    if-nez v0, :cond_8

    .line 69
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_3

    .line 72
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 74
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 76
    :cond_3
    and-int/lit16 v0, p1, 0xe0

    if-ne v0, v3, :cond_4

    .line 79
    iput v4, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 80
    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 82
    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_5

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 86
    and-int/lit8 v0, p1, 0xf

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 88
    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_6

    .line 91
    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 92
    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 94
    :cond_6
    and-int/lit16 v0, p1, 0xfc

    const/16 v1, 0xf8

    if-ne v0, v1, :cond_7

    .line 97
    const/4 v0, 0x4

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 98
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 100
    :cond_7
    and-int/lit16 v0, p1, 0xfe

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x5

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 104
    and-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    goto :goto_0

    .line 109
    :cond_8
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v3, :cond_9

    .line 111
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 113
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    .line 114
    iput-boolean v4, p0, Lorg/mortbay/util/Utf8StringBuffer;->_errors:Z

    goto :goto_0

    .line 119
    :cond_9
    iget v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, p1, 0x3f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    .line 120
    iget v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public append([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 49
    add-int v0, p2, p3

    .line 50
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_errors:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 134
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_more:I

    .line 135
    iput v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_bits:I

    .line 136
    iput-boolean v1, p0, Lorg/mortbay/util/Utf8StringBuffer;->_errors:Z

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/mortbay/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
