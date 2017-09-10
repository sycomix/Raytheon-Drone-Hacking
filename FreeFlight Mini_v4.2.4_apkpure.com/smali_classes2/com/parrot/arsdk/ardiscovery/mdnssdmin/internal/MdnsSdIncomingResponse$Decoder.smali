.class Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;
.super Ljava/lang/Object;
.source "MdnsSdIncomingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Decoder"
.end annotation


# instance fields
.field private buffer:[B

.field private pos:I

.field final synthetic this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;


# direct methods
.method private constructor <init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;
    .param p2, "x1"    # Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;-><init>(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)V

    return-void
.end method

.method private readName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readNameSegment(Ljava/lang/StringBuilder;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readNameSegment(Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v1

    .line 259
    .local v1, "len":I
    :goto_0
    if-eqz v1, :cond_2

    .line 261
    and-int/lit16 v4, v1, 0xc0

    if-eqz v4, :cond_0

    .line 264
    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x8

    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 265
    .local v2, "offset":I
    iget v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    .line 266
    .local v3, "savedPos":I
    iput v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    .line 267
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readNameSegment(Ljava/lang/StringBuilder;)V

    .line 268
    iput v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    .line 269
    const/4 v1, 0x0

    .line 270
    goto :goto_0

    .line 272
    .end local v2    # "offset":I
    .end local v3    # "savedPos":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 274
    iget-object v4, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->buffer:[B

    iget v5, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_1
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v1

    goto :goto_0

    .line 280
    .end local v0    # "cnt":I
    :cond_2
    return-void
.end method

.method private readResourceRecord()V
    .locals 21

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readName()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "name":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->get(I)Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;

    move-result-object v14

    .line 168
    .local v14, "type":Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v3

    .line 169
    .local v3, "cls":I
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU32()J

    move-result-wide v12

    .line 170
    .local v12, "ttl":J
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v4

    .line 171
    .local v4, "datalen":I
    if-eqz v14, :cond_2

    .line 173
    sget-object v16, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$mdnssdmin$internal$MdnsRecord$Type:[I

    invoke-virtual {v14}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v4, v0, :cond_0

    .line 178
    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v17, "%d.%d.%d.%d"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)Ljava/util/Map;

    move-result-object v16

    new-instance v17, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v14}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 184
    .end local v2    # "address":Ljava/lang/String;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readName()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "domainName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)Ljava/util/Map;

    move-result-object v16

    new-instance v17, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v14}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    .end local v5    # "domainName":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    move/from16 v16, v0

    add-int v6, v16, v4

    .line 190
    .local v6, "end":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v11, "txts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v0, v6, :cond_1

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)Ljava/util/Map;

    move-result-object v16

    new-instance v17, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v14}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    .end local v6    # "end":I
    .end local v11    # "txts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v9

    .line 200
    .local v9, "priority":I
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v15

    .line 201
    .local v15, "weight":I
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v8

    .line 202
    .local v8, "port":I
    invoke-direct/range {p0 .. p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readName()Ljava/lang/String;

    move-result-object v10

    .line 203
    .local v10, "target":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->this$0:Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;->access$100(Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse;)Ljava/util/Map;

    move-result-object v16

    new-instance v17, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v14}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsRecord$Type;)V

    new-instance v18, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v10, v12, v13}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/MdnsSrvData;-><init>(ILjava/lang/String;J)V

    invoke-interface/range {v16 .. v18}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 210
    .end local v8    # "port":I
    .end local v9    # "priority":I
    .end local v10    # "target":Ljava/lang/String;
    .end local v15    # "weight":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    move/from16 v16, v0

    add-int v16, v16, v4

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readU16()I
    .locals 2

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private readU32()J
    .locals 4

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private readU8()I
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->buffer:[B

    iget v1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public decode([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 119
    iput-object p1, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->buffer:[B

    .line 120
    const/4 v9, 0x0

    iput v9, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    .line 122
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v5

    .line 123
    .local v5, "id":I
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v4

    .line 124
    .local v4, "flags":I
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v7

    .line 125
    .local v7, "questionsCnt":I
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v1

    .line 126
    .local v1, "answersCnt":I
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v2

    .line 127
    .local v2, "authoritiesCnt":I
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v0

    .line 130
    .local v0, "additionalRRsCnt":I
    if-nez v5, :cond_3

    if-ltz v7, :cond_3

    if-ltz v1, :cond_3

    if-ltz v2, :cond_3

    if-ltz v0, :cond_3

    .line 133
    const/4 v3, 0x0

    .local v3, "cnt":I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readName()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    move-result v8

    .line 137
    .local v8, "type":I
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU16()I

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readResourceRecord()V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readResourceRecord()V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readResourceRecord()V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 158
    .end local v3    # "cnt":I
    :cond_3
    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->readU8()I

    move-result v1

    .line 290
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    iget-object v3, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->buffer:[B

    iget v4, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/parrot/arsdk/ardiscovery/mdnssdmin/internal/MdnsSdIncomingResponse$Decoder;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
