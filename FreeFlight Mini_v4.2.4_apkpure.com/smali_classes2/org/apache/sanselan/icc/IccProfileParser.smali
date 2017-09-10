.class public Lorg/apache/sanselan/icc/IccProfileParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "IccProfileParser.java"

# interfaces
.implements Lorg/apache/sanselan/icc/IccConstants;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 35
    const/16 v0, 0x4d

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->setByteOrder(I)V

    .line 36
    return-void
.end method

.method private getIccTagType(I)Lorg/apache/sanselan/icc/IccTagType;
    .locals 2
    .param p1, "quad"    # I

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/sanselan/icc/IccProfileParser;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 301
    sget-object v1, Lorg/apache/sanselan/icc/IccProfileParser;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/icc/IccTagType;->signature:I

    if-ne v1, p1, :cond_0

    .line 302
    sget-object v1, Lorg/apache/sanselan/icc/IccProfileParser;->TagTypes:[Lorg/apache/sanselan/icc/IccTagType;

    aget-object v1, v1, v0

    .line 304
    :goto_1
    return-object v1

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 33
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 122
    new-instance v26, Lorg/apache/sanselan/util/CachingInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/util/CachingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 123
    .local v26, "cis":Lorg/apache/sanselan/util/CachingInputStream;
    move-object/from16 p1, v26

    .line 125
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 126
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 135
    :cond_0
    :try_start_0
    const-string v31, "ProfileSize"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v7

    .line 148
    .local v7, "ProfileSize":I
    const-string v31, "Signature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v8

    .line 150
    .local v8, "CMMTypeSignature":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 151
    const-string v31, "CMMTypeSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 153
    :cond_1
    const-string v31, "ProfileVersion"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, "ProfileVersion":I
    const-string v31, "ProfileDeviceClassSignature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v10

    .line 159
    .local v10, "ProfileDeviceClassSignature":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 160
    const-string v31, "ProfileDeviceClassSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 163
    :cond_2
    const-string v31, "ColorSpace"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v11

    .line 165
    .local v11, "ColorSpace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    .line 166
    const-string v31, "ColorSpace"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v11}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 168
    :cond_3
    const-string v31, "ProfileConnectionSpace"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v12

    .line 170
    .local v12, "ProfileConnectionSpace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 171
    const-string v31, "ProfileConnectionSpace"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 173
    :cond_4
    const/16 v31, 0xc

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 175
    const-string v31, "ProfileFileSignature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v13

    .line 177
    .local v13, "ProfileFileSignature":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 178
    const-string v31, "ProfileFileSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 180
    :cond_5
    const-string v31, "PrimaryPlatformSignature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v14

    .line 182
    .local v14, "PrimaryPlatformSignature":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 183
    const-string v31, "PrimaryPlatformSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 186
    :cond_6
    const-string v31, "ProfileFileSignature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v15

    .line 188
    .local v15, "VariousFlags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 189
    const-string v31, "ProfileFileSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 191
    :cond_7
    const-string v31, "ProfileFileSignature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v16

    .line 193
    .local v16, "DeviceManufacturer":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 194
    const-string v31, "DeviceManufacturer"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 196
    :cond_8
    const-string v31, "DeviceModel"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v17

    .line 198
    .local v17, "DeviceModel":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_9

    .line 199
    const-string v31, "DeviceModel"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 201
    :cond_9
    const/16 v31, 0x8

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 203
    const-string v31, "RenderingIntent"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v18

    .line 205
    .local v18, "RenderingIntent":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 206
    const-string v31, "RenderingIntent"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 208
    :cond_a
    const/16 v31, 0xc

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 210
    const-string v31, "ProfileCreatorSignature"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v19

    .line 212
    .local v19, "ProfileCreatorSignature":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

    .line 213
    const-string v31, "ProfileCreatorSignature"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 216
    :cond_b
    const/16 v20, 0x0

    .line 217
    .local v20, "ProfileID":[B
    const/16 v31, 0x10

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 224
    const/16 v31, 0x1c

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 228
    const-string v31, "TagCount"

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v24

    .line 231
    .local v24, "TagCount":I
    move/from16 v0, v24

    new-array v0, v0, [Lorg/apache/sanselan/icc/IccTag;

    move-object/from16 v21, v0

    .line 233
    .local v21, "tags":[Lorg/apache/sanselan/icc/IccTag;
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 235
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "TagSignature["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v25

    .line 241
    .local v25, "TagSignature":I
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "OffsetToData["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v23

    .line 243
    .local v23, "OffsetToData":I
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "ElementSize["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "Not a Valid ICC Profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v22

    .line 246
    .local v22, "ElementSize":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->getIccTagType(I)Lorg/apache/sanselan/icc/IccTagType;

    move-result-object v28

    .line 259
    .local v28, "fIccTagType":Lorg/apache/sanselan/icc/IccTagType;
    new-instance v30, Lorg/apache/sanselan/icc/IccTag;

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v22

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/sanselan/icc/IccTag;-><init>(IIILorg/apache/sanselan/icc/IccTagType;)V

    .line 262
    .local v30, "tag":Lorg/apache/sanselan/icc/IccTag;
    aput-object v30, v21, v29

    .line 233
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 268
    .end local v22    # "ElementSize":I
    .end local v23    # "OffsetToData":I
    .end local v25    # "TagSignature":I
    .end local v28    # "fIccTagType":Lorg/apache/sanselan/icc/IccTagType;
    .end local v30    # "tag":Lorg/apache/sanselan/icc/IccTag;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v31

    if-gez v31, :cond_c

    .line 272
    invoke-virtual/range {v26 .. v26}, Lorg/apache/sanselan/util/CachingInputStream;->getCache()[B

    move-result-object v6

    .line 274
    .local v6, "data":[B
    array-length v0, v6

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v0, v7, :cond_e

    .line 275
    new-instance v31, Ljava/io/IOException;

    const-string v32, "Couldn\'t read ICC Profile."

    invoke-direct/range {v31 .. v32}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v6    # "data":[B
    .end local v7    # "ProfileSize":I
    .end local v8    # "CMMTypeSignature":I
    .end local v9    # "ProfileVersion":I
    .end local v10    # "ProfileDeviceClassSignature":I
    .end local v11    # "ColorSpace":I
    .end local v12    # "ProfileConnectionSpace":I
    .end local v13    # "ProfileFileSignature":I
    .end local v14    # "PrimaryPlatformSignature":I
    .end local v15    # "VariousFlags":I
    .end local v16    # "DeviceManufacturer":I
    .end local v17    # "DeviceModel":I
    .end local v18    # "RenderingIntent":I
    .end local v19    # "ProfileCreatorSignature":I
    .end local v20    # "ProfileID":[B
    .end local v21    # "tags":[Lorg/apache/sanselan/icc/IccTag;
    .end local v24    # "TagCount":I
    .end local v29    # "i":I
    :catch_0
    move-exception v27

    .line 292
    .local v27, "e":Ljava/lang/Exception;
    invoke-static/range {v27 .. v27}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 295
    const/4 v5, 0x0

    .end local v27    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_1
    return-object v5

    .line 277
    .restart local v6    # "data":[B
    .restart local v7    # "ProfileSize":I
    .restart local v8    # "CMMTypeSignature":I
    .restart local v9    # "ProfileVersion":I
    .restart local v10    # "ProfileDeviceClassSignature":I
    .restart local v11    # "ColorSpace":I
    .restart local v12    # "ProfileConnectionSpace":I
    .restart local v13    # "ProfileFileSignature":I
    .restart local v14    # "PrimaryPlatformSignature":I
    .restart local v15    # "VariousFlags":I
    .restart local v16    # "DeviceManufacturer":I
    .restart local v17    # "DeviceModel":I
    .restart local v18    # "RenderingIntent":I
    .restart local v19    # "ProfileCreatorSignature":I
    .restart local v20    # "ProfileID":[B
    .restart local v21    # "tags":[Lorg/apache/sanselan/icc/IccTag;
    .restart local v24    # "TagCount":I
    .restart local v29    # "i":I
    :cond_e
    :try_start_1
    new-instance v5, Lorg/apache/sanselan/icc/IccProfileInfo;

    invoke-direct/range {v5 .. v21}, Lorg/apache/sanselan/icc/IccProfileInfo;-><init>([BIIIIIIIIIIIII[B[Lorg/apache/sanselan/icc/IccTag;)V

    .line 285
    .local v5, "result":Lorg/apache/sanselan/icc/IccProfileInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 286
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "issRGB: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual {v5}, Lorg/apache/sanselan/icc/IccProfileInfo;->issRGB()Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getICCProfileInfo(Ljava/awt/color/ICC_Profile;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 2
    .param p1, "icc_profile"    # Ljava/awt/color/ICC_Profile;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getICCProfileInfo(Ljava/io/File;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 9
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;

    .prologue
    const/4 v6, 0x0

    .line 65
    const/4 v3, 0x0

    .line 72
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 74
    invoke-direct {p0, v3}, Lorg/apache/sanselan/icc/IccProfileParser;->readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/sanselan/icc/IccProfileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 77
    .local v4, "result":Lorg/apache/sanselan/icc/IccProfileInfo;
    if-nez v4, :cond_2

    .line 104
    if-eqz v3, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v4, v6

    .line 117
    .end local v4    # "result":Lorg/apache/sanselan/icc/IccProfileInfo;
    :cond_1
    :goto_1
    return-object v4

    .line 107
    .restart local v4    # "result":Lorg/apache/sanselan/icc/IccProfileInfo;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 81
    const/4 v3, 0x0

    .line 83
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, v4, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 85
    iget-object v7, v4, Lorg/apache/sanselan/icc/IccProfileInfo;->tags:[Lorg/apache/sanselan/icc/IccTag;

    aget-object v5, v7, v2

    .line 86
    .local v5, "tag":Lorg/apache/sanselan/icc/IccTag;
    iget v7, v5, Lorg/apache/sanselan/icc/IccTag;->offset:I

    iget v8, v5, Lorg/apache/sanselan/icc/IccTag;->length:I

    invoke-virtual {p1, v7, v8}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getBlock(II)[B

    move-result-object v0

    .line 88
    .local v0, "bytes":[B
    invoke-virtual {v5, v0}, Lorg/apache/sanselan/icc/IccTag;->setData([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "bytes":[B
    .end local v5    # "tag":Lorg/apache/sanselan/icc/IccTag;
    :cond_3
    if-eqz v3, :cond_1

    .line 105
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v4    # "result":Lorg/apache/sanselan/icc/IccProfileInfo;
    :catch_2
    move-exception v1

    .line 98
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    if-eqz v3, :cond_4

    .line 105
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 114
    :cond_4
    :goto_3
    iget-boolean v7, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v7, :cond_5

    .line 115
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    :cond_5
    move-object v4, v6

    .line 117
    goto :goto_1

    .line 107
    :catch_3
    move-exception v1

    .line 109
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 104
    if-eqz v3, :cond_6

    .line 105
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 110
    :cond_6
    :goto_4
    throw v6

    .line 107
    :catch_4
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public getICCProfileInfo([B)Lorg/apache/sanselan/icc/IccProfileInfo;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/icc/IccProfileInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public issRGB(Ljava/awt/color/ICC_Profile;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "icc_profile"    # Ljava/awt/color/ICC_Profile;

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public issRGB(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "byteSource"    # Lorg/apache/sanselan/common/byteSources/ByteSource;

    .prologue
    .line 335
    :try_start_0
    iget-boolean v6, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v6, :cond_0

    .line 336
    invoke-static {}, Lorg/apache/sanselan/util/Debug;->debug()V

    .line 345
    :cond_0
    invoke-virtual {p1}, Lorg/apache/sanselan/common/byteSources/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 347
    .local v4, "is":Ljava/io/InputStream;
    const-string v6, "ProfileSize"

    const-string v7, "Not a Valid ICC Profile"

    invoke-virtual {p0, v6, v4, v7}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v2

    .line 353
    .local v2, "ProfileSize":I
    const/16 v6, 0x14

    invoke-virtual {p0, v4, v6}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 355
    const/16 v6, 0xc

    const-string v7, "Not a Valid ICC Profile"

    invoke-virtual {p0, v4, v6, v7}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 357
    const/16 v6, 0xc

    invoke-virtual {p0, v4, v6}, Lorg/apache/sanselan/icc/IccProfileParser;->skipBytes(Ljava/io/InputStream;I)V

    .line 359
    const-string v6, "ProfileFileSignature"

    const-string v7, "Not a Valid ICC Profile"

    invoke-virtual {p0, v6, v4, v7}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, "DeviceManufacturer":I
    iget-boolean v6, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v6, :cond_1

    .line 362
    const-string v6, "DeviceManufacturer"

    invoke-virtual {p0, v6, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 364
    :cond_1
    const-string v6, "DeviceModel"

    const-string v7, "Not a Valid ICC Profile"

    invoke-virtual {p0, v6, v4, v7}, Lorg/apache/sanselan/icc/IccProfileParser;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "DeviceModel":I
    iget-boolean v6, p0, Lorg/apache/sanselan/icc/IccProfileParser;->debug:Z

    if-eqz v6, :cond_2

    .line 367
    const-string v6, "DeviceModel"

    invoke-virtual {p0, v6, v1}, Lorg/apache/sanselan/icc/IccProfileParser;->printCharQuad(Ljava/lang/String;I)V

    .line 369
    :cond_2
    const v6, 0x49454320    # 807986.0f

    if-ne v0, v6, :cond_3

    const v6, 0x73524742

    if-ne v1, v6, :cond_3

    const/4 v5, 0x1

    .line 371
    .local v5, "result":Z
    :goto_0
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v5}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "DeviceManufacturer":I
    .end local v1    # "DeviceModel":I
    .end local v2    # "ProfileSize":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "result":Z
    :goto_1
    return-object v6

    .line 369
    .restart local v0    # "DeviceManufacturer":I
    .restart local v1    # "DeviceModel":I
    .restart local v2    # "ProfileSize":I
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 373
    .end local v0    # "DeviceManufacturer":I
    .end local v1    # "DeviceModel":I
    .end local v2    # "ProfileSize":I
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 378
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public issRGB([B)Ljava/lang/Boolean;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sanselan/icc/IccProfileParser;->issRGB(Lorg/apache/sanselan/common/byteSources/ByteSource;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
