.class public Lorg/mortbay/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final __ISO_8859_1:Ljava/lang/String;

.field public static final __LINE_SEPARATOR:Ljava/lang/String;

.field public static final __UTF16:Ljava/lang/String; = "UTF-16"

.field public static final __UTF8:Ljava/lang/String; = "UTF-8"

.field public static final __UTF8Alt:Ljava/lang/String; = "UTF8"

.field private static lowercases:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 32
    const-string v2, "line.separator"

    const-string v3, "\n"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/mortbay/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    .line 38
    const-string v2, "ISO_8859_1"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "iso":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 42
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x14

    aput-byte v5, v3, v4

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 43
    const-string v1, "ISO-8859-1"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    sput-object v1, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 58
    const/16 v2, 0x80

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lorg/mortbay/util/StringUtil;->lowercases:[C

    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "ISO8859_1"

    goto :goto_0

    .line 58
    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/StringBuffer;BI)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B
    .param p2, "base"    # I

    .prologue
    const/16 v3, 0x39

    .line 254
    and-int/lit16 v0, p1, 0xff

    .line 255
    .local v0, "bi":I
    div-int v2, v0, p2

    rem-int/2addr v2, p2

    add-int/lit8 v1, v2, 0x30

    .line 256
    .local v1, "c":I
    if-le v1, v3, :cond_0

    .line 257
    add-int/lit8 v2, v1, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v1, v2, 0x61

    .line 258
    :cond_0
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    rem-int v2, v0, p2

    add-int/lit8 v1, v2, 0x30

    .line 260
    if-le v1, v3, :cond_1

    .line 261
    add-int/lit8 v2, v1, -0x30

    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v1, v2, 0x61

    .line 262
    :cond_1
    int-to-char v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    return-void
.end method

.method public static append(Ljava/lang/StringBuffer;Ljava/lang/String;II)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 234
    monitor-enter p0

    .line 236
    add-int v0, p2, p3

    .line 237
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 243
    :cond_0
    monitor-exit p0

    .line 244
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static append2digits(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "i"    # I

    .prologue
    .line 269
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 271
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    :cond_0
    return-void
.end method

.method public static asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "c":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    move v4, v3

    .line 88
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_3

    .line 90
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 91
    .local v1, "c1":C
    if-gt v1, v7, :cond_0

    .line 93
    sget-object v5, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v2, v5, v1

    .line 94
    .local v2, "c2":C
    if-eq v1, v2, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 97
    aput-char v2, v0, v3

    move v4, v3

    .line 103
    .end local v1    # "c1":C
    .end local v2    # "c2":C
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_1

    .line 105
    aget-char v5, v0, v3

    if-gt v5, v7, :cond_3

    .line 106
    sget-object v5, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v6, v0, v3

    aget-char v5, v5, v6

    aput-char v5, v0, v3

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .end local v4    # "i":I
    .restart local v1    # "c1":C
    .restart local v3    # "i":I
    :cond_0
    move v4, v3

    .line 101
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 109
    .end local v1    # "c1":C
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .end local p0    # "s":Ljava/lang/String;
    :goto_2
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    .restart local p0    # "s":Ljava/lang/String;
    :cond_3
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "w"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x7f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v6

    .line 145
    :cond_1
    if-nez p0, :cond_2

    move v6, v7

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 149
    .local v4, "sl":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 151
    .local v5, "wl":I
    if-ge v4, v5, :cond_3

    move v6, v7

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    move v2, v5

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_0

    .line 156
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 158
    .local v1, "c2":C
    if-eq v0, v1, :cond_6

    .line 160
    if-gt v0, v9, :cond_4

    .line 161
    sget-object v8, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v0, v8, v0

    .line 162
    :cond_4
    if-gt v1, v9, :cond_5

    .line 163
    sget-object v8, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v1, v8, v1

    .line 164
    :cond_5
    if-eq v0, v1, :cond_6

    move v6, v7

    .line 165
    goto :goto_0

    :cond_6
    move v3, v2

    .line 167
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method public static equals(Ljava/lang/String;[CII)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 293
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 294
    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static indexFrom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 180
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 177
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isUTF8(Ljava/lang/String;)Z
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 341
    const-string v0, "UTF-8"

    if-eq p0, v0, :cond_0

    const-string v0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    const-string p0, ""

    .line 285
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    const/4 v3, 0x0

    .line 357
    :goto_0
    return-object v3

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 351
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 353
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 354
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "sub"    # Ljava/lang/String;
    .param p2, "with"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "c":I
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "i":I
    if-ne v2, v5, :cond_0

    .line 208
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 194
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 196
    .local v0, "buf":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 200
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 203
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    monitor-exit v0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "w"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 120
    goto :goto_0

    .line 122
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 125
    .local v0, "c1":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 126
    .local v1, "c2":C
    if-eq v0, v1, :cond_6

    .line 128
    if-gt v0, v7, :cond_4

    .line 129
    sget-object v5, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v0, v5, v0

    .line 130
    :cond_4
    if-gt v1, v7, :cond_5

    .line 131
    sget-object v5, Lorg/mortbay/util/StringUtil;->lowercases:[C

    aget-char v1, v5, v1

    .line 132
    :cond_5
    if-eq v0, v1, :cond_6

    move v3, v4

    .line 133
    goto :goto_0

    .line 122
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/mortbay/util/StringUtil;->toUTF8String([BII)Ljava/lang/String;

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    .line 328
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 333
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toUTF8String([BII)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 304
    const/16 v2, 0x20

    if-ge p2, v2, :cond_0

    .line 306
    :try_start_0
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0, p2}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 307
    .local v0, "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    invoke-virtual {v0, p0, p1, p2}, Lorg/mortbay/util/Utf8StringBuffer;->append([BII)V

    .line 308
    invoke-virtual {v0}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .end local v0    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    :goto_0
    return-object v2

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, p1, p2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 316
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
