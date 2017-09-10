.class public Lcom/sun/mail/iap/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field public static final BAD:I = 0xc

.field public static final BYE:I = 0x10

.field public static final CONTINUATION:I = 0x1

.field public static final NO:I = 0x8

.field public static final OK:I = 0x4

.field public static final SYNTHETIC:I = 0x20

.field public static final TAGGED:I = 0x2

.field public static final TAG_MASK:I = 0x3

.field public static final TYPE_MASK:I = 0x1c

.field public static final UNTAGGED:I = 0x3

.field private static final increment:I = 0x64


# instance fields
.field protected buffer:[B

.field protected index:I

.field protected pindex:I

.field protected size:I

.field protected tag:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 3
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 48
    iput-object v2, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getInputStream()Lcom/sun/mail/iap/ResponseInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 84
    .local v0, "response":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 85
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 87
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 48
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 94
    iget v0, p1, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 95
    iget v0, p1, Lcom/sun/mail/iap/Response;->size:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 96
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->buffer:[B

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 97
    iget v0, p1, Lcom/sun/mail/iap/Response;->type:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 98
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 48
    iput-object v1, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 72
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 73
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 74
    return-void
.end method

.method public static byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    .locals 5
    .param p0, "ex"    # Ljava/lang/Exception;

    .prologue
    const/16 v4, 0x20

    .line 106
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "* BYE JavaMail Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "err":Ljava/lang/String;
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/sun/mail/iap/Response;

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "r":Lcom/sun/mail/iap/Response;
    iget v2, v1, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Lcom/sun/mail/iap/Response;->type:I

    .line 110
    return-object v1
.end method

.method private parse()V
    .locals 4

    .prologue
    .line 114
    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 116
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 117
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 118
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 142
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    .line 121
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 122
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 128
    :goto_1
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 129
    .local v0, "mark":I
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "s":Ljava/lang/String;
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 141
    :goto_2
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iput v2, p0, Lcom/sun/mail/iap/Response;->pindex:I

    goto :goto_0

    .line 124
    .end local v0    # "mark":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 125
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    goto :goto_1

    .line 132
    .restart local v0    # "mark":I
    .restart local v1    # "s":Ljava/lang/String;
    :cond_2
    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 134
    :cond_3
    const-string v2, "BAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 136
    :cond_4
    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 137
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_2

    .line 139
    :cond_5
    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_2
.end method

.method private parseString(ZZ)Ljava/lang/Object;
    .locals 10
    .param p1, "parseAtoms"    # Z
    .param p2, "returnString"    # Z

    .prologue
    const/16 v9, 0x22

    const/4 v4, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 375
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v6, v7

    .line 376
    .local v0, "b":B
    if-ne v0, v9, :cond_5

    .line 377
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 378
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 379
    .local v5, "start":I
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 381
    .local v1, "copyto":I
    :goto_0
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v6, v7

    if-eq v0, v9, :cond_2

    .line 382
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_0

    .line 383
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 384
    :cond_0
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eq v6, v1, :cond_1

    .line 387
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget-object v7, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v8, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v7, v7, v8

    aput-byte v7, v6, v1

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 390
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 392
    :cond_2
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 394
    if-eqz p2, :cond_4

    .line 395
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {v6, v5, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    .line 431
    .end local v1    # "copyto":I
    .end local v5    # "start":I
    :cond_3
    :goto_1
    return-object v4

    .line 397
    .restart local v1    # "copyto":I
    .restart local v5    # "start":I
    :cond_4
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    sub-int v7, v1, v5

    invoke-direct {v4, v6, v5, v7}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 398
    .end local v1    # "copyto":I
    .end local v5    # "start":I
    :cond_5
    const/16 v6, 0x7b

    if-ne v0, v6, :cond_8

    .line 399
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 401
    .restart local v5    # "start":I
    :goto_2
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v6, v6, v7

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_6

    .line 402
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_2

    .line 404
    :cond_6
    const/4 v2, 0x0

    .line 406
    .local v2, "count":I
    :try_start_0
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 412
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v6, 0x3

    .line 413
    add-int v6, v5, v2

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 415
    if-eqz p2, :cond_7

    .line 416
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    add-int v7, v5, v2

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 407
    :catch_0
    move-exception v3

    .line 409
    .local v3, "nex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 418
    .end local v3    # "nex":Ljava/lang/NumberFormatException;
    :cond_7
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {v4, v6, v5, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 419
    .end local v2    # "count":I
    .end local v5    # "start":I
    :cond_8
    if-eqz p1, :cond_9

    .line 420
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 422
    .restart local v5    # "start":I
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, "s":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 426
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    .end local v4    # "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v7, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {v4, v6, v5, v7}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    goto :goto_1

    .line 427
    .end local v5    # "start":I
    :cond_9
    const/16 v6, 0x4e

    if-eq v0, v6, :cond_a

    const/16 v6, 0x6e

    if-ne v0, v6, :cond_3

    .line 428
    :cond_a
    iget v6, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1
.end method


# virtual methods
.method public getRest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 484
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    return v0
.end method

.method public isBAD()Z
    .locals 2

    .prologue
    .line 459
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBYE()Z
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 439
    iget v1, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNO()Z
    .locals 2

    .prologue
    .line 455
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOK()Z
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSynthetic()Z
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTagged()Z
    .locals 2

    .prologue
    .line 443
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnTagged()Z
    .locals 2

    .prologue
    .line 447
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekByte()B
    .locals 2

    .prologue
    .line 163
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readAtom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAtom(C)Ljava/lang/String;
    .locals 4
    .param p1, "delim"    # C

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 196
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v2, v3, :cond_0

    .line 197
    const/4 v2, 0x0

    .line 211
    :goto_0
    return-object v2

    .line 204
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 207
    .local v1, "start":I
    :goto_1
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v2, v3

    .local v0, "b":B
    const/16 v2, 0x20

    if-le v0, v2, :cond_2

    const/16 v2, 0x28

    if-eq v0, v2, :cond_2

    const/16 v2, 0x29

    if-eq v0, v2, :cond_2

    const/16 v2, 0x25

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq v0, p1, :cond_2

    .line 209
    :cond_1
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1

    .line 211
    .end local v0    # "b":B
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v2, v1, v3}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public readAtomString()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 361
    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readByte()B
    .locals 3

    .prologue
    .line 174
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 344
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    .line 346
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/iap/ByteArray;

    goto :goto_0
.end method

.method public readBytes()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 323
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    .line 326
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readLong()J
    .locals 4

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 288
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 289
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 292
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_1

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BII)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 298
    :goto_1
    return-wide v2

    .line 295
    :catch_0
    move-exception v1

    .line 298
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public readNumber()I
    .locals 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 264
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 265
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 268
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_1

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 274
    :goto_1
    return v1

    .line 271
    :catch_0
    move-exception v1

    .line 274
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readString(C)Ljava/lang/String;
    .locals 3
    .param p1, "delim"    # C

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 222
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v1, v2, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 229
    :goto_0
    return-object v1

    .line 225
    :cond_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 226
    .local v0, "start":I
    :goto_1
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v1, v1, v2

    if-eq v1, p1, :cond_1

    .line 227
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-static {v1, v0, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readStringList()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 235
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 239
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 241
    .local v2, "v":Ljava/util/Vector;
    :cond_2
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_2

    .line 244
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 245
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 246
    new-array v0, v1, [Ljava/lang/String;

    .line 247
    .local v0, "s":[Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 492
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 159
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 160
    return-void
.end method

.method public skipSpaces()V
    .locals 2

    .prologue
    .line 146
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 147
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public skipToken()V
    .locals 2

    .prologue
    .line 154
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
