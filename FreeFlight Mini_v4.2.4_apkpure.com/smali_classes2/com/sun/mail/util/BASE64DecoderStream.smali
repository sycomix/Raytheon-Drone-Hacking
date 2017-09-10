.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 185
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    .line 196
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 200
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_1
    return-void

    .line 185
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    const/4 v2, 0x3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 45
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 46
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 50
    const/16 v2, 0x1ffe

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 51
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 52
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 54
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 67
    :try_start_0
    const-string v2, "mail.mime.base64.ignoreerrors"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ignoreErrors"    # Z

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 45
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 46
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 50
    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 51
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 52
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 54
    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 83
    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 84
    return-void
.end method

.method private decode([BII)I
    .locals 12
    .param p1, "outbuf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 220
    move v3, p2

    .line 221
    .local v3, "pos0":I
    :goto_0
    const/4 v6, 0x3

    if-lt p3, v6, :cond_d

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "got":I
    const/4 v5, 0x0

    .line 229
    .local v5, "val":I
    :goto_1
    if-ge v1, v11, :cond_c

    .line 230
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v2

    .line 231
    .local v2, "i":I
    if-eq v2, v8, :cond_0

    if-ne v2, v9, :cond_b

    .line 233
    :cond_0
    if-ne v2, v8, :cond_4

    .line 234
    if-nez v1, :cond_1

    .line 235
    sub-int v6, p2, v3

    .line 321
    .end local v1    # "got":I
    .end local v2    # "i":I
    .end local v5    # "val":I
    :goto_2
    return v6

    .line 236
    .restart local v1    # "got":I
    .restart local v2    # "i":I
    .restart local v5    # "val":I
    :cond_1
    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_2

    .line 237
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " before EOF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 241
    :cond_2
    const/4 v0, 0x1

    .line 262
    .local v0, "atEOF":Z
    :goto_3
    add-int/lit8 v4, v1, -0x1

    .line 263
    .local v4, "size":I
    if-nez v4, :cond_3

    .line 264
    const/4 v4, 0x1

    .line 267
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 268
    shl-int/lit8 v5, v5, 0x6

    .line 270
    :goto_4
    if-ge v1, v11, :cond_9

    .line 271
    if-nez v0, :cond_8

    .line 274
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v2

    .line 275
    if-ne v2, v8, :cond_7

    .line 276
    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_8

    .line 277
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    .end local v0    # "atEOF":Z
    .end local v4    # "size":I
    :cond_4
    if-ge v1, v10, :cond_5

    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_5

    .line 246
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " before padding character (=)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 253
    :cond_5
    if-nez v1, :cond_6

    .line 254
    sub-int v6, p2, v3

    goto/16 :goto_2

    .line 255
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "atEOF":Z
    goto :goto_3

    .line 282
    .restart local v4    # "size":I
    :cond_7
    if-eq v2, v9, :cond_8

    .line 283
    iget-boolean v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-nez v6, :cond_8

    .line 284
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 291
    :cond_8
    shl-int/lit8 v5, v5, 0x6

    .line 292
    add-int/lit8 v1, v1, 0x1

    .line 293
    goto/16 :goto_4

    .line 296
    :cond_9
    shr-int/lit8 v5, v5, 0x8

    .line 297
    if-ne v4, v10, :cond_a

    .line 298
    add-int/lit8 v6, p2, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 299
    :cond_a
    shr-int/lit8 v5, v5, 0x8

    .line 300
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 301
    sub-int/2addr p3, v4

    .line 302
    add-int/2addr p2, v4

    .line 303
    sub-int v6, p2, v3

    goto/16 :goto_2

    .line 306
    .end local v0    # "atEOF":Z
    .end local v4    # "size":I
    :cond_b
    shl-int/lit8 v5, v5, 0x6

    .line 307
    add-int/lit8 v1, v1, 0x1

    .line 308
    or-int/2addr v5, v2

    .line 310
    goto/16 :goto_1

    .line 313
    .end local v2    # "i":I
    :cond_c
    add-int/lit8 v6, p2, 0x2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 314
    shr-int/lit8 v5, v5, 0x8

    .line 315
    add-int/lit8 v6, p2, 0x1

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 316
    shr-int/lit8 v5, v5, 0x8

    .line 317
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 318
    add-int/lit8 p3, p3, -0x3

    .line 319
    add-int/lit8 p2, p2, 0x3

    .line 320
    goto/16 :goto_0

    .line 321
    .end local v1    # "got":I
    .end local v5    # "val":I
    :cond_d
    sub-int v6, p2, v3

    goto/16 :goto_2
.end method

.method public static decode([B)[B
    .locals 10
    .param p0, "inbuf"    # [B

    .prologue
    const/16 v9, 0x3d

    .line 396
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v5, v7, 0x3

    .line 397
    .local v5, "size":I
    if-nez v5, :cond_0

    .line 435
    .end local p0    # "inbuf":[B
    :goto_0
    return-object p0

    .line 400
    .restart local p0    # "inbuf":[B
    :cond_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v9, :cond_1

    .line 401
    add-int/lit8 v5, v5, -0x1

    .line 402
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v9, :cond_1

    .line 403
    add-int/lit8 v5, v5, -0x1

    .line 405
    :cond_1
    new-array v3, v5, [B

    .line 407
    .local v3, "outbuf":[B
    const/4 v0, 0x0

    .local v0, "inpos":I
    const/4 v4, 0x0

    .line 408
    .local v4, "outpos":I
    array-length v5, p0

    move v1, v0

    .line 409
    .end local v0    # "inpos":I
    .local v1, "inpos":I
    :goto_1
    if-lez v5, :cond_6

    .line 411
    const/4 v2, 0x3

    .line 412
    .local v2, "osize":I
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    aget-byte v6, v7, v8

    .line 413
    .local v6, "val":I
    shl-int/lit8 v6, v6, 0x6

    .line 414
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    .line 415
    shl-int/lit8 v6, v6, 0x6

    .line 416
    aget-byte v7, p0, v1

    if-eq v7, v9, :cond_4

    .line 417
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    .line 420
    :goto_2
    shl-int/lit8 v6, v6, 0x6

    .line 421
    aget-byte v7, p0, v0

    if-eq v7, v9, :cond_5

    .line 422
    sget-object v7, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    or-int/2addr v6, v7

    move v0, v1

    .line 425
    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    :goto_3
    const/4 v7, 0x2

    if-le v2, v7, :cond_2

    .line 426
    add-int/lit8 v7, v4, 0x2

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 427
    :cond_2
    shr-int/lit8 v6, v6, 0x8

    .line 428
    const/4 v7, 0x1

    if-le v2, v7, :cond_3

    .line 429
    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 430
    :cond_3
    shr-int/lit8 v6, v6, 0x8

    .line 431
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    .line 432
    add-int/2addr v4, v2

    .line 433
    add-int/lit8 v5, v5, -0x4

    move v1, v0

    .line 434
    .end local v0    # "inpos":I
    .restart local v1    # "inpos":I
    goto :goto_1

    .line 419
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move v0, v1

    .end local v1    # "inpos":I
    .restart local v0    # "inpos":I
    goto :goto_2

    .line 424
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .end local v0    # "inpos":I
    .end local v2    # "osize":I
    .end local v6    # "val":I
    .restart local v1    # "inpos":I
    :cond_6
    move-object p0, v3

    .line 435
    goto :goto_0
.end method

.method private getByte()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 335
    :cond_0
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-lt v3, v4, :cond_2

    .line 337
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    if-gtz v3, :cond_1

    move v0, v2

    .line 354
    :goto_0
    return v0

    .line 338
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/EOFException;
    move v0, v2

    .line 339
    goto :goto_0

    .line 343
    .end local v1    # "ex":Ljava/io/EOFException;
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 348
    .local v0, "c":I
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_3

    .line 349
    const/4 v0, -0x2

    goto :goto_0

    .line 351
    :cond_3
    sget-object v3, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v0, v3, v0

    .line 353
    if-eq v0, v2, :cond_0

    goto :goto_0
.end method

.method private recentChars()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0xa

    .line 363
    const-string v1, ""

    .line 364
    .local v1, "errstr":Ljava/lang/String;
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-le v4, v3, :cond_0

    .line 365
    .local v3, "nc":I
    :goto_0
    if-lez v3, :cond_3

    .line 366
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " most recent characters were: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int v2, v4, v3

    .local v2, "k":I
    :goto_1
    iget v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-ge v2, v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    .line 370
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 375
    :pswitch_0
    const/16 v4, 0x20

    if-lt v0, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_1

    .line 376
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "c":C
    .end local v2    # "k":I
    .end local v3    # "nc":I
    :cond_0
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    goto :goto_0

    .line 371
    .restart local v0    # "c":C
    .restart local v2    # "k":I
    .restart local v3    # "nc":I
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 372
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 373
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 378
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 381
    .end local v0    # "c":C
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .end local v2    # "k":I
    :cond_3
    return-object v1

    .line 370
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 102
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-gtz v0, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 106
    :goto_0
    return v0

    .line 104
    :cond_0
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 125
    move v3, p2

    .line 126
    .local v3, "off0":I
    :goto_0
    iget v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v7, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v6, v7, :cond_0

    if-lez p3, :cond_0

    .line 127
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    iget-object v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v7, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v6, v6, v7

    aput-byte v6, p1, p2

    .line 128
    add-int/lit8 p3, p3, -0x1

    move p2, v2

    .line 129
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    .line 130
    :cond_0
    iget v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v7, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v6, v7, :cond_1

    .line 131
    const/4 v6, 0x0

    iput v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v6, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 133
    :cond_1
    div-int/lit8 v6, p3, 0x3

    mul-int/lit8 v0, v6, 0x3

    .line 134
    .local v0, "bsize":I
    if-lez v0, :cond_6

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v4

    .line 136
    .local v4, "size":I
    add-int/2addr p2, v4

    .line 137
    sub-int/2addr p3, v4

    .line 139
    if-eq v4, v0, :cond_6

    .line 140
    if-ne p2, v3, :cond_2

    .line 158
    .end local v4    # "size":I
    :goto_1
    return v5

    .line 143
    .restart local v4    # "size":I
    :cond_2
    sub-int v5, p2, v3

    goto :goto_1

    .line 152
    .end local v4    # "size":I
    .end local p2    # "off":I
    .local v1, "c":I
    .restart local v2    # "off":I
    :cond_3
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-byte v6, v1

    aput-byte v6, p1, v2

    .line 148
    add-int/lit8 p3, p3, -0x1

    move v2, p2

    .end local v1    # "c":I
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :goto_2
    if-lez p3, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v1

    .line 150
    .restart local v1    # "c":I
    if-ne v1, v5, :cond_3

    .line 155
    .end local v1    # "c":I
    :cond_4
    if-ne v2, v3, :cond_5

    move p2, v2

    .line 156
    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    .line 158
    .end local p2    # "off":I
    .restart local v2    # "off":I
    :cond_5
    sub-int v5, v2, v3

    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    :cond_6
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_2
.end method
