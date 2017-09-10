.class public Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "IPTCParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# static fields
.field private static final APP13_BYTE_ORDER:I = 0x4d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 43
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->setByteOrder(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment([B)Z
    .locals 9
    .param p1, "segmentData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 48
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    array-length v5, v0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([BI[BII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    array-length v5, v0

    .line 53
    .local v5, "index":I
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    array-length v0, v0

    add-int/2addr v0, v5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 56
    sget-object v6, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    array-length v8, v0

    move-object v3, p0

    move-object v4, p1

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected parseAllBlocks([BZZ)Ljava/util/List;
    .locals 15
    .param p1, "bytes"    # [B
    .param p2, "verbose"    # Z
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v8, "blocks":Ljava/util/List;
    new-instance v2, Lorg/apache/sanselan/common/BinaryInputStream;

    const/16 v11, 0x4d

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v11}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>([BI)V

    .line 269
    .local v2, "bis":Lorg/apache/sanselan/common/BinaryInputStream;
    sget-object v11, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    array-length v11, v11

    const-string v12, "App13 Segment missing identification string"

    invoke-virtual {v2, v11, v12}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;)[B

    move-result-object v9

    .line 272
    .local v9, "idString":[B
    sget-object v11, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    invoke-virtual {p0, v9, v11}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([B[B)Z

    move-result v11

    if-nez v11, :cond_1

    .line 273
    new-instance v11, Lorg/apache/sanselan/ImageReadException;

    const-string v12, "Not a Photoshop App13 Segment"

    invoke-direct {v11, v12}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 328
    .local v3, "blockData":[B
    .local v4, "blockNameBytes":[B
    .local v5, "blockNameLength":I
    .local v6, "blockSize":I
    .local v7, "blockType":I
    .local v10, "imageResourceBlockSignature":[B
    :cond_0
    new-instance v11, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    invoke-direct {v11, v7, v4, v3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;-><init>(I[B[B)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    rem-int/lit8 v11, v6, 0x2

    if-eqz v11, :cond_1

    .line 331
    const-string v11, "Image Resource Block missing padding byte"

    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    .line 279
    .end local v3    # "blockData":[B
    .end local v4    # "blockNameBytes":[B
    .end local v5    # "blockNameLength":I
    .end local v6    # "blockSize":I
    .end local v7    # "blockType":I
    .end local v10    # "imageResourceBlockSignature":[B
    :cond_1
    sget-object v11, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    array-length v11, v11

    const-string v12, "App13 Segment missing identification string"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object v10

    .line 283
    .restart local v10    # "imageResourceBlockSignature":[B
    if-nez v10, :cond_3

    .line 335
    :cond_2
    :goto_0
    return-object v8

    .line 285
    :cond_3
    sget-object v11, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    invoke-virtual {p0, v10, v11}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([B[B)Z

    move-result v11

    if-nez v11, :cond_4

    .line 286
    new-instance v11, Lorg/apache/sanselan/ImageReadException;

    const-string v12, "Invalid Image Resource Block Signature"

    invoke-direct {v11, v12}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 289
    :cond_4
    const-string v11, "Image Resource Block missing type"

    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryInputStream;->read2ByteInteger(Ljava/lang/String;)I

    move-result v7

    .line 291
    .restart local v7    # "blockType":I
    if-eqz p2, :cond_5

    .line 292
    const-string v11, "blockType"

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " (0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_5
    const-string v11, "Image Resource Block missing name length"

    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    move-result v5

    .line 297
    .restart local v5    # "blockNameLength":I
    if-eqz p2, :cond_6

    if-lez v5, :cond_6

    .line 298
    const-string v11, "blockNameLength"

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " (0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_6
    if-nez v5, :cond_9

    .line 303
    const-string v11, "Image Resource Block has invalid name"

    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    .line 304
    const/4 v11, 0x0

    new-array v4, v11, [B

    .line 317
    .restart local v4    # "blockNameBytes":[B
    :cond_7
    :goto_1
    const-string v11, "Image Resource Block missing size"

    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryInputStream;->read4ByteInteger(Ljava/lang/String;)I

    move-result v6

    .line 319
    .restart local v6    # "blockSize":I
    if-eqz p2, :cond_8

    .line 320
    const-string v11, "blockSize"

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " (0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_8
    const-string v11, "Invalid Image Resource Block data"

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v6, v11, v0, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object v3

    .line 325
    .restart local v3    # "blockData":[B
    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 307
    .end local v3    # "blockData":[B
    .end local v4    # "blockNameBytes":[B
    .end local v6    # "blockSize":I
    :cond_9
    const-string v11, "Invalid Image Resource Block name"

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v5, v11, v0, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object v4

    .line 309
    .restart local v4    # "blockNameBytes":[B
    if-eqz v4, :cond_2

    .line 312
    rem-int/lit8 v11, v5, 0x2

    if-nez v11, :cond_7

    .line 313
    const-string v11, "Image Resource Block missing padding byte"

    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected parseIPTCBlock([BZ)Ljava/util/List;
    .locals 18
    .param p1, "bytes"    # [B
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v4, "elements":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 139
    .local v6, "index":I
    :cond_0
    :goto_0
    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 141
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    aget-byte v15, p1, v6

    and-int/lit16 v13, v15, 0xff

    .line 142
    .local v13, "tagMarker":I
    if-eqz p2, :cond_1

    .line 143
    const-string v15, "tagMarker"

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " (0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    const/16 v15, 0x1c

    if-eq v13, v15, :cond_4

    .line 148
    if-eqz p2, :cond_2

    .line 149
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Unexpected record tag marker in IPTC data."

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    move v6, v7

    .line 256
    .end local v7    # "index":I
    .end local v13    # "tagMarker":I
    .restart local v6    # "index":I
    :cond_3
    return-object v4

    .line 154
    .end local v6    # "index":I
    .restart local v7    # "index":I
    .restart local v13    # "tagMarker":I
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .restart local v6    # "index":I
    aget-byte v15, p1, v7

    and-int/lit16 v10, v15, 0xff

    .line 155
    .local v10, "recordNumber":I
    if-eqz p2, :cond_5

    .line 156
    const-string v15, "recordNumber"

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " (0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_5
    const/4 v15, 0x2

    if-ne v10, v15, :cond_0

    .line 180
    aget-byte v15, p1, v6

    and-int/lit16 v12, v15, 0xff

    .line 181
    .local v12, "recordType":I
    if-eqz p2, :cond_6

    .line 182
    const-string v15, "recordType"

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " (0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 186
    const-string v15, "recordSize"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v6, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->convertByteArrayToShort(Ljava/lang/String;I[B)I

    move-result v11

    .line 187
    .local v11, "recordSize":I
    add-int/lit8 v6, v6, 0x2

    .line 189
    const/16 v15, 0x7fff

    if-le v11, v15, :cond_8

    const/4 v5, 0x1

    .line 190
    .local v5, "extendedDataset":Z
    :goto_1
    and-int/lit16 v2, v11, 0x7fff

    .line 191
    .local v2, "dataFieldCountLength":I
    if-eqz v5, :cond_7

    if-eqz p2, :cond_7

    .line 192
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "extendedDataset. dataFieldCountLength: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    .line 194
    :cond_7
    if-nez v5, :cond_3

    .line 198
    const-string v15, "recordData"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1, v6, v11}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->readBytearray(Ljava/lang/String;[BII)[B

    move-result-object v9

    .line 200
    .local v9, "recordData":[B
    add-int/2addr v6, v11

    .line 205
    if-nez v12, :cond_9

    .line 207
    if-eqz p2, :cond_0

    .line 208
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "ignore record version record! "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v2    # "dataFieldCountLength":I
    .end local v5    # "extendedDataset":Z
    .end local v9    # "recordData":[B
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 237
    .restart local v2    # "dataFieldCountLength":I
    .restart local v5    # "extendedDataset":Z
    .restart local v9    # "recordData":[B
    :cond_9
    new-instance v14, Ljava/lang/String;

    const-string v15, "ISO-8859-1"

    invoke-direct {v14, v9, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 239
    .local v14, "value":Ljava/lang/String;
    invoke-static {v12}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->getIptcType(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    move-result-object v8

    .line 252
    .local v8, "iptcType":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    invoke-direct {v3, v8, v14}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;-><init>(Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;Ljava/lang/String;)V

    .line 253
    .local v3, "element":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 102
    const-string v2, "STRICT"

    invoke-static {p2, v2, v3}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v0

    .line 104
    .local v0, "strict":Z
    const-string v2, "VERBOSE"

    invoke-static {p2, v2, v3}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v1

    .line 107
    .local v1, "verbose":Z
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parsePhotoshopSegment([BZZ)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v2

    return-object v2
.end method

.method public parsePhotoshopSegment([BZZ)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "verbose"    # Z
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, "records":Ljava/util/ArrayList;
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parseAllBlocks([BZZ)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "allBlocks":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    .line 123
    .local v1, "block":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->isIPTCBlock()Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v4, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    invoke-virtual {p0, v4, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parseIPTCBlock([BZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 129
    .end local v1    # "block":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    :cond_1
    new-instance v4, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {v4, v3, v0}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v4
.end method

.method public writeIPTCBlock(Ljava/util/List;)[B
    .locals 12
    .param p1, "elements"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x1c

    const/4 v10, 0x2

    .line 386
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 387
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/apache/sanselan/common/BinaryOutputStream;

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->getByteOrder()I

    move-result v8

    invoke-direct {v2, v0, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 391
    .local v2, "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 392
    invoke-virtual {v2, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 393
    sget-object v8, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->IPTC_TYPE_RECORD_VERSION:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v8, v8, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v2, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 395
    invoke-virtual {v2, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 396
    invoke-virtual {v2, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 399
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    .end local p1    # "elements":Ljava/util/List;
    .local v5, "elements":Ljava/util/List;
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser$1;

    invoke-direct {v3, p0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser$1;-><init>(Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;)V

    .line 410
    .local v3, "comparator":Ljava/util/Comparator;
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 414
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 416
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 418
    .local v4, "element":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    iget-object v8, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v8, v8, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sget-object v9, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->IPTC_TYPE_RECORD_VERSION:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v9, v9, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    if-ne v8, v9, :cond_0

    .line 414
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v2, v11}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 422
    invoke-virtual {v2, v10}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 423
    iget-object v8, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v8, v8, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    if-ltz v8, :cond_1

    iget-object v8, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v8, v8, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    const/16 v9, 0xff

    if-le v8, v9, :cond_2

    .line 424
    :cond_1
    new-instance v8, Lorg/apache/sanselan/ImageWriteException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Invalid record type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v10, v10, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 426
    :cond_2
    iget-object v8, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v8, v8, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v2, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 428
    iget-object v8, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->value:Ljava/lang/String;

    const-string v9, "ISO-8859-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 429
    .local v7, "recordData":[B
    new-instance v8, Ljava/lang/String;

    const-string v9, "ISO-8859-1"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v9, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 430
    new-instance v8, Lorg/apache/sanselan/ImageWriteException;

    const-string v9, "Invalid record value, not ISO-8859-1"

    invoke-direct {v8, v9}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 433
    :cond_3
    array-length v8, v7

    invoke-virtual {v2, v8}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 434
    invoke-virtual {v2, v7}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    goto :goto_1

    .line 437
    .end local v4    # "element":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;
    .end local v7    # "recordData":[B
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 440
    .local v1, "blockData":[B
    return-object v1
.end method

.method public writePhotoshopApp13Segment(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)[B
    .locals 8
    .param p1, "data"    # Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 343
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/apache/sanselan/common/BinaryOutputStream;

    invoke-direct {v2, v4}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 346
    .local v2, "bos":Lorg/apache/sanselan/common/BinaryOutputStream;
    sget-object v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRawBlocks()Ljava/util/List;

    move-result-object v1

    .line 349
    .local v1, "blocks":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 351
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    .line 353
    .local v0, "block":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    sget-object v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 355
    iget v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    if-ltz v5, :cond_0

    iget v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    const v6, 0xffff

    if-le v5, v6, :cond_1

    .line 356
    :cond_0
    new-instance v5, Lorg/apache/sanselan/ImageWriteException;

    const-string v6, "Invalid IPTC block type."

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_1
    iget v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2ByteInteger(I)V

    .line 359
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v5, v5

    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    .line 360
    new-instance v5, Lorg/apache/sanselan/ImageWriteException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "IPTC block name is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 362
    :cond_2
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 363
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 364
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 365
    invoke-virtual {v2, v7}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 367
    :cond_3
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v5, v5

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_4

    .line 368
    new-instance v5, Lorg/apache/sanselan/ImageWriteException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "IPTC block data is too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 370
    :cond_4
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4ByteInteger(I)V

    .line 371
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    invoke-virtual {v2, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 372
    iget-object v5, v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v5, v5

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 373
    invoke-virtual {v2, v7}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 349
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 377
    .end local v0    # "block":Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;
    :cond_6
    invoke-virtual {v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->flush()V

    .line 378
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method
