.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "skipComments"    # Z

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "header":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 156
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 157
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 159
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    .line 160
    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 346
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 348
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 349
    .local v2, "gotEscape":Z
    const/4 v1, 0x0

    .line 351
    .local v1, "gotCR":Z
    move v3, p1

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_4

    .line 352
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 353
    .local v0, "c":C
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    if-eqz v1, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 351
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 361
    if-nez v2, :cond_3

    .line 363
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_1

    .line 364
    const/4 v2, 0x1

    goto :goto_1

    .line 365
    :cond_1
    const/16 v5, 0xd

    if-ne v0, v5, :cond_2

    .line 366
    const/4 v1, 0x1

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 373
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    const/4 v2, 0x0

    goto :goto_1

    .line 377
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, -0x4

    const/16 v10, 0x28

    const/16 v9, 0x22

    const/16 v8, 0x20

    .line 234
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v6, v7, :cond_0

    .line 235
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    .line 329
    :goto_0
    return-object v6

    .line 238
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 239
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto :goto_0

    .line 243
    :cond_1
    const/4 v2, 0x0

    .line 245
    .local v2, "filter":Z
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 249
    .local v0, "c":C
    :goto_1
    if-ne v0, v10, :cond_b

    .line 252
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .local v5, "start":I
    const/4 v3, 0x1

    .line 253
    .local v3, "nesting":I
    :goto_2
    if-lez v3, :cond_6

    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v6, v7, :cond_6

    .line 255
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 256
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_3

    .line 257
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 258
    const/4 v2, 0x1

    .line 254
    :cond_2
    :goto_3
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_2

    .line 259
    :cond_3
    if-ne v0, v12, :cond_4

    .line 260
    const/4 v2, 0x1

    goto :goto_3

    .line 261
    :cond_4
    if-ne v0, v10, :cond_5

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 263
    :cond_5
    const/16 v6, 0x29

    if-ne v0, v6, :cond_2

    .line 264
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 266
    :cond_6
    if-eqz v3, :cond_7

    .line 267
    new-instance v6, Ljavax/mail/internet/ParseException;

    const-string v7, "Unbalanced comments"

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 269
    :cond_7
    iget-boolean v6, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v6, :cond_9

    .line 273
    if-eqz v2, :cond_8

    .line 274
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v5, v7}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "s":Ljava/lang/String;
    :goto_4
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x3

    invoke-direct {v6, v7, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 276
    .end local v4    # "s":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_4

    .line 282
    .end local v4    # "s":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v6

    if-ne v6, v11, :cond_a

    .line 283
    sget-object v6, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    goto/16 :goto_0

    .line 284
    :cond_a
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    goto :goto_1

    .line 289
    .end local v3    # "nesting":I
    .end local v5    # "start":I
    :cond_b
    if-ne v0, v9, :cond_11

    .line 290
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .restart local v5    # "start":I
    :goto_5
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v6, v7, :cond_10

    .line 291
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 292
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_d

    .line 293
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 294
    const/4 v2, 0x1

    .line 290
    :cond_c
    :goto_6
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5

    .line 295
    :cond_d
    if-ne v0, v12, :cond_e

    .line 296
    const/4 v2, 0x1

    goto :goto_6

    .line 297
    :cond_e
    if-ne v0, v9, :cond_c

    .line 298
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 301
    if-eqz v2, :cond_f

    .line 302
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v5, v7}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 306
    .restart local v4    # "s":Ljava/lang/String;
    :goto_7
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v4}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .end local v4    # "s":Ljava/lang/String;
    :cond_f
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_7

    .line 309
    .end local v4    # "s":Ljava/lang/String;
    :cond_10
    new-instance v6, Ljavax/mail/internet/ParseException;

    const-string v7, "Unbalanced quoted string"

    invoke-direct {v6, v7}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 313
    .end local v5    # "start":I
    :cond_11
    if-lt v0, v8, :cond_12

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_12

    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_13

    .line 314
    :cond_12
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 315
    const/4 v6, 0x1

    new-array v1, v6, [C

    .line 316
    .local v1, "ch":[C
    const/4 v6, 0x0

    aput-char v0, v1, v6

    .line 317
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v6, v0, v7}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 321
    .end local v1    # "ch":[C
    :cond_13
    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .restart local v5    # "start":I
    :goto_8
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v6, v7, :cond_14

    .line 322
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    if-lt v0, v8, :cond_14

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_14

    if-eq v0, v10, :cond_14

    if-eq v0, v8, :cond_14

    if-eq v0, v9, :cond_14

    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_15

    .line 329
    :cond_14
    new-instance v6, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v7, -0x1

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_15
    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_8
.end method

.method private skipWhiteSpace()I
    .locals 3

    .prologue
    .line 335
    :goto_0
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v1, v2, :cond_1

    .line 336
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 338
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 339
    .end local v0    # "c":C
    :goto_1
    return v1

    .line 335
    .restart local v0    # "c":C
    :cond_0
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    .line 339
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x4

    goto :goto_1
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 193
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 194
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 195
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    .line 196
    return-object v0
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .prologue
    .line 211
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 212
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 213
    .local v0, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    .line 214
    return-object v0
.end method
