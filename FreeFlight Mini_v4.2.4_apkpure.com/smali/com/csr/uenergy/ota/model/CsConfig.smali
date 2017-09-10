.class Lcom/csr/uenergy/ota/model/CsConfig;
.super Ljava/lang/Object;
.source "CSConfig.java"


# static fields
.field public static final BLOCK_LEN_IN_WORDS:S = 0x4s

.field private static final CSKEY_BLOCK_CRC_POS:I = 0x6

.field private static final ENCRYPTION_ROOT_LEN_IN_WORDS:S = 0x8s

.field public static final FINAL_XOR_VALUE:S = 0x0s

.field public static final HEADER_LEN:S = 0x3s

.field private static final IDENTITY_ROOT_LEN_IN_WORDS:S = 0x8s

.field public static final INITIAL_REMAINDER:S = 0x0s

.field public static final NUM_BLOCKS_POSITION:S = 0x1s

.field private static final crc_table:[I

.field private static mCrcRemainder:S

.field private static mCsBlkOffset:I

.field private static mKeyBlockLenInWords:I

.field private static mLinesCount:I

.field private static mNumBlocks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    .line 41
    sput v0, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    .line 44
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/csr/uenergy/ota/model/CsConfig;->crc_table:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x8005
        0x800f
        0xa
        0x801b
        0x1e
        0x14
        0x8011
        0x8033
        0x36
        0x3c
        0x8039
        0x28
        0x802d
        0x8027
        0x22
        0x8063
        0x66
        0x6c
        0x8069
        0x78
        0x807d
        0x8077
        0x72
        0x50
        0x8055
        0x805f
        0x5a
        0x804b
        0x4e
        0x44
        0x8041
        0x80c3
        0xc6
        0xcc
        0x80c9
        0xd8
        0x80dd
        0x80d7
        0xd2
        0xf0
        0x80f5
        0x80ff
        0xfa
        0x80eb
        0xee
        0xe4
        0x80e1
        0xa0
        0x80a5
        0x80af
        0xaa
        0x80bb
        0xbe
        0xb4
        0x80b1
        0x8093
        0x96
        0x9c
        0x8099
        0x88
        0x808d
        0x8087
        0x82
        0x8183
        0x186
        0x18c
        0x8189
        0x198
        0x819d
        0x8197
        0x192
        0x1b0
        0x81b5
        0x81bf
        0x1ba
        0x81ab
        0x1ae
        0x1a4
        0x81a1
        0x1e0
        0x81e5
        0x81ef
        0x1ea
        0x81fb
        0x1fe
        0x1f4
        0x81f1
        0x81d3
        0x1d6
        0x1dc
        0x81d9
        0x1c8
        0x81cd
        0x81c7
        0x1c2
        0x140
        0x8145
        0x814f
        0x14a
        0x815b
        0x15e
        0x154
        0x8151
        0x8173
        0x176
        0x17c
        0x8179
        0x168
        0x816d
        0x8167
        0x162
        0x8123
        0x126
        0x12c
        0x8129
        0x138
        0x813d
        0x8137
        0x132
        0x110
        0x8115
        0x811f
        0x11a
        0x810b
        0x10e
        0x104
        0x8101
        0x8303
        0x306
        0x30c
        0x8309
        0x318
        0x831d
        0x8317
        0x312
        0x330
        0x8335
        0x833f
        0x33a
        0x832b
        0x32e
        0x324
        0x8321
        0x360
        0x8365
        0x836f
        0x36a
        0x837b
        0x37e
        0x374
        0x8371
        0x8353
        0x356
        0x35c
        0x8359
        0x348
        0x834d
        0x8347
        0x342
        0x3c0
        0x83c5
        0x83cf
        0x3ca
        0x83db
        0x3de
        0x3d4
        0x83d1
        0x83f3
        0x3f6
        0x3fc
        0x83f9
        0x3e8
        0x83ed
        0x83e7
        0x3e2
        0x83a3
        0x3a6
        0x3ac
        0x83a9
        0x3b8
        0x83bd
        0x83b7
        0x3b2
        0x390
        0x8395
        0x839f
        0x39a
        0x838b
        0x38e
        0x384
        0x8381
        0x280
        0x8285
        0x828f
        0x28a
        0x829b
        0x29e
        0x294
        0x8291
        0x82b3
        0x2b6
        0x2bc
        0x82b9
        0x2a8
        0x82ad
        0x82a7
        0x2a2
        0x82e3
        0x2e6
        0x2ec
        0x82e9
        0x2f8
        0x82fd
        0x82f7
        0x2f2
        0x2d0
        0x82d5
        0x82df
        0x2da
        0x82cb
        0x2ce
        0x2c4
        0x82c1
        0x8243
        0x246
        0x24c
        0x8249
        0x258
        0x825d
        0x8257
        0x252
        0x270
        0x8275
        0x827f
        0x27a
        0x826b
        0x26e
        0x264
        0x8261
        0x220
        0x8225
        0x822f
        0x22a
        0x823b
        0x23e
        0x234
        0x8231
        0x8213
        0x216
        0x21c
        0x8219
        0x208
        0x820d
        0x8207
        0x202
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateControlHdCrc([Ljava/lang/String;)S
    .locals 8
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 462
    sget v6, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v6, 0x3

    .line 463
    .local v0, "HeadersLen":I
    invoke-static {}, Lcom/csr/uenergy/ota/model/CsConfig;->crcReset()V

    .line 464
    const/4 v3, 0x0

    .line 465
    .local v3, "linecount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_1

    .line 466
    aget-object v6, p0, v1

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 467
    .local v2, "idx":I
    if-ltz v2, :cond_0

    .line 465
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_0
    if-lt v3, v0, :cond_2

    .line 484
    .end local v2    # "idx":I
    :cond_1
    invoke-static {}, Lcom/csr/uenergy/ota/model/CsConfig;->crcRead()S

    move-result v6

    return v6

    .line 473
    .restart local v2    # "idx":I
    :cond_2
    if-lez v3, :cond_3

    .line 474
    aget-object v6, p0, v1

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 475
    aget-object v6, p0, v1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "subString":Ljava/lang/String;
    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 477
    .local v5, "value":I
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/csr/uenergy/ota/model/CsConfig;->crcAddByte(B)V

    .line 478
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/csr/uenergy/ota/model/CsConfig;->crcAddByte(B)V

    .line 481
    .end local v4    # "subString":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static calculateCsBlkHdCrc([Ljava/lang/String;)S
    .locals 9
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 386
    const/4 v3, 0x0

    .line 388
    .local v3, "linecount":I
    invoke-static {}, Lcom/csr/uenergy/ota/model/CsConfig;->crcReset()V

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_3

    .line 391
    aget-object v6, p0, v1

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 390
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_0
    sget v6, Lcom/csr/uenergy/ota/model/CsConfig;->mCsBlkOffset:I

    if-ge v3, v6, :cond_1

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 396
    goto :goto_1

    .line 399
    :cond_1
    sget v6, Lcom/csr/uenergy/ota/model/CsConfig;->mCsBlkOffset:I

    if-lt v3, v6, :cond_3

    sget v6, Lcom/csr/uenergy/ota/model/CsConfig;->mCsBlkOffset:I

    sget v7, Lcom/csr/uenergy/ota/model/CsConfig;->mKeyBlockLenInWords:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    .line 401
    aget-object v6, p0, v1

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 402
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 403
    aget-object v6, p0, v1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "subString":Ljava/lang/String;
    const/16 v6, 0x10

    :try_start_0
    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 406
    .local v5, "value":I
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/csr/uenergy/ota/model/CsConfig;->crcAddByte(B)V

    .line 407
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-static {v6}, Lcom/csr/uenergy/ota/model/CsConfig;->crcAddByte(B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v4    # "subString":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 409
    .restart local v4    # "subString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CSConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateCsBlkHdCrc exception at image file line["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 420
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "idx":I
    .end local v4    # "subString":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/csr/uenergy/ota/model/CsConfig;->crcRead()S

    move-result v6

    return v6
.end method

.method static crcAddByte(B)V
    .locals 5
    .param p0, "one"    # B

    .prologue
    .line 113
    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/csr/uenergy/ota/model/CsConfig;->reflect(BB)S

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v0, v3

    .line 114
    .local v0, "byte1":S
    sget-short v3, Lcom/csr/uenergy/ota/model/CsConfig;->mCrcRemainder:S

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-short v1, v3

    .line 115
    .local v1, "byte2":S
    xor-int v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    .line 116
    .local v2, "data":S
    sget-object v3, Lcom/csr/uenergy/ota/model/CsConfig;->crc_table:[I

    aget v3, v3, v2

    sget-short v4, Lcom/csr/uenergy/ota/model/CsConfig;->mCrcRemainder:S

    shl-int/lit8 v4, v4, 0x8

    int-to-short v4, v4

    xor-int/2addr v3, v4

    int-to-short v3, v3

    sput-short v3, Lcom/csr/uenergy/ota/model/CsConfig;->mCrcRemainder:S

    .line 117
    return-void
.end method

.method static crcRead()S
    .locals 2

    .prologue
    .line 125
    sget-short v0, Lcom/csr/uenergy/ota/model/CsConfig;->mCrcRemainder:S

    xor-int/lit8 v0, v0, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static crcReset()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-short v0, Lcom/csr/uenergy/ota/model/CsConfig;->mCrcRemainder:S

    .line 104
    return-void
.end method

.method static mergeKeys([BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)[B
    .locals 32
    .param p0, "bb"    # [B
    .param p1, "bdaddr"    # Ljava/lang/String;
    .param p2, "xtalfreqtrim"    # I
    .param p3, "identityRoot"    # Ljava/lang/String;
    .param p4, "encryptionRoot"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/csr/uenergy/ota/model/IncorrectImageException;,
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v9, Ljava/lang/String;

    const-string v28, "ASCII"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v9, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 151
    .local v9, "content":Ljava/lang/String;
    const/4 v3, -0x1

    .line 152
    .local v3, "BtAddrLineOffset":I
    const v12, 0xffff

    .line 153
    .local v12, "iRootLineOffset":I
    const v11, 0xffff

    .line 154
    .local v11, "iEncryptionRootOffset":I
    const/16 v28, 0x0

    sput v28, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    .line 156
    const-string v28, "\\r\\n"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 158
    .local v21, "lines":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 159
    const/16 p0, 0x0

    .line 161
    const/16 v20, 0x0

    .line 163
    .local v20, "linecount":I
    const/16 v17, 0x0

    .line 164
    .local v17, "indexofBtAddress":I
    const/4 v15, 0x0

    .line 165
    .local v15, "indexOfIdentityRoot":I
    const/4 v14, 0x0

    .line 166
    .local v14, "indexOfEncryptionRoot":I
    const/16 v18, 0x0

    .line 167
    .local v18, "isNumBlocksValid":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v10, v0, :cond_9

    .line 168
    aget-object v28, v21, v10

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    if-ltz v28, :cond_1

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/16 v28, 0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 172
    aget-object v28, v21, v10

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 173
    .local v13, "idx":I
    aget-object v28, v21, v10

    add-int/lit8 v29, v13, 0x1

    add-int/lit8 v30, v13, 0x3

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 174
    .local v27, "subString":Ljava/lang/String;
    const/16 v28, 0x10

    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    sput v28, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    .line 175
    sget v28, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    mul-int/lit8 v28, v28, 0x4

    add-int/lit8 v28, v28, 0x3

    add-int/lit8 v3, v28, 0x1

    .line 176
    sget v28, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    mul-int/lit8 v28, v28, 0x4

    add-int/lit8 v28, v28, 0x3

    sput v28, Lcom/csr/uenergy/ota/model/CsConfig;->mCsBlkOffset:I

    .line 177
    const/16 v18, 0x1

    .line 178
    sget v28, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    mul-int/lit8 v28, v28, 0x4

    add-int/lit8 v28, v28, 0x3

    add-int/lit8 v12, v28, 0x1e

    .line 179
    add-int/lit8 v11, v12, 0x8

    .line 225
    .end local v13    # "idx":I
    .end local v27    # "subString":Ljava/lang/String;
    :cond_2
    :goto_2
    aget-object v28, v21, v10

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 226
    .restart local v13    # "idx":I
    if-ltz v13, :cond_0

    .line 227
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 181
    .end local v13    # "idx":I
    :cond_3
    const/16 v28, 0x5

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    .line 182
    aget-object v28, v21, v10

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 183
    .restart local v13    # "idx":I
    aget-object v28, v21, v10

    add-int/lit8 v29, v13, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 184
    .restart local v27    # "subString":Ljava/lang/String;
    const/16 v28, 0x10

    invoke-static/range {v27 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    sput v28, Lcom/csr/uenergy/ota/model/CsConfig;->mKeyBlockLenInWords:I

    goto :goto_2

    .line 187
    .end local v13    # "idx":I
    .end local v27    # "subString":Ljava/lang/String;
    :cond_4
    if-eqz v18, :cond_6

    move/from16 v0, v20

    if-lt v0, v3, :cond_6

    add-int/lit8 v28, v3, 0x3

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 188
    aget-object v28, v21, v10

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v26

    .line 189
    .local v26, "startIdx":I
    aget-object v28, v21, v10

    const/16 v29, 0x0

    add-int/lit8 v30, v26, 0x1

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 190
    .local v16, "indexValue":Ljava/lang/String;
    const-string v28, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 191
    .local v7, "btIdx":I
    if-ltz v7, :cond_5

    .line 192
    const-string v28, ":"

    const-string v29, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    mul-int/lit8 v29, v17, 0x4

    sub-int v28, v28, v29

    add-int/lit8 v28, v28, -0x4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    mul-int/lit8 v30, v17, 0x4

    sub-int v29, v29, v30

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 195
    .local v24, "newAddress":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v21, v10

    .line 196
    add-int/lit8 v17, v17, 0x1

    .line 197
    goto/16 :goto_2

    .line 199
    .end local v7    # "btIdx":I
    .end local v16    # "indexValue":Ljava/lang/String;
    .end local v24    # "newAddress":Ljava/lang/String;
    .end local v26    # "startIdx":I
    :cond_6
    add-int/lit8 v28, v3, 0x3

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 200
    aget-object v28, v21, v10

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 201
    .restart local v13    # "idx":I
    aget-object v28, v21, v10

    const/16 v29, 0x0

    add-int/lit8 v30, v13, 0x1

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 202
    .restart local v16    # "indexValue":Ljava/lang/String;
    const-string v28, "%04x"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 203
    .local v25, "newTrim":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v21, v10

    goto/16 :goto_2

    .line 205
    .end local v13    # "idx":I
    .end local v16    # "indexValue":Ljava/lang/String;
    .end local v25    # "newTrim":Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_8

    if-eqz v18, :cond_8

    move/from16 v0, v20

    if-lt v0, v12, :cond_8

    add-int/lit8 v28, v12, 0x8

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 207
    aget-object v28, v21, v10

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 208
    .restart local v13    # "idx":I
    aget-object v28, v21, v10

    const/16 v29, 0x0

    add-int/lit8 v30, v13, 0x1

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 209
    .restart local v16    # "indexValue":Ljava/lang/String;
    mul-int/lit8 v28, v15, 0x4

    mul-int/lit8 v29, v15, 0x4

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 210
    .local v22, "lsbValue":Ljava/lang/String;
    mul-int/lit8 v28, v15, 0x4

    add-int/lit8 v28, v28, 0x2

    mul-int/lit8 v29, v15, 0x4

    add-int/lit8 v29, v29, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 211
    .local v23, "msbValue":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v21, v10

    .line 212
    add-int/lit8 v15, v15, 0x1

    .line 213
    goto/16 :goto_2

    .line 214
    .end local v13    # "idx":I
    .end local v16    # "indexValue":Ljava/lang/String;
    .end local v22    # "lsbValue":Ljava/lang/String;
    .end local v23    # "msbValue":Ljava/lang/String;
    :cond_8
    if-eqz p4, :cond_2

    if-eqz v18, :cond_2

    move/from16 v0, v20

    if-lt v0, v11, :cond_2

    add-int/lit8 v28, v11, 0x8

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 217
    aget-object v28, v21, v10

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 218
    .restart local v13    # "idx":I
    aget-object v28, v21, v10

    const/16 v29, 0x0

    add-int/lit8 v30, v13, 0x1

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 219
    .restart local v16    # "indexValue":Ljava/lang/String;
    mul-int/lit8 v28, v14, 0x4

    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v29, v29, 0x2

    move-object/from16 v0, p4

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 220
    .restart local v22    # "lsbValue":Ljava/lang/String;
    mul-int/lit8 v28, v14, 0x4

    add-int/lit8 v28, v28, 0x2

    mul-int/lit8 v29, v14, 0x4

    add-int/lit8 v29, v29, 0x4

    move-object/from16 v0, p4

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 221
    .restart local v23    # "msbValue":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v21, v10

    .line 222
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 230
    .end local v13    # "idx":I
    .end local v16    # "indexValue":Ljava/lang/String;
    .end local v22    # "lsbValue":Ljava/lang/String;
    .end local v23    # "msbValue":Ljava/lang/String;
    :cond_9
    sput v20, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    .line 232
    invoke-static/range {v21 .. v21}, Lcom/csr/uenergy/ota/model/CsConfig;->calculateCsBlkHdCrc([Ljava/lang/String;)S

    move-result v5

    .line 233
    .local v5, "CsBlockCrc":S
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/csr/uenergy/ota/model/CsConfig;->updateCsBlockCrc([Ljava/lang/String;S)V

    .line 234
    invoke-static/range {v21 .. v21}, Lcom/csr/uenergy/ota/model/CsConfig;->calculateControlHdCrc([Ljava/lang/String;)S

    move-result v4

    .line 235
    .local v4, "ControlHdrCrc":S
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/csr/uenergy/ota/model/CsConfig;->updateControlHdrCrc([Ljava/lang/String;S)V

    .line 237
    sget v28, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    mul-int/lit8 v28, v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 238
    .local v6, "bbf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_3
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    aget-object v19, v21, v28

    .line 239
    .local v19, "line":Ljava/lang/String;
    const-string v30, "//"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    if-ltz v30, :cond_b

    .line 238
    :cond_a
    :goto_4
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 242
    :cond_b
    const-string v30, "@"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 243
    .restart local v13    # "idx":I
    if-ltz v13, :cond_a

    .line 246
    const-string v30, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 247
    if-lez v13, :cond_a

    .line 248
    add-int/lit8 v30, v13, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    .line 249
    .restart local v27    # "subString":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 250
    new-instance v28, Lcom/csr/uenergy/ota/model/IncorrectImageException;

    const-string v29, "Incorrect image file..."

    invoke-direct/range {v28 .. v29}, Lcom/csr/uenergy/ota/model/IncorrectImageException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 252
    :cond_c
    const/16 v30, 0x10

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 253
    .local v8, "code":I
    and-int/lit16 v0, v8, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    ushr-int/lit8 v30, v8, 0x8

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 259
    .end local v8    # "code":I
    .end local v13    # "idx":I
    .end local v19    # "line":Ljava/lang/String;
    .end local v27    # "subString":Ljava/lang/String;
    :cond_d
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v28

    return-object v28
.end method

.method static mergeKeys([BLjava/util/List;)[B
    .locals 27
    .param p0, "bb"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/csr/uenergy/ota/model/IncorrectImageException;,
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "cskeys":Ljava/util/List;, "Ljava/util/List<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_1

    :cond_0
    const/16 v22, 0x0

    .line 373
    :goto_0
    return-object v22

    .line 279
    :cond_1
    new-instance v6, Ljava/lang/String;

    const-string v22, "ASCII"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 280
    .local v6, "content":Ljava/lang/String;
    const/16 v22, 0x0

    sput v22, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    .line 282
    const-string v22, "\\r\\n"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 284
    .local v16, "lines":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 285
    .local v15, "linecount":I
    const/16 v17, 0x0

    .line 286
    .local v17, "offset":I
    const/16 v18, 0x0

    .line 288
    .local v18, "pskeyLength":I
    const/4 v7, 0x0

    .line 289
    .local v7, "curCskeyIdx":I
    const/4 v8, 0x0

    .line 290
    .local v8, "dataArrayIndex":I
    const/4 v13, 0x0

    .line 291
    .local v13, "isNext":Z
    const/4 v12, 0x0

    .line 292
    .local v12, "isIncrementPskey":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_a

    .line 293
    aget-object v22, v16, v9

    const-string v23, "//"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-ltz v22, :cond_3

    .line 292
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 296
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_5

    .line 297
    aget-object v22, v16, v9

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 298
    .local v10, "idx":I
    aget-object v22, v16, v9

    add-int/lit8 v23, v10, 0x1

    add-int/lit8 v24, v10, 0x3

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 299
    .local v20, "subString":Ljava/lang/String;
    const/16 v22, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v22

    sput v22, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    .line 300
    sget v22, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    mul-int/lit8 v22, v22, 0x4

    add-int/lit8 v22, v22, 0x3

    sput v22, Lcom/csr/uenergy/ota/model/CsConfig;->mCsBlkOffset:I

    .line 301
    const-string v22, "CSConfig"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mergeKeys: mNumBlocks = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v22, "CSConfig"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mergeKeys: mCsBlkOffset = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/csr/uenergy/ota/model/CsConfig;->mCsBlkOffset:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .end local v10    # "idx":I
    .end local v20    # "subString":Ljava/lang/String;
    :cond_4
    :goto_3
    aget-object v22, v16, v9

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 343
    .restart local v10    # "idx":I
    if-ltz v10, :cond_2

    .line 344
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 303
    .end local v10    # "idx":I
    :cond_5
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v15, v0, :cond_6

    .line 304
    aget-object v22, v16, v9

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 305
    .restart local v10    # "idx":I
    aget-object v22, v16, v9

    add-int/lit8 v23, v10, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 306
    .restart local v20    # "subString":Ljava/lang/String;
    const/16 v22, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sput v22, Lcom/csr/uenergy/ota/model/CsConfig;->mKeyBlockLenInWords:I

    .line 307
    const-string v22, "CSConfig"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mergeKeys: mKeyBlockLenInWords = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/csr/uenergy/ota/model/CsConfig;->mKeyBlockLenInWords:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 309
    .end local v10    # "idx":I
    .end local v20    # "subString":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    .line 310
    sget v22, Lcom/csr/uenergy/ota/model/CsConfig;->mNumBlocks:I

    mul-int/lit8 v22, v22, 0x4

    add-int/lit8 v23, v22, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/csr/uenergy/ota/model/CskeyItem;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->offset:I

    move/from16 v22, v0

    add-int v17, v23, v22

    .line 311
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/csr/uenergy/ota/model/CskeyItem;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->length:I

    move/from16 v18, v0

    .line 312
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/csr/uenergy/ota/model/CskeyItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->value:[B

    move-object/from16 v21, v0

    .line 314
    .local v21, "value":[B
    move/from16 v0, v17

    if-lt v15, v0, :cond_9

    add-int v22, v17, v18

    move/from16 v0, v22

    if-ge v15, v0, :cond_9

    .line 315
    aget-object v22, v16, v9

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 316
    .local v19, "startIdx":I
    aget-object v22, v16, v9

    const/16 v23, 0x0

    add-int/lit8 v24, v19, 0x1

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 317
    .local v11, "indexValue":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%02X%02X"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    add-int/lit8 v26, v8, 0x1

    aget-byte v26, v21, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    aget-byte v26, v21, v8

    invoke-static/range {v26 .. v26}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v9

    .line 318
    const-string v23, "CSConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "cskeys is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/csr/uenergy/ota/model/CskeyItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", offset = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/csr/uenergy/ota/model/CskeyItem;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/csr/uenergy/ota/model/CskeyItem;->offset:I

    move/from16 v22, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v22, "CSConfig"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "linecount = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", offset = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", pskeyLength = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v22, "CSConfig"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mergeKeys: i = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", lines = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v16, v9

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    add-int/lit8 v8, v8, 0x2

    .line 322
    add-int/lit8 v22, v15, 0x1

    add-int v23, v17, v18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 323
    const/4 v8, 0x0

    .line 324
    const/4 v13, 0x1

    .line 330
    .end local v11    # "indexValue":Ljava/lang/String;
    .end local v19    # "startIdx":I
    :cond_7
    :goto_4
    if-eqz v13, :cond_8

    .line 331
    const/4 v13, 0x0

    .line 332
    const/4 v12, 0x1

    .line 335
    :cond_8
    if-eqz v12, :cond_4

    .line 336
    add-int/lit8 v7, v7, 0x1

    .line 337
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 327
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 347
    .end local v21    # "value":[B
    :cond_a
    sput v15, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    .line 348
    invoke-static/range {v16 .. v16}, Lcom/csr/uenergy/ota/model/CsConfig;->calculateCsBlkHdCrc([Ljava/lang/String;)S

    move-result v3

    .line 349
    .local v3, "CsBlockCrc":S
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/csr/uenergy/ota/model/CsConfig;->updateCsBlockCrc([Ljava/lang/String;S)V

    .line 350
    invoke-static/range {v16 .. v16}, Lcom/csr/uenergy/ota/model/CsConfig;->calculateControlHdCrc([Ljava/lang/String;)S

    move-result v2

    .line 351
    .local v2, "ControlHdrCrc":S
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/csr/uenergy/ota/model/CsConfig;->updateControlHdrCrc([Ljava/lang/String;S)V

    .line 353
    sget v22, Lcom/csr/uenergy/ota/model/CsConfig;->mLinesCount:I

    mul-int/lit8 v22, v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 354
    .local v4, "bbf":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    aget-object v14, v16, v22

    .line 355
    .local v14, "line":Ljava/lang/String;
    const-string v24, "//"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    .line 354
    :cond_b
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 358
    :cond_c
    const-string v24, "@"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 359
    .restart local v10    # "idx":I
    if-ltz v10, :cond_b

    .line 362
    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 363
    if-lez v10, :cond_b

    .line 364
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 365
    .restart local v20    # "subString":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_d

    .line 366
    new-instance v22, Lcom/csr/uenergy/ota/model/IncorrectImageException;

    const-string v23, "Incorrect image file..."

    invoke-direct/range {v22 .. v23}, Lcom/csr/uenergy/ota/model/IncorrectImageException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 368
    :cond_d
    const/16 v24, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 369
    .local v5, "code":I
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 370
    ushr-int/lit8 v24, v5, 0x8

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 373
    .end local v5    # "code":I
    .end local v10    # "idx":I
    .end local v14    # "line":Ljava/lang/String;
    .end local v20    # "subString":Ljava/lang/String;
    :cond_e
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v22

    goto/16 :goto_0
.end method

.method static reflect(BB)S
    .locals 6
    .param p0, "original"    # B
    .param p1, "nBits"    # B

    .prologue
    const/4 v5, 0x1

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "reflection":S
    add-int/lit8 v3, p1, -0x1

    shl-int v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v1, v3

    .line 84
    .local v1, "reflectedBit":S
    const/4 v0, 0x0

    .local v0, "bitCount":B
    :goto_0
    if-ge v0, p1, :cond_1

    .line 86
    and-int/lit8 v3, p0, 0x1

    int-to-short v3, v3

    if-ne v3, v5, :cond_0

    .line 87
    or-int v3, v2, v1

    int-to-short v2, v3

    .line 91
    :cond_0
    ushr-int/lit8 v3, p0, 0x1

    int-to-byte p0, v3

    .line 92
    ushr-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    .line 84
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 95
    :cond_1
    return v2
.end method

.method private static updateControlHdrCrc([Ljava/lang/String;S)V
    .locals 9
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "ControlHdrCrc"    # S

    .prologue
    const/4 v8, 0x0

    .line 498
    const/4 v3, 0x0

    .line 500
    .local v3, "linecount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 501
    aget-object v5, p0, v0

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 502
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 503
    move v3, v0

    .line 508
    .end local v1    # "idx":I
    :cond_0
    aget-object v5, p0, v3

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 509
    .restart local v1    # "idx":I
    aget-object v5, p0, v3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "indexValue":Ljava/lang/String;
    const-string v5, "%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "newCrcValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v3

    .line 513
    return-void

    .line 500
    .end local v2    # "indexValue":Ljava/lang/String;
    .end local v4    # "newCrcValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static updateCsBlockCrc([Ljava/lang/String;S)V
    .locals 9
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "csBlockCrc"    # S

    .prologue
    const/4 v8, 0x0

    .line 434
    const/4 v3, 0x0

    .line 436
    .local v3, "linecount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 437
    aget-object v5, p0, v0

    const-string v6, "//"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 436
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    const/4 v5, 0x6

    if-ne v3, v5, :cond_2

    .line 442
    aget-object v5, p0, v0

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 443
    aget-object v5, p0, v0

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "indexValue":Ljava/lang/String;
    const-string v5, "%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "newCrcValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p0, v0

    .line 450
    .end local v1    # "idx":I
    .end local v2    # "indexValue":Ljava/lang/String;
    .end local v4    # "newCrcValue":Ljava/lang/String;
    :cond_1
    return-void

    .line 448
    .restart local v1    # "idx":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
