.class public Lorg/mortbay/jetty/security/B64Code;
.super Ljava/lang/Object;
.source "B64Code.java"


# static fields
.field static code2nibble:[B = null

.field static final nibble2code:[C

.field static final pad:C = '='


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x40

    .line 36
    new-array v2, v4, [C

    fill-array-data v2, :array_0

    sput-object v2, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    .line 44
    const/4 v2, 0x0

    sput-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    .line 48
    new-array v2, v5, [B

    sput-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 50
    sget-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .local v0, "b":B
    :goto_1
    if-ge v0, v4, :cond_1

    .line 52
    sget-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    sget-object v3, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v0, v2, v3

    .line 51
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_1

    .line 53
    :cond_1
    sget-object v2, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 54
    return-void

    .line 36
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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    sget-object v1, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/jetty/security/B64Code;->decode([C)[B

    move-result-object v0

    .line 190
    .local v0, "decoded":[B
    if-nez p1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 192
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static decode([C)[B
    .locals 18
    .param p0, "b"    # [C

    .prologue
    .line 209
    if-nez p0, :cond_0

    .line 210
    const/4 v10, 0x0

    .line 279
    :goto_0
    return-object v10

    .line 212
    :cond_0
    move-object/from16 v0, p0

    array-length v5, v0

    .line 213
    .local v5, "bLen":I
    rem-int/lit8 v15, v5, 0x4

    if-eqz v15, :cond_1

    .line 214
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Input block size is not 4"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 216
    :cond_1
    add-int/lit8 v9, v5, -0x1

    .line 217
    .local v9, "li":I
    :goto_1
    if-ltz v9, :cond_2

    aget-char v15, p0, v9

    const/16 v16, 0x3d

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 218
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 220
    :cond_2
    if-gez v9, :cond_3

    .line 221
    const/4 v15, 0x0

    new-array v10, v15, [B

    goto :goto_0

    .line 224
    :cond_3
    add-int/lit8 v15, v9, 0x1

    mul-int/lit8 v15, v15, 0x3

    div-int/lit8 v11, v15, 0x4

    .line 225
    .local v11, "rLen":I
    new-array v10, v11, [B

    .line 226
    .local v10, "r":[B
    const/4 v12, 0x0

    .line 227
    .local v12, "ri":I
    const/4 v6, 0x0

    .line 228
    .local v6, "bi":I
    div-int/lit8 v15, v11, 0x3

    mul-int/lit8 v14, v15, 0x3

    .local v14, "stop":I
    move v7, v6

    .end local v6    # "bi":I
    .local v7, "bi":I
    move v13, v12

    .line 232
    .end local v12    # "ri":I
    .local v13, "ri":I
    :goto_2
    if-ge v13, v14, :cond_6

    .line 234
    :try_start_0
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_1
    aget-char v16, p0, v7

    aget-byte v1, v15, v16

    .line 235
    .local v1, "b0":B
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_2
    aget-char v16, p0, v6

    aget-byte v2, v15, v16

    .line 236
    .local v2, "b1":B
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_3
    aget-char v16, p0, v7

    aget-byte v3, v15, v16

    .line 237
    .local v3, "b2":B
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_4
    aget-char v16, p0, v6

    aget-byte v4, v15, v16

    .line 238
    .local v4, "b3":B
    if-ltz v1, :cond_4

    if-ltz v2, :cond_4

    if-ltz v3, :cond_4

    if-gez v4, :cond_5

    .line 239
    :cond_4
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Not B64 encoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 273
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v4    # "b3":B
    :catch_0
    move-exception v8

    move v6, v7

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    move v12, v13

    .line 275
    .end local v13    # "ri":I
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "ri":I
    :goto_3
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "char "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " was not B64 encoded"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 241
    .end local v6    # "bi":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v12    # "ri":I
    .restart local v1    # "b0":B
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    .restart local v4    # "b3":B
    .restart local v7    # "bi":I
    .restart local v13    # "ri":I
    :cond_5
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v1, 0x2

    ushr-int/lit8 v16, v2, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_5
    aput-byte v15, v10, v13
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    .line 242
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "ri":I
    .restart local v13    # "ri":I
    shl-int/lit8 v15, v2, 0x4

    ushr-int/lit8 v16, v3, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_6
    aput-byte v15, v10, v12
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 243
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v3, 0x6

    or-int/2addr v15, v4

    int-to-byte v15, v15

    :try_start_7
    aput-byte v15, v10, v13
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    move v13, v12

    .end local v12    # "ri":I
    .restart local v13    # "ri":I
    goto :goto_2

    .line 246
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v4    # "b3":B
    :cond_6
    if-eq v11, v13, :cond_7

    .line 248
    :try_start_8
    rem-int/lit8 v15, v11, 0x3

    packed-switch v15, :pswitch_data_0

    :cond_7
    move v6, v7

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    move v12, v13

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    goto/16 :goto_0

    .line 251
    .end local v6    # "bi":I
    .end local v12    # "ri":I
    .restart local v7    # "bi":I
    .restart local v13    # "ri":I
    :pswitch_0
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_9
    aget-char v16, p0, v7

    aget-byte v1, v15, v16

    .line 252
    .restart local v1    # "b0":B
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_a
    aget-char v16, p0, v6

    aget-byte v2, v15, v16

    .line 253
    .restart local v2    # "b1":B
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_b
    aget-char v16, p0, v7

    aget-byte v3, v15, v16

    .line 254
    .restart local v3    # "b2":B
    if-ltz v1, :cond_8

    if-ltz v2, :cond_8

    if-gez v3, :cond_9

    .line 255
    :cond_8
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Not B64 encoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    .line 273
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :catch_1
    move-exception v8

    move v12, v13

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    goto :goto_3

    .line 256
    .end local v12    # "ri":I
    .restart local v1    # "b0":B
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    .restart local v13    # "ri":I
    :cond_9
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v1, 0x2

    ushr-int/lit8 v16, v2, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_c
    aput-byte v15, v10, v13
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_3

    .line 257
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "ri":I
    .restart local v13    # "ri":I
    shl-int/lit8 v15, v2, 0x4

    ushr-int/lit8 v16, v3, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_d
    aput-byte v15, v10, v12
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1

    move v12, v13

    .line 258
    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    goto/16 :goto_0

    .line 261
    .end local v1    # "b0":B
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v6    # "bi":I
    .end local v12    # "ri":I
    .restart local v7    # "bi":I
    .restart local v13    # "ri":I
    :pswitch_1
    :try_start_e
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    :try_start_f
    aget-char v16, p0, v7

    aget-byte v1, v15, v16

    .line 262
    .restart local v1    # "b0":B
    sget-object v15, Lorg/mortbay/jetty/security/B64Code;->code2nibble:[B
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :try_start_10
    aget-char v16, p0, v6

    aget-byte v2, v15, v16

    .line 263
    .restart local v2    # "b1":B
    if-ltz v1, :cond_a

    if-gez v2, :cond_b

    .line 264
    :cond_a
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Not B64 encoded"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_0

    .line 265
    :cond_b
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "ri":I
    .restart local v12    # "ri":I
    shl-int/lit8 v15, v1, 0x2

    ushr-int/lit8 v16, v2, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    :try_start_11
    aput-byte v15, v10, v13
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_2

    move v6, v7

    .line 266
    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    goto/16 :goto_0

    .line 273
    .end local v6    # "bi":I
    .restart local v7    # "bi":I
    :catch_2
    move-exception v8

    move v6, v7

    .end local v7    # "bi":I
    .restart local v6    # "bi":I
    goto/16 :goto_3

    .restart local v3    # "b2":B
    :catch_3
    move-exception v8

    goto/16 :goto_3

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lorg/mortbay/jetty/security/B64Code;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object v1, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 93
    .local v0, "bytes":[B
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/mortbay/jetty/security/B64Code;->encode([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 91
    .end local v0    # "bytes":[B
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0
.end method

.method public static encode([B)[C
    .locals 14
    .param p0, "b"    # [B

    .prologue
    const/16 v13, 0x3d

    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v6, 0x0

    .line 152
    :goto_0
    return-object v6

    .line 109
    :cond_0
    array-length v3, p0

    .line 110
    .local v3, "bLen":I
    add-int/lit8 v10, v3, 0x2

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x4

    new-array v6, v10, [C

    .line 111
    .local v6, "r":[C
    const/4 v7, 0x0

    .line 112
    .local v7, "ri":I
    const/4 v4, 0x0

    .line 114
    .local v4, "bi":I
    div-int/lit8 v10, v3, 0x3

    mul-int/lit8 v9, v10, 0x3

    .local v9, "stop":I
    move v5, v4

    .end local v4    # "bi":I
    .local v5, "bi":I
    move v8, v7

    .line 115
    .end local v7    # "ri":I
    .local v8, "ri":I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 117
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 118
    .local v0, "b0":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    aget-byte v1, p0, v4

    .line 119
    .local v1, "b1":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v2, p0, v5

    .line 120
    .local v2, "b2":B
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    ushr-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v6, v8

    .line 121
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ri":I
    .restart local v8    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0x3f

    ushr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    aget-char v10, v10, v11

    aput-char v10, v6, v7

    .line 122
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v11, v1, 0x2

    and-int/lit8 v11, v11, 0x3f

    ushr-int/lit8 v12, v2, 0x6

    and-int/lit8 v12, v12, 0x3

    or-int/2addr v11, v12

    aget-char v10, v10, v11

    aput-char v10, v6, v8

    .line 123
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ri":I
    .restart local v8    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    and-int/lit8 v11, v2, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v6, v7

    move v5, v4

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    goto :goto_1

    .line 126
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    :cond_1
    if-eq v3, v5, :cond_2

    .line 128
    rem-int/lit8 v10, v3, 0x3

    packed-switch v10, :pswitch_data_0

    :cond_2
    move v4, v5

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    move v7, v8

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    goto :goto_0

    .line 131
    .end local v4    # "bi":I
    .end local v7    # "ri":I
    .restart local v5    # "bi":I
    .restart local v8    # "ri":I
    :pswitch_0
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 132
    .restart local v0    # "b0":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "bi":I
    .restart local v5    # "bi":I
    aget-byte v1, p0, v4

    .line 133
    .restart local v1    # "b1":B
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    ushr-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v6, v8

    .line 134
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ri":I
    .restart local v8    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0x3f

    ushr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    aget-char v10, v10, v11

    aput-char v10, v6, v7

    .line 135
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v11, v1, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v6, v8

    .line 136
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ri":I
    .restart local v8    # "ri":I
    aput-char v13, v6, v7

    move v4, v5

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    move v7, v8

    .line 137
    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    goto/16 :goto_0

    .line 140
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v4    # "bi":I
    .end local v7    # "ri":I
    .restart local v5    # "bi":I
    .restart local v8    # "ri":I
    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "bi":I
    .restart local v4    # "bi":I
    aget-byte v0, p0, v5

    .line 141
    .restart local v0    # "b0":B
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    ushr-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v6, v8

    .line 142
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ri":I
    .restart local v8    # "ri":I
    sget-object v10, Lorg/mortbay/jetty/security/B64Code;->nibble2code:[C

    shl-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    aput-char v10, v6, v7

    .line 143
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    aput-char v13, v6, v8

    .line 144
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "ri":I
    .restart local v8    # "ri":I
    aput-char v13, v6, v7

    move v7, v8

    .line 145
    .end local v8    # "ri":I
    .restart local v7    # "ri":I
    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
