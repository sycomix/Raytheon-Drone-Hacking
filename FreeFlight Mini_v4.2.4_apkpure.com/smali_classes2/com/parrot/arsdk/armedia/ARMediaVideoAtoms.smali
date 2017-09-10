.class public Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;
.super Ljava/lang/Object;
.source "ARMediaVideoAtoms.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARMediaVideoAtoms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePvatDate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "videoDate"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->nativeChangePvatDate(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static getAtom(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "atom"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->nativeGetAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getPVATFromJava(Ljava/lang/String;)[B
    .locals 20
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v3, "pvat"

    .line 100
    .local v3, "atomName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 101
    .local v12, "result":[B
    const-wide/16 v4, 0x0

    .line 102
    .local v4, "atomSize":J
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v10, v0, [B

    .line 103
    .local v10, "fourCCTagBuffer":[B
    const/4 v9, 0x0

    .line 104
    .local v9, "found":Z
    const-wide/16 v14, 0x8

    .line 106
    .local v14, "wideAtomSize":J
    const/4 v7, 0x0

    .line 109
    .local v7, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v16, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v7    # "file":Ljava/io/RandomAccessFile;
    .local v8, "file":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    if-nez v9, :cond_2

    .line 112
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    add-long v16, v16, v14

    const-wide/16 v18, 0x8

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 114
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v16

    move/from16 v0, v16

    int-to-long v4, v0

    .line 115
    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v10, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 116
    const-wide/16 v16, 0x1

    cmp-long v16, v4, v16

    if-nez v16, :cond_1

    .line 118
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    .line 119
    const-wide/16 v16, 0x8

    sub-long v14, v14, v16

    .line 129
    :goto_1
    const-string v16, "pvat"

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v16

    if-eqz v16, :cond_0

    .line 131
    const/4 v9, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-nez v16, :cond_6

    :cond_2
    move-object v7, v8

    .line 139
    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "file":Ljava/io/RandomAccessFile;
    :goto_2
    if-eqz v9, :cond_8

    .line 141
    const-wide/16 v16, 0x8

    cmp-long v16, v4, v16

    if-lez v16, :cond_3

    .line 143
    const-wide/16 v16, 0x8

    sub-long v4, v4, v16

    .line 145
    :cond_3
    long-to-int v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 146
    .local v2, "atomBuffer":[B
    const/4 v13, 0x1

    .line 147
    .local v13, "valid":Z
    const/4 v11, 0x0

    .line 150
    .local v11, "read":I
    const/16 v16, 0x0

    long-to-int v0, v4

    move/from16 v17, v0

    :try_start_2
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    .line 156
    :goto_3
    int-to-long v0, v11

    move-wide/from16 v16, v0

    cmp-long v16, v16, v4

    if-eqz v16, :cond_4

    .line 158
    const/4 v13, 0x0

    .line 160
    :cond_4
    if-eqz v13, :cond_7

    .line 162
    move-object v12, v2

    .line 173
    .end local v2    # "atomBuffer":[B
    .end local v11    # "read":I
    .end local v13    # "valid":Z
    :goto_4
    if-eqz v7, :cond_5

    .line 177
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    :cond_5
    :goto_5
    return-object v12

    .line 127
    .end local v7    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "file":Ljava/io/RandomAccessFile;
    :cond_6
    move-wide v14, v4

    goto :goto_1

    .line 135
    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "file":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/io/IOException;
    :goto_6
    const-string v16, "ARMediaVideoAtoms"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error while reading file ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "atomBuffer":[B
    .restart local v11    # "read":I
    .restart local v13    # "valid":Z
    :catch_1
    move-exception v6

    .line 154
    .restart local v6    # "e":Ljava/io/IOException;
    const/4 v13, 0x0

    goto :goto_3

    .line 166
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    const-string v16, "ARMediaVideoAtoms"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "failed to read atom, read = ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "], atomSise = ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 171
    .end local v2    # "atomBuffer":[B
    .end local v11    # "read":I
    .end local v13    # "valid":Z
    :cond_8
    const-string v16, "ARMediaVideoAtoms"

    const-string v17, "failed to found atom = [pvat]"

    invoke-static/range {v16 .. v17}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 179
    :catch_2
    move-exception v6

    .line 181
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 135
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "file":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v6

    move-object v7, v8

    .end local v8    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "file":Ljava/io/RandomAccessFile;
    goto :goto_6
.end method

.method public static getPvat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v4, "pvat"

    invoke-static {p0, v4}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->nativeGetAtom(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->getPVATFromJava(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 59
    .local v1, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    move-object v1, v2

    .line 76
    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v3

    .line 67
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v4, "ARMediaVideoAtoms"

    const-string v5, "Error while creating pvat string"

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v4, "ARMediaVideoAtoms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find PVAT in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeChangePvatDate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeGetAtom(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static native nativeWritePvat(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static writePvat(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "discoveryProduct"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .param p2, "videoDate"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->nativeWritePvat(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    return-void
.end method
