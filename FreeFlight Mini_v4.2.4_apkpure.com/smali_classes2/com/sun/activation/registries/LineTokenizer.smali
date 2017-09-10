.class Lcom/sun/activation/registries/LineTokenizer;
.super Ljava/lang/Object;
.source "MimeTypeFile.java"


# static fields
.field private static final singles:Ljava/lang/String; = "="


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private stack:Ljava/util/Vector;

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 231
    iput-object p1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    .line 233
    return-void
.end method

.method private skipWhiteSpace()V
    .locals 2

    .prologue
    .line 239
    :goto_0
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 252
    iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    .line 255
    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x5c

    const/16 v11, 0x22

    .line 266
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v5

    .line 267
    .local v5, "size":I
    if-lez v5, :cond_0

    .line 268
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 269
    .local v7, "t":Ljava/lang/String;
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 313
    .end local v7    # "t":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    .line 274
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v9, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-lt v8, v9, :cond_1

    .line 275
    new-instance v8, Ljava/util/NoSuchElementException;

    invoke-direct {v8}, Ljava/util/NoSuchElementException;-><init>()V

    throw v8

    .line 278
    :cond_1
    iget v6, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 279
    .local v6, "start":I
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 280
    .local v0, "c":C
    if-ne v0, v11, :cond_7

    .line 281
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, "filter":Z
    :cond_2
    :goto_1
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v9, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v8, v9, :cond_8

    .line 284
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v9, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    if-ne v0, v12, :cond_3

    .line 286
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 287
    const/4 v1, 0x1

    .line 288
    goto :goto_1

    :cond_3
    if-ne v0, v11, :cond_2

    .line 291
    if-eqz v1, :cond_6

    .line 292
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v4, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v2, v6, 0x1

    .local v2, "i":I
    :goto_2
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_5

    .line 294
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 295
    if-eq v0, v12, :cond_4

    .line 296
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 293
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v3, "s":Ljava/lang/String;
    :goto_3
    move-object v7, v3

    .line 301
    goto :goto_0

    .line 300
    .end local v3    # "s":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget v10, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "s":Ljava/lang/String;
    goto :goto_3

    .line 304
    .end local v1    # "filter":Z
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    const-string v8, "="

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_9

    .line 305
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 313
    :cond_8
    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v9, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 308
    :cond_9
    :goto_4
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v9, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v8, v9, :cond_8

    const-string v8, "="

    iget-object v9, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v10, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_8

    iget-object v8, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v9, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_8

    .line 310
    iget v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_4
.end method

.method public pushToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 318
    return-void
.end method
